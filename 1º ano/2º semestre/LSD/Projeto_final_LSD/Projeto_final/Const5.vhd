library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Programa usado para testes (nao esta presente no projeto final)


entity Const5 is
    Port (
        data_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Const5;

architecture Behavioral of Const5 is
begin
        data_out <= "00000101"; -- 5 in binary
end Behavioral;
