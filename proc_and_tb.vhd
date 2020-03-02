-- proc_tb.vhd file: proc.vhd
LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

--entity declaration--
ENTITY proc_and_tb IS
END proc_and_tb;

--architecture of testbench with the signal names--
ARCHITECTURE proc_and_tb_arch OF proc_and_tb IS
		SIGNAL clk_tb, zero_clr_tb, zero_wrt_tb, one_clr_tb : STD_LOGIC;
		SIGNAL one_wrt_tb, two_clr_tb, two_wrt_tb, three_clr_tb : STD_LOGIC;
		SIGNAL three_wrt_tb, zero_in_tb, one_in_tb, two_in_tb : STD_LOGIC;
		SIGNAL three_in_tb, four_in_tb, five_in_tb, six_in_tb : STD_LOGIC;
		SIGNAL seven_in_tb, eight_in_tb, nine_in_tb, ten_in_tb : STD_LOGIC;
		SIGNAL eleven_in_tb, twelve_in_tb, thirteen_in_tb : STD_LOGIC;
		SIGNAL fourteen_in_tb, fifteen_in_tb, hi_in_tb : STD_LOGIC;
		SIGNAL lo_in_tb, zhi_in_tb, zlo_in_tb, pc_in_tb : STD_LOGIC;
		SIGNAL mdr_in_tb, ip_in_tb, cse_in_tb, four_clr_tb : STD_LOGIC;
		SIGNAL four_wrt_tb, five_clr_tb, five_wrt_tb : STD_LOGIC;
		SIGNAL six_clr_tb, six_wrt_tb, seven_clr_tb : STD_LOGIC;
		SIGNAL seven_wrt_tb, eight_clr_tb, eight_wrt_tb : STD_LOGIC;
		SIGNAL nine_clr_tb, nine_wrt_tb, ten_clr_tb : STD_LOGIC;
		SIGNAL ten_wrt_tb, eleven_clr_tb, eleven_wrt_tb : STD_LOGIC;
		SIGNAL twelve_clr_tb, twelve_wrt_tb, thirteen_clr_tb : STD_LOGIC;
		SIGNAL thirteen_wrt_tb, fourteen_clr_tb, fourteen_wrt_tb : STD_LOGIC;
		SIGNAL fifteen_clr_tb, fifteen_wrt_tb, hi_clr_tb : STD_LOGIC;
		SIGNAL hi_wrt_tb, lo_clr_tb, lo_wrt_tb, zhi_clr_tb : STD_LOGIC;
		SIGNAL zhi_wrt_tb, zlo_clr_tb, zlo_wrt_tb, pc_clr_tb : STD_LOGIC;
		SIGNAL pc_wrt_tb, pc_inc_tb, mdr_clr_tb, mdr_wrt_tb : STD_LOGIC;
		SIGNAL cse_clr_tb, cse_wrt_tb, mar_clr_tb, mar_wrt_tb : STD_LOGIC;
		SIGNAL rd_tb, y_clr_tb, y_wrt_tb, opcode_clr_tb : STD_LOGIC;
		SIGNAL opcode_wrt_tb, input_clr_tb, input_wrt_tb : STD_LOGIC;

		SIGNAL mdata_in_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL bm_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL five_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL four_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL mar_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL mdr_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL opcode_out_tb : STD_LOGIC_VECTOR(3 DOWNTO 0);
		SIGNAL pc_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL two_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL y_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL z_out_tb : STD_LOGIC_VECTOR(63 DOWNTO 0);
		SIGNAL zhi_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL zlo_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		
		TYPE State IS (default, Reg_load1a, Reg_load1b, Reg_load2a, Reg_load2b, 
		Reg_load3a, Reg_load3b, InitPCa, InitPCb, T0, T1, T2, T3, T4, T5);
		SIGNAL Present_state: State := default;
	
--component instantiation--
COMPONENT proc
	PORT
	(
		clk, zero_clr, zero_wrt, one_clr :  IN  STD_LOGIC;
		one_wrt, two_clr, two_wrt, three_clr :  IN  STD_LOGIC;
		three_wrt, zero_in, one_in, two_in :  IN  STD_LOGIC;
		three_in, four_in, five_in, six_in :  IN  STD_LOGIC;
		seven_in, eight_in, nine_in, ten_in :  IN  STD_LOGIC;
		eleven_in, twelve_in, thirteen_in :  IN  STD_LOGIC;
		fourteen_in, fifteen_in, hi_in, lo_in :  IN  STD_LOGIC;
		zhi_in, zlo_in, pc_in, mdr_in, ip_in :  IN  STD_LOGIC;
		cse_in, four_clr, four_wrt, five_clr :  IN  STD_LOGIC;
		five_wrt, six_clr, six_wrt, seven_clr :  IN  STD_LOGIC;
		seven_wrt, eight_clr, eight_wrt, nine_clr :  IN  STD_LOGIC;
		nine_wrt, ten_clr, ten_wrt, eleven_clr :  IN  STD_LOGIC;
		eleven_wrt, twelve_clr, twelve_wrt :  IN  STD_LOGIC;
		thirteen_clr, thirteen_wrt, fourteen_clr :  IN  STD_LOGIC;
		fourteen_wrt, fifteen_clr, fifteen_wrt :  IN  STD_LOGIC;
		hi_clr, hi_wrt, lo_clr, lo_wrt :  IN  STD_LOGIC;
		zhi_clr, zhi_wrt, zlo_clr, zlo_wrt :  IN  STD_LOGIC;
		pc_clr, pc_wrt, pc_inc, mdr_clr, mdr_wrt :  IN  STD_LOGIC;
		cse_clr, cse_wrt, mar_clr, mar_wrt :  IN  STD_LOGIC;
		rd, y_clr, y_wrt, opcode_clr, opcode_wrt :  IN  STD_LOGIC;
		input_clr, input_wrt :  IN  STD_LOGIC;
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
END COMPONENT proc;

BEGIN
	DUT1 : proc
	
--port mapping: between DUT and testbench--
PORT MAP(
		clk => clk_tb ,
		zero_clr => zero_clr_tb ,
		zero_wrt => zero_wrt_tb ,
		one_clr => one_clr_tb ,
		one_wrt => one_wrt_tb ,
		two_clr => two_clr_tb ,
		two_wrt => two_wrt_tb ,
		three_clr => three_clr_tb ,
		three_wrt => three_wrt_tb ,
		zero_in => zero_in_tb ,
		one_in => one_in_tb ,
		two_in => two_in_tb ,
		three_in => three_in_tb ,
		four_in => four_in_tb ,
		five_in => five_in_tb ,
		six_in => six_in_tb ,
		seven_in => seven_in_tb ,
		eight_in => eight_in_tb ,
		nine_in => nine_in_tb ,
		ten_in => ten_in_tb ,
		eleven_in => eleven_in_tb ,
		twelve_in => twelve_in_tb ,
		thirteen_in => thirteen_in_tb ,
		fourteen_in => fourteen_in_tb ,
		fifteen_in => fifteen_in_tb ,
		hi_in => hi_in_tb ,
		lo_in => lo_in_tb ,
		zhi_in => zhi_in_tb ,
		zlo_in => zlo_in_tb ,
		pc_in => pc_in_tb ,
		mdr_in => mdr_in_tb ,
		ip_in => ip_in_tb ,
		cse_in => cse_in_tb ,
		four_clr => four_clr_tb ,
		four_wrt => four_wrt_tb ,
		five_clr => five_clr_tb ,
		five_wrt => five_wrt_tb ,
		six_clr => six_clr_tb ,
		six_wrt => six_wrt_tb ,
		seven_clr => seven_clr_tb ,
		seven_wrt => seven_wrt_tb ,
		eight_clr => eight_clr_tb ,
		eight_wrt => eight_wrt_tb ,
		nine_clr => nine_clr_tb ,
		nine_wrt => nine_wrt_tb ,
		ten_clr => ten_clr_tb ,
		ten_wrt => ten_wrt_tb ,
		eleven_clr => eleven_clr_tb ,
		eleven_wrt => eleven_wrt_tb ,
		twelve_clr => twelve_clr_tb ,
		twelve_wrt => twelve_wrt_tb ,
		thirteen_clr => thirteen_clr_tb ,
		thirteen_wrt => thirteen_wrt_tb ,
		fourteen_clr => fourteen_clr_tb ,
		fourteen_wrt => fourteen_wrt_tb ,
		fifteen_clr => fifteen_clr_tb ,
		fifteen_wrt => fifteen_wrt_tb ,
		hi_clr => hi_clr_tb ,
		hi_wrt => hi_wrt_tb ,
		lo_clr => lo_clr_tb ,
		lo_wrt => lo_wrt_tb ,
		zhi_clr => zhi_clr_tb ,
		zhi_wrt => zhi_wrt_tb ,
		zlo_clr => zlo_clr_tb ,
		zlo_wrt => zlo_wrt_tb ,
		pc_clr => pc_clr_tb ,
		pc_wrt => pc_wrt_tb ,
		pc_inc => pc_inc_tb ,
		mdr_clr => mdr_clr_tb ,
		mdr_wrt => mdr_wrt_tb ,
		cse_clr => cse_clr_tb ,
		cse_wrt => cse_wrt_tb ,
		mar_clr => mar_clr_tb ,
		mar_wrt => mar_wrt_tb ,
		rd => rd_tb ,
		y_clr => y_clr_tb ,
		y_wrt => y_wrt_tb ,
		opcode_clr => opcode_clr_tb ,
		opcode_wrt => opcode_wrt_tb ,
		input_clr => input_clr_tb ,
		input_wrt => input_wrt_tb ,
		mdata_in => mdata_in_tb ,
		bm_out => bm_out_tb ,
		five_out => five_out_tb ,
		four_out => four_out_tb ,
		mar_out => mar_out_tb ,
		mdr_out => mdr_out_tb ,
		opcode_out => opcode_out_tb ,
		pc_out => pc_out_tb ,
		two_out => two_out_tb ,
		y_out => y_out_tb ,
		z_out => z_out_tb ,
		zhi_out => zhi_out_tb ,
		zlo_out => zlo_out_tb);
	
--test logic--

Clock_process : PROCESS IS
BEGIN
	clk_tb <= '1', '0' after 10 ns;
 Wait for 20 ns;
END PROCESS Clock_process;

sim_process : process(clk_tb) is
begin

	if (rising_edge(clk_tb)) then
		case Present_state is
			WHEN Default =>
				Present_state <= Reg_load1a;
			WHEN Reg_load1a =>
				Present_state <= Reg_load1b;
			WHEN Reg_load1b =>
				Present_state <= Reg_load2a;
			WHEN Reg_load2a =>
				Present_state <= Reg_load2b;
			WHEN Reg_load2b =>
				Present_state <= Reg_load3a;
			WHEN Reg_load3a =>
				Present_state <= InitPCa;
			WHEN InitPCa =>
				Present_state <= InitPCb;
			WHEN InitPCb =>
				Present_state <= T0;
			WHEN T0 =>
				Present_state <= T1;
			WHEN T1 =>
				Present_state <= T2;
			WHEN T2 =>
				Present_state <= T3;
			WHEN T3 =>
				Present_state <= T4;
			WHEN T4 =>
				Present_state <= T5;
			WHEN OTHERS =>
		END CASE;
	END IF;
end process sim_process;

PROCESS(Present_state) IS 
begin
	case Present_state is
		WHEN Default=>
			
			zero_clr_tb <= '0'; zero_wrt_tb <= '0'; one_clr_tb <= '0';
			one_wrt_tb <= '0'; two_clr_tb <= '0'; two_wrt_tb <= '0';
			three_clr_tb <= '0'; three_wrt_tb <= '0'; zero_in_tb <= '0';
			one_in_tb <= '0'; two_in_tb <= '0'; three_in_tb <= '0';
			four_in_tb <= '0'; five_in_tb <= '0'; six_in_tb <= '0';
			seven_in_tb <= '0'; eight_in_tb <= '0'; nine_in_tb <= '0';
			ten_in_tb <= '0'; eleven_in_tb <= '0'; twelve_in_tb <= '0';
			thirteen_in_tb <= '0'; fourteen_in_tb <= '0'; fifteen_in_tb <= '0';
			hi_in_tb <= '0'; lo_in_tb <= '0'; zhi_in_tb <= '0';
			zlo_in_tb <= '0'; pc_in_tb <= '0'; mdr_in_tb <= '0';
			ip_in_tb <= '0'; cse_in_tb <= '0'; four_clr_tb <= '0';
			four_wrt_tb <= '0'; five_clr_tb <= '0'; five_wrt_tb <= '0';
			six_clr_tb <= '0'; six_wrt_tb <= '0'; seven_clr_tb <= '0';
			seven_wrt_tb <= '0'; eight_clr_tb <= '0'; eight_wrt_tb <= '0';
			nine_clr_tb <= '0'; nine_wrt_tb <= '0'; ten_clr_tb <= '0';
			ten_wrt_tb <= '0'; eleven_clr_tb <= '0'; eleven_wrt_tb <= '0';
			twelve_clr_tb <= '0'; twelve_wrt_tb <= '0'; thirteen_clr_tb <= '0';
			thirteen_wrt_tb <= '0'; fourteen_clr_tb <= '0'; fourteen_wrt_tb <= '0';
			fifteen_clr_tb <= '0'; fifteen_wrt_tb <= '0'; hi_clr_tb <= '0';
			hi_wrt_tb <= '0'; lo_clr_tb <= '0'; lo_wrt_tb <= '0';
			zhi_clr_tb <= '0'; zhi_wrt_tb <= '0'; zlo_clr_tb <= '0';
			zlo_wrt_tb <= '0'; pc_clr_tb <= '0'; pc_wrt_tb <= '0';
			pc_inc_tb <= '0'; mdr_clr_tb <= '0'; mdr_wrt_tb <= '0';
			cse_clr_tb <= '0'; cse_wrt_tb <= '0'; mar_clr_tb <= '0';
			mar_wrt_tb <= '0'; rd_tb <= '0'; y_clr_tb <= '0';
			y_wrt_tb <= '0'; opcode_clr_tb <= '0'; opcode_wrt_tb <= '0';
			input_clr_tb <= '0'; input_wrt_tb <= '0'; 
			mdata_in_tb <= x"00000000";
			
		WHEN Reg_load1a => 
			mdata_in_tb <= x"00000022";
			rd_tb <= '0', '1' after 10 ns, '0' after 25 ns;
			mdr_wrt_tb <= '0', '1' after 10 ns, '0' after 25 ns;
		WHEN Reg_load1b => 
			mdr_in_tb <= '1' after 10 ns, '0' after 25 ns;
			two_wrt_tb <= '1' after 10 ns, '0' after 25 ns;
		WHEN Reg_load2a =>
			mdata_in_tb <= x"00000024";
			rd_tb <= '1' after 10 ns, '0' after 25 ns;
			mdr_wrt_tb <= '1' after 10 ns, '0' after 25 ns;
		WHEN Reg_load2b =>
			mdr_in_tb <= '1' after 10 ns, '0' after 25 ns;
			four_wrt_tb <= '1' after 10 ns, '0' after 25 ns;
		WHEN InitPCa =>
			mdata_in_tb <= x"00000000";
			rd_tb <= '1' after 10 ns, '0' after 25 ns;
			mdr_wrt_tb <= '1' after 10 ns, '0' after 25 ns;
		WHEN InitPCb =>
			mdr_in_tb <= '1' after 10 ns, '0' after 25 ns;
			pc_wrt_tb <= '1' after 10 ns, '0' after 25 ns;	
		
		WHEN T0 => 
			pc_in_tb <= '1'; mar_wrt_tb <= '1'; 
			pc_inc_tb <= '1'; lo_wrt_tb <= '1';
		WHEN T1 =>
			pc_in_tb <= '0'; mar_wrt_tb <= '0'; 
			pc_inc_tb <= '0';lo_wrt_tb <= '0';
			 
			lo_in_tb <= '1'; pc_wrt_tb <= '1';
			rd_tb <= '1';
			mdr_wrt_tb <= '1';
			mdata_in_tb <= "00000000000000000000000000000001";
		WHEN T2 =>
			lo_in_tb <= '0'; pc_wrt_tb <= '0';
			rd_tb <= '0';
			mdr_wrt_tb <= '0';
			
			mdr_in_tb <= '1'; opcode_wrt_tb <= '1';
		WHEN T3 =>
			mdr_in_tb <= '0'; opcode_wrt_tb <= '0';
			
			two_in_tb <= '1'; y_wrt_tb <= '1';
		WHEN T4 =>
			two_in_tb <= '0'; y_wrt_tb <= '0';
			
			four_in_tb <= '1', '0' after 24 ns; zlo_wrt_tb <= '1'; zhi_wrt_tb <= '1';
		WHEN T5 =>
		four_in_tb <= '0'; zlo_wrt_tb <= '0'; zhi_wrt_tb <= '0';
		
		zlo_in_tb <= '1'; five_wrt_tb <= '1';
			
		WHEN OTHERS =>
	END CASE;
END PROCESS; 

end;

























