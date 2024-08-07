library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Blinking is
    Port ( clk : in STD_LOGIC;
           enable : in STD_LOGIC;
           led1 : out STD_LOGIC;
           led2 : out STD_LOGIC);
end Blinking;

architecture Behavioral of Blinking is
    signal counter : integer := 0;
    signal led1_state : STD_LOGIC := '0';
    signal led2_state : STD_LOGIC := '0';
    signal toggle : STD_LOGIC := '0';
    constant MAX_COUNT : integer := 12_500_000;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if enable = '1' then
                if counter = MAX_COUNT then
                    counter <= 0;
                    toggle <= not toggle;
                    if toggle = '0' then
                        led1_state <= '1';
                        led2_state <= '0';
                    else
                        led1_state <= '0';
                        led2_state <= '1';
                    end if;
                else
                    counter <= counter + 1;
                end if;
            else
                led1_state <= '0';
                led2_state <= '0';
                counter <= 0;
            end if;
        end if;
    end process;

    led1 <= led1_state;
    led2 <= led2_state;

end Behavioral;
