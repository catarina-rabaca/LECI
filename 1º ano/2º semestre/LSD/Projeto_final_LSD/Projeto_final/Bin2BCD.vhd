LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bin2bcd IS
    PORT (
        bin_input : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- Entrada de 8 bits
        binout0   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- Unidade
        binout1   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- Dezena
        binout2   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)  -- Centena
    );
END bin2bcd;

ARCHITECTURE behavioral OF bin2bcd IS
    SIGNAL rmsignal : unsigned(7 DOWNTO 0);
BEGIN
    rmsignal <= unsigned(bin_input);

    PROCESS(rmsignal)
    BEGIN
        IF rmsignal = "11111111" THEN
            binout0 <= "1111";
            binout1 <= "1111";
            binout2 <= "1111";
        ELSE
            binout2 <= STD_LOGIC_VECTOR(to_unsigned((to_integer(rmsignal) / 100), 4)); -- Centenas
            binout1 <= STD_LOGIC_VECTOR(to_unsigned((to_integer(rmsignal) MOD 100) / 10, 4)); -- Dezenas
            binout0 <= STD_LOGIC_VECTOR(to_unsigned((to_integer(rmsignal) MOD 100) MOD 10, 4)); -- Unidades
        END IF;
    END PROCESS;
END behavioral;
