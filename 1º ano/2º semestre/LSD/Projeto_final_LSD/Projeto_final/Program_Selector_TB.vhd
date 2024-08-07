library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Program_Selector_TB is
end Program_Selector_TB;

architecture behavioral of Program_Selector_TB is
    
    signal s_escolha              : std_logic_vector(2 downto 0) := "000";
    signal s_temperatura_user     : std_logic_vector(7 downto 0) := (others => '0');
    signal s_tempo_user           : std_logic_vector(7 downto 0) := (others => '0');
    signal s_pre_aquecimento_user : std_logic_vector(7 downto 0) := (others => '0');

  
    signal s_temperatura          : std_logic_vector(7 downto 0);
    signal s_tempo                : std_logic_vector(7 downto 0);
    signal s_pre_aquecimento      : std_logic_vector(7 downto 0);

begin
    
    uut: entity work.Program_Selector
    port map(
        escolha => s_escolha,
        temperatura_user => s_temperatura_user,
        tempo_user => s_tempo_user,
        pre_aquecimento_user => s_pre_aquecimento_user,
        temperatura => s_temperatura,
        tempo => s_tempo,
        pre_aquecimento => s_pre_aquecimento
    );

    
    stim_proc: process
    begin
        -- valor default (IDLE)
        wait for 100 ns;
        
        --  programa User (001)
        s_escolha <= "001";
        s_temperatura_user <= "10101010"; -- 170
        s_tempo_user <= "00010000"; -- 16
        s_pre_aquecimento_user <= "00000010"; -- 2
        wait for 100 ns;

        -- programa Rissois (010)
        s_escolha <= "010";
        wait for 100 ns;

        -- programa Batatas (011)
        s_escolha <= "011";
        wait for 100 ns;

        -- programa Filetes (100)
        s_escolha <= "100";
        wait for 100 ns;

        -- programa Hamburger (101)
        s_escolha <= "101";
        wait for 100 ns;

        -- escolha inválida (111) que deve ir para o default
        s_escolha <= "111";
        wait for 100 ns;

        
        wait;
    end process;

end behavioral;
