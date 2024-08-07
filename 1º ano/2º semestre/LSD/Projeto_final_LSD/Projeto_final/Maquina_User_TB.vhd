library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Maquina_User_TB is
end Maquina_User_TB;

architecture Behavioral of Maquina_User_TB is
    
    signal s_clk  : std_logic := '0';

    
    signal s_temp : std_logic;
    signal s_tempo: std_logic;
    signal s_pre  : std_logic;

    
    signal simulation_done: boolean := false;

begin
    
    uut: entity work.Maquina_User
    port map(
        clk   => s_clk,
        key   => '0',  
        temp  => s_temp,
        tempo => s_tempo,
        pre   => s_pre
    );

    
    clock_proc: process
    begin
        wait for 5 ns; 
        s_clk <= not s_clk;
        wait for 5 ns;  -- Gera o próximo ciclo de clock
        simulation_done <= true;  -- Indica o fim da simulação
        wait;
    end process;

    
    stim_proc: process
    begin
       
        wait for 100 ns;

        -- clicar no botão uma vez
        s_clk <= '1';
        wait for 5 ns;  -- duração do clique
        s_clk <= '0';
        wait for 5 ns;

       
        wait for 10 ns;

        -- clicar no botão outra vez
        s_clk <= '1';
        wait for 5 ns;
        s_clk <= '0';
        wait for 5 ns;

        
        wait for 10 ns;

        -- clicar no botão mais uma vez
        s_clk <= '1';
        wait for 5 ns;
        s_clk <= '0';
        wait for 5 ns;

        wait;
    end process;

end Behavioral;
