library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Programa usado para testes (nao esta presente no projeto final)

entity Const200 is
    Port (
        data_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Const200;

architecture Behavioral of Const200 is
begin
        data_out <= "11001000"; -- 200 in binary
end Behavioral;
