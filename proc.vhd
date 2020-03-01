-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sat Feb 29 20:02:28 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY proc IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		zero_clr :  IN  STD_LOGIC;
		zero_wrt :  IN  STD_LOGIC;
		one_clr :  IN  STD_LOGIC;
		one_wrt :  IN  STD_LOGIC;
		two_clr :  IN  STD_LOGIC;
		two_wrt :  IN  STD_LOGIC;
		three_clr :  IN  STD_LOGIC;
		three_wrt :  IN  STD_LOGIC;
		zero_in :  IN  STD_LOGIC;
		one_in :  IN  STD_LOGIC;
		two_in :  IN  STD_LOGIC;
		three_in :  IN  STD_LOGIC;
		four_in :  IN  STD_LOGIC;
		five_in :  IN  STD_LOGIC;
		six_in :  IN  STD_LOGIC;
		seven_in :  IN  STD_LOGIC;
		eight_in :  IN  STD_LOGIC;
		nine_in :  IN  STD_LOGIC;
		ten_in :  IN  STD_LOGIC;
		eleven_in :  IN  STD_LOGIC;
		twelve_in :  IN  STD_LOGIC;
		thirteen_in :  IN  STD_LOGIC;
		fourteen_in :  IN  STD_LOGIC;
		fifteen_in :  IN  STD_LOGIC;
		hi_in :  IN  STD_LOGIC;
		lo_in :  IN  STD_LOGIC;
		zhi_in :  IN  STD_LOGIC;
		zlo_in :  IN  STD_LOGIC;
		pc_in :  IN  STD_LOGIC;
		mdr_in :  IN  STD_LOGIC;
		ip_in :  IN  STD_LOGIC;
		cse_in :  IN  STD_LOGIC;
		four_clr :  IN  STD_LOGIC;
		four_wrt :  IN  STD_LOGIC;
		five_clr :  IN  STD_LOGIC;
		five_wrt :  IN  STD_LOGIC;
		six_clr :  IN  STD_LOGIC;
		six_wrt :  IN  STD_LOGIC;
		seven_clr :  IN  STD_LOGIC;
		seven_wrt :  IN  STD_LOGIC;
		eight_clr :  IN  STD_LOGIC;
		eight_wrt :  IN  STD_LOGIC;
		nine_clr :  IN  STD_LOGIC;
		nine_wrt :  IN  STD_LOGIC;
		ten_clr :  IN  STD_LOGIC;
		ten_wrt :  IN  STD_LOGIC;
		eleven_clr :  IN  STD_LOGIC;
		eleven_wrt :  IN  STD_LOGIC;
		twelve_clr :  IN  STD_LOGIC;
		twelve_wrt :  IN  STD_LOGIC;
		thirteen_clr :  IN  STD_LOGIC;
		thirteen_wrt :  IN  STD_LOGIC;
		fourteen_clr :  IN  STD_LOGIC;
		fourteen_wrt :  IN  STD_LOGIC;
		fifteen_clr :  IN  STD_LOGIC;
		fifteen_wrt :  IN  STD_LOGIC;
		hi_clr :  IN  STD_LOGIC;
		hi_wrt :  IN  STD_LOGIC;
		lo_clr :  IN  STD_LOGIC;
		lo_wrt :  IN  STD_LOGIC;
		zhi_clr :  IN  STD_LOGIC;
		zhi_wrt :  IN  STD_LOGIC;
		zlo_clr :  IN  STD_LOGIC;
		zlo_wrt :  IN  STD_LOGIC;
		pc_clr :  IN  STD_LOGIC;
		pc_wrt :  IN  STD_LOGIC;
		pc_inc :  IN  STD_LOGIC;
		mdr_clr :  IN  STD_LOGIC;
		mdr_wrt :  IN  STD_LOGIC;
		cse_clr :  IN  STD_LOGIC;
		cse_wrt :  IN  STD_LOGIC;
		mar_clr :  IN  STD_LOGIC;
		mar_wrt :  IN  STD_LOGIC;
		rd :  IN  STD_LOGIC;
		y_clr :  IN  STD_LOGIC;
		y_wrt :  IN  STD_LOGIC;
		opcode_clr :  IN  STD_LOGIC;
		opcode_wrt :  IN  STD_LOGIC;
		input_clr :  IN  STD_LOGIC;
		input_wrt :  IN  STD_LOGIC;
		mdata_in :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		bm_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		five_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		four_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		mar_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		mdr_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		opcode_out :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		pc_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		two_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		y_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		z_out :  OUT  STD_LOGIC_VECTOR(63 DOWNTO 0);
		zhi_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		zlo_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END proc;

ARCHITECTURE bdf_type OF proc IS 

COMPONENT alu
	PORT(Ain : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Bin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 OPcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Y : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bidirectional_bus
	PORT(bmeight : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmeleven : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmfifteen : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmfive : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmfour : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmfourteen : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmHI : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmIP : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmLO : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmMDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmnine : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmone : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmPC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmseven : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmsix : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmten : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmthirteen : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmthree : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmtwelve : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmtwo : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmzero : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmZHIGH : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bmZLOW : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 cSE : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 eIN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 bmOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bus_encoder
	PORT(zeror : IN STD_LOGIC;
		 oner : IN STD_LOGIC;
		 twor : IN STD_LOGIC;
		 threer : IN STD_LOGIC;
		 fourr : IN STD_LOGIC;
		 fiver : IN STD_LOGIC;
		 sixr : IN STD_LOGIC;
		 sevenr : IN STD_LOGIC;
		 eightr : IN STD_LOGIC;
		 niner : IN STD_LOGIC;
		 tenr : IN STD_LOGIC;
		 elevenr : IN STD_LOGIC;
		 twelver : IN STD_LOGIC;
		 thirteenr : IN STD_LOGIC;
		 fourteenr : IN STD_LOGIC;
		 fifteenr : IN STD_LOGIC;
		 hiOUT : IN STD_LOGIC;
		 loOUT : IN STD_LOGIC;
		 zhighOUT : IN STD_LOGIC;
		 zlowOUT : IN STD_LOGIC;
		 pcOUT : IN STD_LOGIC;
		 mdrOUT : IN STD_LOGIC;
		 ipOUT : IN STD_LOGIC;
		 cOUT : IN STD_LOGIC;
		 eOUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg_one
	PORT(CLR : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 WRT : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mdr
	PORT(CLR : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 WRT : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mdr_mux
	PORT(RD : IN STD_LOGIC;
		 bmOUT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 mdataIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 mdOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT opcode_register
	PORT(CLR : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 WRT : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT pcreg
	PORT(CLR : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 WRT : IN STD_LOGIC;
		 INC : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg_z
	PORT(D : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		 hi : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 lo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_57 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_54 :  STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_55 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_56 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 
bm_out <= SYNTHESIZED_WIRE_57;
five_out <= SYNTHESIZED_WIRE_6;
four_out <= SYNTHESIZED_WIRE_7;
mdr_out <= SYNTHESIZED_WIRE_12;
opcode_out <= SYNTHESIZED_WIRE_2;
pc_out <= SYNTHESIZED_WIRE_15;
two_out <= SYNTHESIZED_WIRE_22;
y_out <= SYNTHESIZED_WIRE_1;
z_out <= SYNTHESIZED_WIRE_54;
zhi_out <= SYNTHESIZED_WIRE_24;
zlo_out <= SYNTHESIZED_WIRE_25;



b2v_alu : alu
PORT MAP(Ain => SYNTHESIZED_WIRE_57,
		 Bin => SYNTHESIZED_WIRE_1,
		 OPcode => SYNTHESIZED_WIRE_2,
		 Y => SYNTHESIZED_WIRE_54);


b2v_bus : bidirectional_bus
PORT MAP(bmeight => SYNTHESIZED_WIRE_3,
		 bmeleven => SYNTHESIZED_WIRE_4,
		 bmfifteen => SYNTHESIZED_WIRE_5,
		 bmfive => SYNTHESIZED_WIRE_6,
		 bmfour => SYNTHESIZED_WIRE_7,
		 bmfourteen => SYNTHESIZED_WIRE_8,
		 bmHI => SYNTHESIZED_WIRE_9,
		 bmIP => SYNTHESIZED_WIRE_10,
		 bmLO => SYNTHESIZED_WIRE_11,
		 bmMDR => SYNTHESIZED_WIRE_12,
		 bmnine => SYNTHESIZED_WIRE_13,
		 bmone => SYNTHESIZED_WIRE_14,
		 bmPC => SYNTHESIZED_WIRE_15,
		 bmseven => SYNTHESIZED_WIRE_16,
		 bmsix => SYNTHESIZED_WIRE_17,
		 bmten => SYNTHESIZED_WIRE_18,
		 bmthirteen => SYNTHESIZED_WIRE_19,
		 bmthree => SYNTHESIZED_WIRE_20,
		 bmtwelve => SYNTHESIZED_WIRE_21,
		 bmtwo => SYNTHESIZED_WIRE_22,
		 bmzero => SYNTHESIZED_WIRE_23,
		 bmZHIGH => SYNTHESIZED_WIRE_24,
		 bmZLOW => SYNTHESIZED_WIRE_25,
		 cSE => SYNTHESIZED_WIRE_26,
		 eIN => SYNTHESIZED_WIRE_27,
		 bmOUT => SYNTHESIZED_WIRE_57);


b2v_busmux : bus_encoder
PORT MAP(zeror => zero_in,
		 oner => one_in,
		 twor => two_in,
		 threer => three_in,
		 fourr => four_in,
		 fiver => five_in,
		 sixr => six_in,
		 sevenr => seven_in,
		 eightr => eight_in,
		 niner => nine_in,
		 tenr => ten_in,
		 elevenr => eleven_in,
		 twelver => twelve_in,
		 thirteenr => thirteen_in,
		 fourteenr => fourteen_in,
		 fifteenr => fifteen_in,
		 hiOUT => hi_in,
		 loOUT => lo_in,
		 zhighOUT => zhi_in,
		 zlowOUT => zlo_in,
		 pcOUT => pc_in,
		 mdrOUT => mdr_in,
		 ipOUT => ip_in,
		 cOUT => cse_in,
		 eOUT => SYNTHESIZED_WIRE_27);


b2v_mar : reg_one
PORT MAP(CLR => mar_clr,
		 CLK => clk,
		 WRT => mar_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => mar_out);


b2v_mdr : mdr
PORT MAP(CLR => mdr_clr,
		 CLK => clk,
		 WRT => mdr_wrt,
		 D => SYNTHESIZED_WIRE_29,
		 Q => SYNTHESIZED_WIRE_12);


b2v_mdr_mux : mdr_mux
PORT MAP(RD => rd,
		 bmOUT => SYNTHESIZED_WIRE_57,
		 mdataIN => mdata_in,
		 mdOUT => SYNTHESIZED_WIRE_29);


b2v_r0 : reg_one
PORT MAP(CLR => zero_clr,
		 CLK => clk,
		 WRT => zero_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_23);


b2v_r1 : reg_one
PORT MAP(CLR => one_clr,
		 CLK => clk,
		 WRT => one_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_14);


b2v_r10 : reg_one
PORT MAP(CLR => ten_clr,
		 CLK => clk,
		 WRT => ten_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_18);


b2v_r11 : reg_one
PORT MAP(CLR => eleven_clr,
		 CLK => clk,
		 WRT => eleven_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_4);


b2v_r12 : reg_one
PORT MAP(CLR => twelve_clr,
		 CLK => clk,
		 WRT => twelve_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_21);


b2v_r13 : reg_one
PORT MAP(CLR => thirteen_clr,
		 CLK => clk,
		 WRT => thirteen_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_19);


b2v_r14 : reg_one
PORT MAP(CLR => fourteen_clr,
		 CLK => clk,
		 WRT => fourteen_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_8);


b2v_r15 : reg_one
PORT MAP(CLR => fifteen_clr,
		 CLK => clk,
		 WRT => fifteen_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_5);


b2v_r2 : reg_one
PORT MAP(CLR => two_clr,
		 CLK => clk,
		 WRT => two_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_22);


b2v_r3 : reg_one
PORT MAP(CLR => three_clr,
		 CLK => clk,
		 WRT => three_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_20);


b2v_r4 : reg_one
PORT MAP(CLR => four_clr,
		 CLK => clk,
		 WRT => four_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_7);


b2v_r5 : reg_one
PORT MAP(CLR => five_clr,
		 CLK => clk,
		 WRT => five_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_6);


b2v_r6 : reg_one
PORT MAP(CLR => six_clr,
		 CLK => clk,
		 WRT => six_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_17);


b2v_r7 : reg_one
PORT MAP(CLR => seven_clr,
		 CLK => clk,
		 WRT => seven_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_16);


b2v_r8 : reg_one
PORT MAP(CLR => eight_clr,
		 CLK => clk,
		 WRT => eight_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_3);


b2v_r9 : reg_one
PORT MAP(CLR => nine_clr,
		 CLK => clk,
		 WRT => nine_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_13);


b2v_rcse : reg_one
PORT MAP(CLR => cse_clr,
		 CLK => clk,
		 WRT => cse_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_26);


b2v_rhi : reg_one
PORT MAP(CLR => hi_clr,
		 CLK => clk,
		 WRT => hi_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_9);


b2v_rin : reg_one
PORT MAP(CLR => input_clr,
		 CLK => clk,
		 WRT => input_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_10);


b2v_rlo : reg_one
PORT MAP(CLR => lo_clr,
		 CLK => clk,
		 WRT => lo_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_11);


b2v_rop : opcode_register
PORT MAP(CLR => opcode_clr,
		 CLK => clk,
		 WRT => opcode_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_2);


b2v_rpc : pcreg
PORT MAP(CLR => pc_clr,
		 CLK => clk,
		 WRT => pc_wrt,
		 INC => pc_inc,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_15);


b2v_ry : reg_one
PORT MAP(CLR => y_clr,
		 CLK => clk,
		 WRT => y_wrt,
		 D => SYNTHESIZED_WIRE_57,
		 Q => SYNTHESIZED_WIRE_1);


b2v_rz : reg_z
PORT MAP(D => SYNTHESIZED_WIRE_54,
		 hi => SYNTHESIZED_WIRE_55,
		 lo => SYNTHESIZED_WIRE_56);


b2v_rzhi : reg_one
PORT MAP(CLR => zhi_clr,
		 CLK => clk,
		 WRT => zhi_wrt,
		 D => SYNTHESIZED_WIRE_55,
		 Q => SYNTHESIZED_WIRE_24);


b2v_rzlo : reg_one
PORT MAP(CLR => zlo_clr,
		 CLK => clk,
		 WRT => zlo_wrt,
		 D => SYNTHESIZED_WIRE_56,
		 Q => SYNTHESIZED_WIRE_25);


END bdf_type;