library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Programa usado para testes (nao esta presente no projeto final)


entity Const20 is
    Port (
        data_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Const20;

architecture Behavioral of Const20 is
begin
        data_out <= "00010100"; -- 200 in binary
end Behavioral;
