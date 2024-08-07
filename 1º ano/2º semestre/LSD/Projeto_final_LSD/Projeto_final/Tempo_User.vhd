library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Controlador de tempo ajustável em incrementos de 1 unidade, entre 1 e 30 unidades,
--ativado por sinais de habilitação e controlado por botões de aumento e diminuição, convertendo o tempo para representação binária de 8 bits.

entity Tempo_User is
    port (
        enable:       in  std_logic;
        clk:          in  std_logic;
        up:           in  std_logic;
        down:         in  std_logic;
        tempo:        out std_logic_vector(7 downto 0)
    );
end Tempo_User;

architecture behavioral of Tempo_User is
    signal temp: integer range 1 to 30 := 1; 					-- Declarando sinal para armazenar o valor do tempo
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if enable = '1' then
                
					 if up = '1' and temp < 30 then
                    temp <= temp + 1;
                
					 elsif down = '1' and temp > 1 then
                    temp <= temp - 1;
                end if;
            end if;
        end if;
    end process;

    -- Converter o tempo para binário
    tempo <= std_logic_vector(to_unsigned(temp, 8));			--Converte para binario de 8 bits
end behavioral;
