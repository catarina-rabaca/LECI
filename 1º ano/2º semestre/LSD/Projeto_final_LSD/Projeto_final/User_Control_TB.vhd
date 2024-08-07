library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity User_Control_TB is
end User_Control_TB;

architecture Behavioral of User_Control_TB is
    
    signal s_enable_temperatura : std_logic := '0';
    signal s_enable_tempo       : std_logic := '0';
    signal s_enable_pre         : std_logic := '0';
    signal s_clk                : std_logic := '0';
    signal s_key_inc            : std_logic := '0'; 
    signal s_key_dec            : std_logic := '0'; 

    
    signal s_temperatura        : std_logic_vector(7 downto 0);
    signal s_tempo              : std_logic_vector(7 downto 0);
    signal s_pre                : std_logic_vector(7 downto 0);

    
    signal s_simulation_done    : boolean := false;

begin
    
    uut: entity work.User_Control
    port map(
        enable_temperatura => s_enable_temperatura,
        enable_tempo       => s_enable_tempo,
        enable_pre         => s_enable_pre,
        clk                => s_clk,
        key_inc            => s_key_inc, 
        key_dec            => s_key_dec,
        temperatura        => s_temperatura,
        tempo              => s_tempo,
        pre                => s_pre
    );

    
    clock_proc: process
    begin
        wait for 10 ns; 
        s_clk <= not s_clk;
    end process;

    
    stim_proc: process
    begin
        
        wait for 100 ns;

        -- libertar um enable para incrementar/decrementar a temperatura
        s_enable_temperatura <= '1';
        s_key_inc <= '1'; 
        wait for 100 ns;
        s_key_inc <= '0'; 
        wait for 100 ns;
        s_key_dec <= '1'; 
        wait for 100 ns;
        s_key_dec <= '0'; 
        -- libertar um enable para incrementar/decrementar o tempo
        s_enable_temperatura <= '0';
        s_enable_tempo <= '1';
        s_key_inc <= '1'; 
        wait for 100 ns;
        s_key_inc <= '0'; 
        wait for 100 ns;
        s_key_dec <= '1'; 
        wait for 100 ns;
        s_key_dec <= '0'; 

        -- libertar um enable para incrementar/decrementar o pre-aquecimento
        s_enable_tempo <= '0';
        s_enable_pre <= '1';
        s_key_inc <= '1'; 
        wait for 100 ns;
        s_key_inc <= '0'; 
        wait for 100 ns;
        s_key_dec <= '1'; 
        wait for 100 ns;
        s_key_dec <= '0'; 

        
        s_simulation_done <= true;
        wait;
    end process;

    
    simulation_done_process: process
    begin
        wait until s_simulation_done;
        wait;
    end process;

end Behavioral;
