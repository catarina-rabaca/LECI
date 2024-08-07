library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity FreqDivider is
    generic(K : positive := 50_000_000);  -- Valor de k (50,000,000 para dividir a 1 Hz)
    port(
      clkIn : in std_logic;               -- Clock de entrada de 50 MHz
      clkOut : out std_logic              -- Clock de saída
    );
end FreqDivider;

architecture Behavioral of FreqDivider is
    -- Defina o tamanho adequado do contador como um vetor de bits
    signal s_divCounter : unsigned(31 downto 0) := (others => '0');
    signal k_unsigned : unsigned(31 downto 0) := to_unsigned(K, 32); -- Converta K para unsigned
begin
    process(clkIn)
    begin
        if (rising_edge(clkIn)) then
            if (s_divCounter >= k_unsigned - 1) then
                clkOut <= '0';
                s_divCounter <= (others => '0');
            else
                if (s_divCounter = (k_unsigned / 2 - 1)) then
                    clkOut <= '1';
                end if;
                s_divCounter <= s_divCounter + 1;
            end if;
        end if;
    end process;
end Behavioral;
