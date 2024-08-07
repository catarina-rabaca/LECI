library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Timer_Tempo_TB is
end Timer_Tempo_TB;

architecture Behavioral of Timer_Tempo_TB is
    
    signal s_ativo        : std_logic := '0';
    signal s_enable       : std_logic := '0';
    signal s_tempo        : std_logic_vector(7 downto 0) := "00001000"; -- tempo: 8
    signal s_timer_out    : std_logic_vector(7 downto 0);
    signal s_next_state   : std_logic;

begin
    
    uut: entity work.Timer_Tempo
    port map(
        ativo       => s_ativo,
        enable      => s_enable,
        tempo       => s_tempo,
        timer_out   => s_timer_out,
        next_state  => s_next_state
    );

   
   clock_proc: process
    begin
        s_ativo <= '0'; wait for 100 ns;
        s_ativo <= '1'; wait for 100 ns;
    end process clock_proc;

   
    stim_proc: process
    begin
       
        wait for 100 ns;

        s_enable <= '0';

        -- o temporizador começa aqui
        s_enable <= '1';
        wait for 800 ns;
        s_enable <= '0';

       
        wait;
    end process stim_proc;

end Behavioral;
