library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--Entidade que funciona como um temporizador regressivo, contando para baixo a partir do valor inicial do tempo, 
--decrementando a cada pulso de clock quando ativado, e sinalizando um próximo estado quando o tempo atinge zero.

entity Timer_Tempo is
    port(
        ativo        : in std_logic;
        enable       : in std_logic;
        tempo        : in std_logic_vector(7 downto 0);
        timer_out    : out std_logic_vector(7 downto 0);
        next_state   : out std_logic
    );
end Timer_Tempo;

architecture behavioral of Timer_Tempo is
    signal s_tempo : std_logic_vector(7 downto 0);

begin
    process(ativo, enable, tempo)
    begin
        if rising_edge(ativo) then
            s_tempo <= tempo; -- Inicializa s_tempo com o valor de tempo
            if enable = '1' then
                if s_tempo > "00000000" then
                    s_tempo <= s_tempo - 1;
                end if;
            end if;
        end if;
		  
        -- Atribui o valor de s_tempo a timer_out, a menos que s_tempo seja zero
        if s_tempo = "00000000" then
            timer_out <= "00000000";
				next_state <= '1';
        else
            timer_out <= s_tempo;
            next_state <= '0';
        
		  end if;
    end process;
	 

end architecture;