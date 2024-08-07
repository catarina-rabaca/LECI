library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Const200 is
    Port (
        data_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Const200;

architecture Behavioral of Const200 is
begin
    process
    begin
        data_out <= "11001000"; -- 200 in binary
        wait; -- Process runs once and stops, as there's no need for continuous operation
    end process;
end Behavioral;
