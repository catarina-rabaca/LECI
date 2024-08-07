library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Maq_estado_TB is
end Maq_estado_TB;

architecture Stimulus of Maq_estado_TB is
   
    signal s_clk                    : std_logic := '0';
    signal s_temperatura            : std_logic_vector(7 downto 0) := (others => '0');
    signal s_tempococcao            : std_logic_vector(7 downto 0) := (others => '0');
    signal s_tempopre_aquecimento   : std_logic_vector(7 downto 0) := (others => '0');
    
    signal s_saidatemperatura       : std_logic_vector(7 downto 0);
    signal s_saidatempococcao       : std_logic_vector(7 downto 0);
    signal s_saidatempopre_aquecimento : std_logic_vector(7 downto 0);
    
    signal s_enableairaberta        : std_logic := '0';
    signal s_enablepreacabou        : std_logic := '0';
    signal s_enablecoccaoacabou     : std_logic := '0';
    signal s_enabletempraacabou     : std_logic := '0';
    signal s_enableON               : std_logic := '0';
    signal s_enableescolhafeita     : std_logic := '0';
    
    signal s_enabletempra           : std_logic;
    signal s_enablecoccao           : std_logic;
    signal s_enablepre              : std_logic;
    signal s_enable_blinking        : std_logic;
    signal s_estadoatual            : std_logic_vector(5 downto 0);

begin
   
    uut: entity work.Maq_estado(Behavioral)
        port map (
            clk => s_clk,
            temperatura => s_temperatura,
            tempococcao => s_tempococcao,
            tempopre_aquecimento => s_tempopre_aquecimento,
            saidatemperatura => s_saidatemperatura,
            saidatempococcao => s_saidatempococcao,
            saidatempopre_aquecimento => s_saidatempopre_aquecimento,
            enableairaberta => s_enableairaberta,
            enablepreacabou => s_enablepreacabou,
            enablecoccaoacabou => s_enablecoccaoacabou,
            enabletempraacabou => s_enabletempraacabou,
            enableON => s_enableON,
            enableescolhafeita => s_enableescolhafeita,
            enabletempra => s_enabletempra,
            enablecoccao => s_enablecoccao,
            enablepre => s_enablepre,
            enable_blinking => s_enable_blinking,
            estadoatual => s_estadoatual
        );

   
clock_proc: process
    begin
        s_clk <= '0';
        wait for 100 ns;
        s_clk <= '1';
        wait for 100 ns;
    end process;

    -- Stimulus process
   stim_proc: process
begin
   -- enableON desligado
    s_enableON <= '0';
    wait for 100 ns;
    
    -- ativar máquina de estados
    s_enableON <= '1';
    wait for 300 ns;
    
    -- começo de PREAQ
    s_enableescolhafeita <= '0';
    s_enableairaberta <= '0';
    wait for 150 ns;
    
    -- fim de pré-aquecimento
    s_enablepreacabou <= '1';
    wait for 250 ns;
    
    -- abertura da air
    s_enableairaberta <= '1';
    wait for 200 ns;
    
    --fecho da air e começo da cocção
    s_enableairaberta <= '0';
    wait for 100 ns;
    
    -- fim da cocção
    s_enablecoccaoacabou <= '1';
    wait for 300 ns;
    
    -- abertura da air novamente
    s_enableairaberta <= '1';
    wait for 250 ns;
    
    -- fecho da air novamente e começo de arrefecimento
    s_enableairaberta <= '0';
    wait for 150 ns;
    
    -- fim do arrefecimento
    s_enabletempraacabou <= '1';
    wait for 200 ns;

    -- desativar a máquina de estados
    s_enableON <= '0';
    wait for 300 ns;

   
    wait;
end process;

end Stimulus;



