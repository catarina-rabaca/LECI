library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Counter_Temperatura_TB is
end Counter_Temperatura_TB;

architecture Behavioral of Counter_Temperatura_TB is
    
    signal s_ativo          : std_logic := '0'; 
    signal s_reset        : std_logic := '0';
    signal s_enable       : std_logic := '0'; 
    signal s_temperatura : std_logic_vector(7 downto 0) := "11001000"; 

    
    signal s_counter_out  : std_logic_vector(7 downto 0);
    signal s_next_state   : std_logic;

begin
   
    uut: entity work.Counter_Temperatura
    port map(
        ativo       => s_ativo,
        enable        => s_enable,
        temperatura   => s_temperatura,
        counter_out   => s_counter_out,
        next_state    => s_next_state
    );

   
    clock_proc: process
    begin
        s_ativo <= '0'; wait for 100 ns;
        s_ativo <= '1'; wait for 100 ns;
    end process clock_proc;

   
    stim_proc: process
    begin
        
        wait for 100 ns;

       
        s_reset <= '1';
        wait for 325 ns;
        s_reset <= '0';

        
        s_enable <= '1'; --o contador começa a contar aqui
        wait for 2000 ns;
        s_enable <= '0';

      
        wait;
    end process stim_proc;

end Behavioral;
