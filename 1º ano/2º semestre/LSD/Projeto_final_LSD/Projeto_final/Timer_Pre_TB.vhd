library IEEE;
use IEEE.std_logic_1164.all;

entity Timer_Pre_TB is
end Timer_Pre_TB;

architecture Behavioral of Timer_Pre_TB is
   
    signal s_ativo       : std_logic := '0';
    signal s_enable      : std_logic := '0';
    signal s_pre         : std_logic_vector(7 downto 0) := "00000000";

   
    signal s_pre_out     : std_logic_vector(7 downto 0);
    signal s_next_state  : std_logic;

begin
   
    uut: entity work.Timer_Pre
    port map(
        ativo      => s_ativo,
        enable     => s_enable,
        pre        => s_pre,
        pre_out    => s_pre_out,
        next_state => s_next_state
    );

    
    clock_proc: process
    begin
        s_ativo <= '0'; wait for 100 ns;
        s_ativo <= '1'; wait for 100 ns;
    end process clock_proc;

    
    stim_proc: process
    begin
        
        wait for 100 ns;

        s_enable <= '1'; -- Ativação do timer acontece aqui
        wait for 2000 ns;
        s_enable <= '0'; -- Desativação do timer

        wait;
    end process stim_proc;

end Behavioral;
