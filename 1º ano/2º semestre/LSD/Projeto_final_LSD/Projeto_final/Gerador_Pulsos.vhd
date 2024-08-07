library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--Esta entidade gera pulsos com um clock de 50MHz, alternando o sinal de saída a cada ciclo de clock, 
--resultando em uma frequência de 1 Hz, o que equivale a 1 segundo por pulso.

entity Gerador_Pulsos is
    Port (
        clk     : in  STD_LOGIC;  -- Clock de 50MHz
        pulse   : out STD_LOGIC   -- Sinal de saída de pulso
    );
end Gerador_Pulsos;

architecture Behavioral of Gerador_Pulsos is
    -- Frequência do clock em Hz
    constant CLOCK_FREQ : integer := 50000000;
    -- Período do pulso em ciclos de clock
    constant PULSE_PERIOD : integer := CLOCK_FREQ;
    
    signal counter : integer range 0 to PULSE_PERIOD - 1 := 0;
    signal pulse_reg : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if counter = PULSE_PERIOD - 1 then
                counter <= 0;
                pulse_reg <= NOT pulse_reg;
				elsif counter = PULSE_PERIOD/2 then 
						pulse_reg <= NOT pulse_reg;
						counter <= counter + 1;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    
    pulse <= pulse_reg;
end Behavioral;
