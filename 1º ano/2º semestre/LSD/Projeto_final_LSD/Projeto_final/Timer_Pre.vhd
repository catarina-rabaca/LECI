library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--Esta entidade funciona como um temporizador regressivo para o pré-aquecimento, contando para baixo a partir do valor inicial do pré-aquecimento,
--decrementando a cada pulso de clock quando ativado, e sinalizando um próximo estado quando o pré-aquecimento atinge zero.

entity Timer_Pre is
    port(
        ativo        : in std_logic;
        enable       : in std_logic;
        pre        : in std_logic_vector(7 downto 0);
        pre_out    : out std_logic_vector(7 downto 0);
        next_state   : out std_logic
    );
end Timer_Pre;

architecture behavioral of Timer_Pre is
    signal s_pre : std_logic_vector(7 downto 0);

begin
    process(ativo, enable, pre)
    begin
        if rising_edge(ativo) then
            s_pre <= pre; -- Inicializa s_tempo com o valor de tempo
            if enable = '1' then
                if s_pre > "00000000" then
                    s_pre <= s_pre - 1;
                end if;
            end if;
        end if;
		  
        -- Atribui o valor de s_tempo a timer_out, a menos que s_tempo seja zero
        if s_pre = "00000000" then
            pre_out <= "00000000";
				next_state <= '1';
        else
            pre_out <= s_pre;
            next_state <= '0';
        
		  end if;
    end process;
	 

end architecture;