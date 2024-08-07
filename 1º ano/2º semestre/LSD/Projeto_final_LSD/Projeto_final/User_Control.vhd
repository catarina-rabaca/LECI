library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Controlador VHDL para permitir ao utilizador ajustar interativamente os parâmetros de temperatura, tempo e pré-aquecimento num dispositivo,
--possibilitando incrementar ou decrementar cada parâmetro com base nos botões pressionados e atualizando as saídas correspondentes.

entity User_Control is
    port (
        enable_temperatura : in  std_logic;
        enable_tempo       : in  std_logic;
        enable_pre         : in  std_logic;
        clk                : in  std_logic;
        key_inc            : in  std_logic; 
        key_dec            : in  std_logic; 
        temperatura        : out std_logic_vector(7 downto 0);
        tempo              : out std_logic_vector(7 downto 0);
        pre                : out std_logic_vector(7 downto 0)
    );
end User_Control;

architecture behavioral of User_Control is
    signal temp         : integer range 20 to 200 := 20;
    signal tempo_interno: integer range 1 to 30 := 1;
    signal pre_interno  : integer range 1 to 10 := 1;
    signal key_inc_prev : std_logic := '1'; 
    signal key_dec_prev : std_logic := '1'; 
begin
    process(clk)
    begin
        if rising_edge(clk) then										--com base nos enables libertos no bloco anterior, este bloco vai incrementar o dado escolhido 
            
            if key_inc = '0' and key_inc_prev = '1' then
                if enable_temperatura = '1' then
                    if temp < 200 then
                        temp <= temp + 10;
                    end if;
                elsif enable_tempo = '1' then
                    if tempo_interno < 30 then
                        tempo_interno <= tempo_interno + 1;
                    end if;
                elsif enable_pre = '1' then
                    if pre_interno < 10 then
                        pre_interno <= pre_interno + 1;
                    end if;
                end if;
            end if;

            
            if key_dec = '0' and key_dec_prev = '1' then			--com base nos enables libertos no bloco anterior, este bloco vai decrementar o dado escolhido 
                if enable_temperatura = '1' then
                    if temp > 20 then
                        temp <= temp - 10;
                    end if;
                elsif enable_tempo = '1' then
                    if tempo_interno > 1 then
                        tempo_interno <= tempo_interno - 1;
                    end if;
                elsif enable_pre = '1' then
                    if pre_interno > 1 then
                        pre_interno <= pre_interno - 1;
                    end if;
                end if;
            end if;

            -- Atualiza os estados anteriores das chaves pressionadas
            key_inc_prev <= key_inc;
            key_dec_prev <= key_dec;
        end if;
    end process;

   
    temperatura <= std_logic_vector(to_unsigned(temp, 8));
    tempo       <= std_logic_vector(to_unsigned(tempo_interno, 8));
    pre         <= std_logic_vector(to_unsigned(pre_interno, 8));
end behavioral;
