library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--Entidade que conta a temperatura para baixo em incrementos de 10 unidades quando ativada, 
--mantendo o valor atual da temperatura no estado inativo, e sinalizando um próximo estado quando a temperatura atinge 20.

entity Counter_Temperatura is
    port(
        ativo        : in std_logic;
        enable       : in std_logic;
        temperatura        : in std_logic_vector(7 downto 0);
        counter_out    : out std_logic_vector(7 downto 0);
        next_state   : out std_logic
    );
end Counter_Temperatura;

architecture behavioral of Counter_Temperatura is
    signal s_temperatura : std_logic_vector(7 downto 0);

begin
    process(ativo, enable, temperatura)
    begin
        if rising_edge(ativo) then
            s_temperatura <= temperatura; -- Inicializa s_tempo com o valor de tempo
            if enable = '1' then
                if s_temperatura > "00010100" then
                    s_temperatura <= s_temperatura - 10;
                end if;
            end if;
        end if;
		  
        -- Atribui o valor de s_tempo a timer_out, a menos que s_tempo seja zero
        if s_temperatura = "00010100" then
            counter_out <= "00010100";
				next_state <= '1';
        else
            counter_out <= s_temperatura;
            next_state <= '0';
        
		  end if;
    end process;
	 

end architecture;