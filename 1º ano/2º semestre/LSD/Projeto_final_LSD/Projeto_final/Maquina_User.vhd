library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Máquina de estados para controlo interativo dos parâmetros de 
--temperatura, tempo e pré-aquecimento num dispositivo, 
--ativando sinais para ajustes de acordo com os botões pressionados pelo utilizador.

entity Maquina_User is
    Port (
        clk   : in  STD_LOGIC;
        key   : in  STD_LOGIC;
        temp  : out STD_LOGIC;
        tempo : out STD_LOGIC;
        pre   : out STD_LOGIC
    );
end Maquina_User;

architecture Behavioral of Maquina_User is
    type state_type is (INICIAL, TEMPERATURA, TEMPOO, PREE);
    signal PS, NS : state_type := INICIAL;
    signal key_prev : std_logic := '1';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            PS <= NS;
            key_prev <= key;
        end if;
    end process;

    process(PS, key, key_prev)
    begin
        case PS is
            when INICIAL =>
                if key = '0' and key_prev = '1' then 
                    NS <= TEMPERATURA;							--se a pessraturaoa clickar uma vez no botão, ela consegue alterar o estado seguinte, este caso a tempe
                else
                    NS <= INICIAL;
                end if;

            when TEMPERATURA =>
                if key = '0' and key_prev = '1' then
                    NS <= TEMPOO;								-- se a pessoa clickar outra vez, desta vez, vai poder alterar o tempo
                else
                    NS <= TEMPERATURA;
                end if;

            when TEMPOO =>
                if key = '0' and key_prev = '1' then
                    NS <= PREE;									-- e aqui vai poder alterar o pre-aquecimento
                else
                    NS <= TEMPOO;
                end if;

            when PREE =>
                if key = '0' and key_prev = '1' then
                    NS <= INICIAL;
                else
                    NS <= PREE;
                end if;

            when others =>
                NS <= INICIAL;
        end case;
    end process;

    process(PS)									--com base em cada estado, vão ser libertados enables para o bloco seguinte, que vai incrementar ou decrementar os dados
    begin
        temp <= '0';
        tempo <= '0';
        pre <= '0';

        case PS is
            when INICIAL =>
                temp <= '0';
                tempo <= '0';
                pre <= '0';

            when TEMPERATURA =>			--aqui é libertado um enable para que se altere a temperatura no bloco seguinte
                temp <= '1';  
                tempo <= '0';
                pre <= '0';

            when TEMPOO =>					--aqui é libertado um enable para que se altere o tempo no bloco seguinte
                temp <= '0';
                tempo <= '1';  
                pre <= '0';

            when PREE =>					--aqui é libertado um enable para que se altere o pre-aquecimento no bloco seguinte
                temp <= '0';
                tempo <= '0';
                pre <= '1';  

            when others =>					--quando não for nenhum estado em específico, não vai ser liberto nenhum enable
                temp <= '0';
                tempo <= '0';
                pre <= '0';
        end case;
    end process;

end Behavioral;
