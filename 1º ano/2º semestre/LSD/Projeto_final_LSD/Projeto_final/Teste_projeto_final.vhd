LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Teste_projeto_final IS 
	PORT
	(
		CLOCK_50 :  IN  STD_LOGIC;
		KEY :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		HEX0 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX1 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX2 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX4 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX5 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX6 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX7 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		LEDG :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		LEDR :  OUT  STD_LOGIC_VECTOR(17 DOWNTO 12)
	);
END Teste_projeto_final;

ARCHITECTURE bdf_type OF Teste_projeto_final IS 

COMPONENT timer_pre
	PORT(ativo : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 pre : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 next_state : OUT STD_LOGIC;
		 pre_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT debounce
	PORT(clk : IN STD_LOGIC;
		 din : IN STD_LOGIC;
		 dout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT user_control
	PORT(enable_temperatura : IN STD_LOGIC;
		 enable_tempo : IN STD_LOGIC;
		 enable_pre : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 key_inc : IN STD_LOGIC;
		 key_dec : IN STD_LOGIC;
		 pre : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 temperatura : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 tempo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT selecionarentradas7seg
	PORT(enabletempotimer : IN STD_LOGIC;
		 enablepretimer : IN STD_LOGIC;
		 enabletempratimer : IN STD_LOGIC;
		 enableon : IN STD_LOGIC;
		 temperatura : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 temperatura_counter : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 tempo_coccao : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 tempo_coccao_timer : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 tempo_pre_aquecimento : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 tempo_pre_aquecimento_timer : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 saida_temperatura : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 saida_tempo_coccao : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 saida_tempo_pre_aquecimento : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bin2bcd
	PORT(bin_input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 binout0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 binout1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 binout2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT maquina_user
	PORT(clk : IN STD_LOGIC;
		 key : IN STD_LOGIC;
		 temp : OUT STD_LOGIC;
		 tempo : OUT STD_LOGIC;
		 pre : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT bin7seg
	PORT(binInput : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 decOut_n : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT maq_estado
	PORT(clk : IN STD_LOGIC;
		 enableairaberta : IN STD_LOGIC;
		 enablepreacabou : IN STD_LOGIC;
		 enablecoccaoacabou : IN STD_LOGIC;
		 enabletempraacabou : IN STD_LOGIC;
		 enableON : IN STD_LOGIC;
		 enableescolhafeita : IN STD_LOGIC;
		 temperatura : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 tempococcao : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 tempopre_aquecimento : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 enabletempra : OUT STD_LOGIC;
		 enablecoccao : OUT STD_LOGIC;
		 enablepre : OUT STD_LOGIC;
		 enable_blinking : OUT STD_LOGIC;
		 estadoatual : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 saidatemperatura : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 saidatempococcao : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 saidatempopre_aquecimento : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT blinking
	PORT(clk : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 led1 : OUT STD_LOGIC;
		 led2 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT freqdivider
GENERIC (K : INTEGER
			);
	PORT(clkIn : IN STD_LOGIC;
		 clkOut : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT program_selector
	PORT(escolha : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 pre_aquecimento_user : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 temperatura_user : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 tempo_user : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 pre_aquecimento : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 temperatura : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 tempo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT timer_tempo
	PORT(ativo : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 tempo : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 next_state : OUT STD_LOGIC;
		 timer_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT counter_temperatura
	PORT(ativo : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 temperatura : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 next_state : OUT STD_LOGIC;
		 counter_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT gerador_pulsos
	PORT(clk : IN STD_LOGIC;
		 pulse : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_48 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
LEDG(3) <= '0';
LEDG(4) <= '0';
LEDG(0) <= SYNTHESIZED_WIRE_3;
LEDG(1) <= SYNTHESIZED_WIRE_4;
LEDG(2) <= SYNTHESIZED_WIRE_5;



b2v_inst : timer_pre
PORT MAP(ativo => SYNTHESIZED_WIRE_43,
		 enable => SYNTHESIZED_WIRE_44,
		 pre => SYNTHESIZED_WIRE_45,
		 next_state => SYNTHESIZED_WIRE_23,
		 pre_out => SYNTHESIZED_WIRE_14);



b2v_inst10 : debounce
PORT MAP(clk => CLOCK_50,
		 din => KEY(3),
		 dout => SYNTHESIZED_WIRE_26);


b2v_inst11 : user_control
PORT MAP(enable_temperatura => SYNTHESIZED_WIRE_3,
		 enable_tempo => SYNTHESIZED_WIRE_4,
		 enable_pre => SYNTHESIZED_WIRE_5,
		 clk => CLOCK_50,
		 key_inc => KEY(0),
		 key_dec => KEY(1),
		 pre => SYNTHESIZED_WIRE_31,
		 temperatura => SYNTHESIZED_WIRE_32,
		 tempo => SYNTHESIZED_WIRE_33);


b2v_inst12 : selecionarentradas7seg
PORT MAP(enabletempotimer => SYNTHESIZED_WIRE_46,
		 enablepretimer => SYNTHESIZED_WIRE_44,
		 enabletempratimer => SYNTHESIZED_WIRE_47,
		 enableon => SW(4),
		 temperatura => SYNTHESIZED_WIRE_48,
		 temperatura_counter => SYNTHESIZED_WIRE_10,
		 tempo_coccao => SYNTHESIZED_WIRE_49,
		 tempo_coccao_timer => SYNTHESIZED_WIRE_12,
		 tempo_pre_aquecimento => SYNTHESIZED_WIRE_45,
		 tempo_pre_aquecimento_timer => SYNTHESIZED_WIRE_14,
		 saida_temperatura => SYNTHESIZED_WIRE_15,
		 saida_tempo_coccao => SYNTHESIZED_WIRE_40,
		 saida_tempo_pre_aquecimento => SYNTHESIZED_WIRE_19);


b2v_inst13 : bin2bcd
PORT MAP(bin_input => SYNTHESIZED_WIRE_15,
		 binout0 => SYNTHESIZED_WIRE_16,
		 binout1 => SYNTHESIZED_WIRE_17,
		 binout2 => SYNTHESIZED_WIRE_18);


b2v_inst14 : maquina_user
PORT MAP(clk => CLOCK_50,
		 key => KEY(2),
		 temp => SYNTHESIZED_WIRE_3,
		 tempo => SYNTHESIZED_WIRE_4,
		 pre => SYNTHESIZED_WIRE_5);


b2v_inst15 : bin7seg
PORT MAP(binInput => SYNTHESIZED_WIRE_16,
		 decOut_n => HEX0);


b2v_inst16 : bin7seg
PORT MAP(binInput => SYNTHESIZED_WIRE_17,
		 decOut_n => HEX1);


b2v_inst17 : bin7seg
PORT MAP(binInput => SYNTHESIZED_WIRE_18,
		 decOut_n => HEX2);


b2v_inst18 : bin2bcd
PORT MAP(bin_input => SYNTHESIZED_WIRE_19,
		 binout0 => SYNTHESIZED_WIRE_20,
		 binout1 => SYNTHESIZED_WIRE_21);


b2v_inst19 : bin7seg
PORT MAP(binInput => SYNTHESIZED_WIRE_20,
		 decOut_n => HEX6);



b2v_inst20 : bin7seg
PORT MAP(binInput => SYNTHESIZED_WIRE_21,
		 decOut_n => HEX7);


b2v_inst22 : maq_estado
PORT MAP(clk => SYNTHESIZED_WIRE_22,
		 enableairaberta => SW(3),
		 enablepreacabou => SYNTHESIZED_WIRE_23,
		 enablecoccaoacabou => SYNTHESIZED_WIRE_24,
		 enabletempraacabou => SYNTHESIZED_WIRE_25,
		 enableON => SW(4),
		 enableescolhafeita => SYNTHESIZED_WIRE_26,
		 temperatura => SYNTHESIZED_WIRE_27,
		 tempococcao => SYNTHESIZED_WIRE_28,
		 tempopre_aquecimento => SYNTHESIZED_WIRE_29,
		 enabletempra => SYNTHESIZED_WIRE_47,
		 enablecoccao => SYNTHESIZED_WIRE_46,
		 enablepre => SYNTHESIZED_WIRE_44,
		 enable_blinking => SYNTHESIZED_WIRE_30,
		 estadoatual => LEDR,
		 saidatemperatura => SYNTHESIZED_WIRE_48,
		 saidatempococcao => SYNTHESIZED_WIRE_49,
		 saidatempopre_aquecimento => SYNTHESIZED_WIRE_45);


b2v_inst23 : blinking
PORT MAP(clk => CLOCK_50,
		 enable => SYNTHESIZED_WIRE_30,
		 led1 => LEDG(6),
		 led2 => LEDG(5));


b2v_inst27 : freqdivider
GENERIC MAP(K => 50000000
			)
PORT MAP(clkIn => CLOCK_50,
		 clkOut => SYNTHESIZED_WIRE_22);


b2v_inst3 : program_selector
PORT MAP(escolha => SW(2 DOWNTO 0),
		 pre_aquecimento_user => SYNTHESIZED_WIRE_31,
		 temperatura_user => SYNTHESIZED_WIRE_32,
		 tempo_user => SYNTHESIZED_WIRE_33,
		 pre_aquecimento => SYNTHESIZED_WIRE_29,
		 temperatura => SYNTHESIZED_WIRE_27,
		 tempo => SYNTHESIZED_WIRE_28);


b2v_inst4 : timer_tempo
PORT MAP(ativo => SYNTHESIZED_WIRE_43,
		 enable => SYNTHESIZED_WIRE_46,
		 tempo => SYNTHESIZED_WIRE_49,
		 next_state => SYNTHESIZED_WIRE_24,
		 timer_out => SYNTHESIZED_WIRE_12);


b2v_inst5 : counter_temperatura
PORT MAP(ativo => SYNTHESIZED_WIRE_43,
		 enable => SYNTHESIZED_WIRE_47,
		 temperatura => SYNTHESIZED_WIRE_48,
		 next_state => SYNTHESIZED_WIRE_25,
		 counter_out => SYNTHESIZED_WIRE_10);


b2v_inst6 : bin2bcd
PORT MAP(bin_input => SYNTHESIZED_WIRE_40,
		 binout0 => SYNTHESIZED_WIRE_41,
		 binout1 => SYNTHESIZED_WIRE_42);


b2v_inst7 : gerador_pulsos
PORT MAP(clk => CLOCK_50,
		 pulse => SYNTHESIZED_WIRE_43);


b2v_inst8 : bin7seg
PORT MAP(binInput => SYNTHESIZED_WIRE_41,
		 decOut_n => HEX4);


b2v_inst9 : bin7seg
PORT MAP(binInput => SYNTHESIZED_WIRE_42,
		 decOut_n => HEX5);


END bdf_type;
