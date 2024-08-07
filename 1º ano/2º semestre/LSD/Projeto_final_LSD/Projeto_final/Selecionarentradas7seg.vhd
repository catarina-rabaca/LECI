library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--O programa seleciona os dados que serão exibidos nos displays com base nos sinais de controle ativados,
--como temporizadores e ações de inicialização.

entity Selecionarentradas7seg is
    port (
        enabletempotimer           : in std_logic;
        enablepretimer             : in std_logic;
        enabletempratimer          : in std_logic;
		  enableon						  : in std_logic;
        
        temperatura                : in std_logic_vector(7 downto 0);
        tempo_coccao               : in std_logic_vector(7 downto 0);
        tempo_pre_aquecimento      : in std_logic_vector(7 downto 0);
        temperatura_counter        : in std_logic_vector(7 downto 0);
        tempo_coccao_timer         : in std_logic_vector(7 downto 0);
        tempo_pre_aquecimento_timer: in std_logic_vector(7 downto 0);
        
        saida_temperatura          : out std_logic_vector(7 downto 0);
        saida_tempo_coccao         : out std_logic_vector(7 downto 0);
        saida_tempo_pre_aquecimento: out std_logic_vector(7 downto 0)
    );
end Selecionarentradas7seg;

architecture behavioral of Selecionarentradas7seg is
begin
    process(enablepretimer, enabletempotimer, enabletempratimer, 
            temperatura, tempo_coccao, tempo_pre_aquecimento, 
            temperatura_counter, tempo_coccao_timer, tempo_pre_aquecimento_timer, enableon)
    begin
        
        saida_temperatura <= temperatura;
        saida_tempo_coccao <= tempo_coccao;
        saida_tempo_pre_aquecimento <= tempo_pre_aquecimento;
			
        if enableon = '0' then
				saida_temperatura 				<= "11111111";
				saida_tempo_coccao 				<= "11111111";
				saida_tempo_pre_aquecimento 	<= "11111111";
				
			elsif enableon = '1' then
			
			  if 	enablepretimer = '1' then
					saida_tempo_pre_aquecimento <= tempo_pre_aquecimento_timer;
					elsif enabletempotimer = '1' then
					saida_tempo_coccao <= tempo_coccao_timer;
					elsif enabletempratimer = '1' then
					saida_temperatura <= temperatura_counter;
					else
					saida_temperatura <= temperatura;
					saida_tempo_coccao <= tempo_coccao;
					saida_tempo_pre_aquecimento <= tempo_pre_aquecimento;
					
			  end if;
			 end if;
    end process;
end behavioral;