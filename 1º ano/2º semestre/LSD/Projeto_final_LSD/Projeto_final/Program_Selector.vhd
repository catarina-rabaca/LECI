library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

--Seletor de programas de cozinha para ajustar os parâmetros de temperatura, tempo e pré-aquecimento com base nas escolhas do usuário ou em programas predefinidos.

entity Program_Selector is

port(		escolha 					: in std_logic_vector (2 downto 0);
			temperatura_user		: in std_logic_vector (7 downto 0);
			tempo_user				: in std_logic_vector (7 downto 0);
			pre_aquecimento_user	: in std_logic_vector (7 downto 0);
			
			temperatura 			: out std_logic_vector (7 downto 0);
			tempo						: out std_logic_vector (7 downto 0);
			pre_aquecimento		: out std_logic_vector (7 downto 0)	
			);
			
end Program_Selector;

architecture behavioral of Program_Selector is
	begin
		process(escolha) 
			begin
			case escolha is 
				when "000" =>										-- Default(IDLE)
				temperatura <= "11001000"; 					-- 200
				tempo 		<= "00010010"; 					-- 18
				pre_aquecimento <= "00000000"; 				-- 0
				
				when "001" =>										--User (Valores definidos previamente na Maquina de estados user)
				temperatura <= temperatura_user;
				tempo 		<= tempo_user;
				pre_aquecimento <= pre_aquecimento_user;
				
				when "010" =>										--Rissois
				temperatura <= "10110100"; 					-- 180
				tempo 		<= "00001111"; 					-- 15
				pre_aquecimento <= "00000011"; 				-- 3
				
				when "011" =>										--Batatas
				temperatura <= "11001000"; 					-- 200
				tempo 		<= "00010100"; 					-- 20
				pre_aquecimento <= "00000101"; 				-- 5

				when "100" =>										--Filetes
				temperatura <= "10101010"; 					-- 170
				tempo 		<= "00010100"; 					-- 20
				pre_aquecimento <= "00000011"; 				-- 3

				when "101" =>										--Hamburger
				temperatura <= "10101010"; 					-- 170
				tempo 		<= "00010100"; 					-- 20
				pre_aquecimento <= "00000101"; 				-- 5
			
				when others =>										--Vai para default se forem postos os switch acima de 101
				temperatura <= "11001000"; 					-- 200
				tempo 		<= "00010010"; 					-- 18
				pre_aquecimento <= "00000000"; 				-- 0
				
				end case;
		end process;
end behavioral;


	