library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Esta entidade opera como uma máquina de estados para gerenciar as operações de um dispositivo, 
--transitando por diferentes estados, dependendo de várias condições de entrada.

entity Maq_estado is
    port(
        clk                      : in  std_logic;
        temperatura              : in  std_logic_vector(7 downto 0);
        tempococcao              : in  std_logic_vector(7 downto 0);
        tempopre_aquecimento     : in  std_logic_vector(7 downto 0);
        
        saidatemperatura         : out std_logic_vector(7 downto 0);
        saidatempococcao         : out std_logic_vector(7 downto 0);
        saidatempopre_aquecimento: out std_logic_vector(7 downto 0);
        
        enableairaberta          : in  std_logic;
        enablepreacabou          : in  std_logic;
        enablecoccaoacabou       : in  std_logic;
        enabletempraacabou       : in  std_logic;
        enableON                 : in  std_logic;
        enableescolhafeita       : in  std_logic;
        
        enabletempra             : out std_logic;
        enablecoccao             : out std_logic;
        enablepre                : out std_logic;
        enable_blinking          : out std_logic; 
        estadoatual              : out std_logic_vector(5 downto 0) := "000000"
    );
end Maq_estado;

architecture Behavioral of Maq_estado is
    type TState is (IDLE, PREAQ, AIRABERTA, AIRFECHADA, COCCAO, AIRABERTA2, AIRFECHADA2, ARREFECIMENTO);
    signal s_currentState, s_nextState : TState := IDLE;
    signal s_terminou: std_logic := '0';
    signal s_estadoatual: std_logic_vector(5 downto 0) := "000000";

    signal s_temperatura_atual : std_logic_vector(7 downto 0) := (others => '0');
    signal s_coccao_atual : std_logic_vector(7 downto 0) := (others => '0');
    signal s_pre_atual : std_logic_vector(7 downto 0) := (others => '0');
    
begin
    sync_proc : process(clk)
    begin
        if rising_edge(clk) then
            if enableON = '1' then
                s_currentState <= s_nextState;
            else
                s_currentState <= IDLE;
            end if;
        end if;
    end process;

    comb_proc : process(s_currentState, enabletempraacabou, enablepreacabou, enablecoccaoacabou, enableairaberta, enableescolhafeita, temperatura, tempococcao, tempopre_aquecimento)
    begin
        
        s_nextState <= s_currentState;
        saidatempococcao <= (others => '0');
        saidatemperatura <= (others => '0');
        saidatempopre_aquecimento <= (others => '0');
        
        enabletempra <= '0';
        enablecoccao <= '0';
        enablepre <= '0';
        enable_blinking <= '0'; 

        case s_currentState is
            when IDLE =>											--a máquina começa no estado idle que é default
                s_estadoatual <= "100000";
                s_terminou <= '0';
                s_coccao_atual <= tempococcao;
                s_pre_atual <= tempopre_aquecimento;
                s_temperatura_atual <= temperatura;
					 
					 if enableON <= '1' then
						s_estadoatual <= "100000";
					else
						s_estadoatual <= "000000";
					end if;
                
                if enableescolhafeita = '0' and enableairaberta = '0' then
                    s_nextState <= PREAQ;
                else
                    s_nextState <= IDLE;
                end if;

            when PREAQ =>											--depois de se fazer a escolha do programa, vai ser liberto um enable que vai fazer com que o pre-aquecimento começe
                s_estadoatual <= "110000";
                enablepre <= '1';
                s_pre_atual <= tempopre_aquecimento;
                
                if enablepreacabou = '1' and enableairaberta = '0' then
                    enablepre <= '0';
                    s_pre_atual <= "00000000";
                    s_nextState <= AIRABERTA;
                else
                    s_nextState <= PREAQ;
                end if;

            when AIRABERTA =>											--depois de o pre-aquecimento acabar, vai ser liberto um enable que vai passar para o prox estado
                s_estadoatual <= "111000";
                s_pre_atual <= "00000000";
                enable_blinking <= '1'; 
					 
                
                if enableairaberta = '1' then
                    s_nextState <= AIRFECHADA;
                else
                    s_nextState <= AIRABERTA;
                end if;

            when AIRFECHADA =>										-- se a air for aberta, a máquina vai passar para  o prox estado que é a air fechada
                s_estadoatual <= "111100";
                enable_blinking <= '0'; 
                
                if enableairaberta = '0' then
                    s_nextState <= COCCAO;
                else
                    s_nextState <= AIRFECHADA;
                end if;

            when COCCAO =>												-- se a air for fechada, a cocção vai iniciar
                s_estadoatual <= "111110";
                enablecoccao <= '1';
                s_coccao_atual <= tempococcao;
                
                if enablecoccaoacabou = '1' then
                    enablecoccao <= '0';
                    s_nextState <= AIRABERTA2;
                    s_coccao_atual <= "00000000";
                else 
                    s_nextState <= COCCAO;
                end if;

            when AIRABERTA2 =>									--quando a cocção acabar, vai ser liberto um enable que vai fazer com que passemos para o estado seguinte, a air aberta2
                s_estadoatual <= "111000";
                enable_blinking <= '1'; 
                
                if enableairaberta = '1' then
                    s_nextState <= AIRFECHADA2;
                else
                    s_nextState <= AIRABERTA2;
                end if;

            when AIRFECHADA2 =>								--quando a air for aberta, o prox estado é a air fechada 2, que vai pedir que se volte a fechar a air
                s_estadoatual <= "111100";
                enable_blinking <= '0'; 
                
                if enableairaberta = '0' then
                    s_nextState <= ARREFECIMENTO;
                else
                    s_nextState <= AIRFECHADA2;
                end if;

            when ARREFECIMENTO =>							-- depois da air ser fechada, esta vai arrefecer através do estado arrefecimento
                s_estadoatual <= "111111";
                enabletempra <= '1';
                s_temperatura_atual <= temperatura;
                
                if enabletempraacabou = '1' then
                    s_terminou <= '1';
                    enabletempra <= '0';
                    s_temperatura_atual <= "00010100";
                    s_nextState <= IDLE;
                else 
                    s_nextState <= ARREFECIMENTO;
                end if;

            when others =>
                s_nextState <= IDLE;
        end case;

        estadoatual <= s_estadoatual;
        saidatemperatura <= s_temperatura_atual;
        saidatempococcao <= s_coccao_atual;
        saidatempopre_aquecimento <= s_pre_atual;
    end process;
end Behavioral;
