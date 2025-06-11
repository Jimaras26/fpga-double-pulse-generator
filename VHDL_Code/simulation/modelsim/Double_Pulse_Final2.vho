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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/13/2025 14:44:32"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Double_Pulse_Final2 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	button : IN std_logic;
	time_input : IN std_logic_vector(7 DOWNTO 0);
	set_time : IN std_logic_vector(2 DOWNTO 0);
	time_base_sel : IN std_logic_vector(1 DOWNTO 0);
	led_indicator : BUFFER std_logic_vector(2 DOWNTO 0);
	output_signal : BUFFER std_logic
	);
END Double_Pulse_Final2;

-- Design Ports Information
-- led_indicator[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_indicator[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_indicator[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_signal	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set_time[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set_time[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set_time[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_input[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_input[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_input[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_input[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_input[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_input[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_input[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_input[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_base_sel[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_base_sel[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Double_Pulse_Final2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_button : std_logic;
SIGNAL ww_time_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_set_time : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_time_base_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led_indicator : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output_signal : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \led_indicator[0]~output_o\ : std_logic;
SIGNAL \led_indicator[1]~output_o\ : std_logic;
SIGNAL \led_indicator[2]~output_o\ : std_logic;
SIGNAL \output_signal~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \set_time[1]~input_o\ : std_logic;
SIGNAL \set_time[0]~input_o\ : std_logic;
SIGNAL \set_time[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \led_timer~0_combout\ : std_logic;
SIGNAL \led_active~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \led_active~q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \led_timer~2_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~48\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \led_timer[28]~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \led_timer[28]~1_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \led_timer[29]~4_combout\ : std_logic;
SIGNAL \Add0~60\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \led_timer[30]~3_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \internal_led_indicator[0]~6_combout\ : std_logic;
SIGNAL \internal_led_indicator~8_combout\ : std_logic;
SIGNAL \internal_led_indicator[0]~9_combout\ : std_logic;
SIGNAL \internal_led_indicator~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \internal_led_indicator~7_combout\ : std_logic;
SIGNAL \count[0]~32_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \time_input[0]~input_o\ : std_logic;
SIGNAL \time_input[1]~input_o\ : std_logic;
SIGNAL \time_input[2]~input_o\ : std_logic;
SIGNAL \time_input[3]~input_o\ : std_logic;
SIGNAL \time_input[4]~input_o\ : std_logic;
SIGNAL \time_input[5]~input_o\ : std_logic;
SIGNAL \time_input[6]~input_o\ : std_logic;
SIGNAL \time_input[7]~input_o\ : std_logic;
SIGNAL \time_base_sel[1]~input_o\ : std_logic;
SIGNAL \HIGH2_MULT[1]~feeder_combout\ : std_logic;
SIGNAL \time_base_sel[0]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \count[30]~93\ : std_logic;
SIGNAL \count[31]~94_combout\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \button_last~feeder_combout\ : std_logic;
SIGNAL \button_last~q\ : std_logic;
SIGNAL \times_set_flag[0]~feeder_combout\ : std_logic;
SIGNAL \times_set_flag[1]~feeder_combout\ : std_logic;
SIGNAL \times_set_flag[2]~feeder_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \all_times_set~q\ : std_logic;
SIGNAL \count[2]~99_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~8_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \LessThan3~12_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \LessThan3~34_combout\ : std_logic;
SIGNAL \LessThan3~13_combout\ : std_logic;
SIGNAL \LessThan3~14_combout\ : std_logic;
SIGNAL \LessThan3~28_combout\ : std_logic;
SIGNAL \LessThan3~29_combout\ : std_logic;
SIGNAL \LessThan3~30_combout\ : std_logic;
SIGNAL \LessThan3~31_combout\ : std_logic;
SIGNAL \LessThan3~10_combout\ : std_logic;
SIGNAL \LessThan3~9_combout\ : std_logic;
SIGNAL \LessThan3~11_combout\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \LessThan3~17_combout\ : std_logic;
SIGNAL \LessThan3~18_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \LessThan3~19_combout\ : std_logic;
SIGNAL \LessThan3~16_combout\ : std_logic;
SIGNAL \LessThan3~15_combout\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \LessThan3~20_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \LessThan3~21_combout\ : std_logic;
SIGNAL \LessThan3~22_combout\ : std_logic;
SIGNAL \LessThan3~35_combout\ : std_logic;
SIGNAL \LessThan3~23_combout\ : std_logic;
SIGNAL \LessThan3~24_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \LessThan3~25_combout\ : std_logic;
SIGNAL \LessThan3~26_combout\ : std_logic;
SIGNAL \LessThan3~27_combout\ : std_logic;
SIGNAL \LessThan3~36_combout\ : std_logic;
SIGNAL \LessThan3~37_combout\ : std_logic;
SIGNAL \LessThan3~32_combout\ : std_logic;
SIGNAL \LessThan3~33_combout\ : std_logic;
SIGNAL \Selector36~3_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \HIGH1_MULT[0]~feeder_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~27_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \LessThan1~23_combout\ : std_logic;
SIGNAL \LessThan1~24_combout\ : std_logic;
SIGNAL \LessThan1~25_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \LessThan1~13_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \LessThan1~15_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \LessThan1~16_combout\ : std_logic;
SIGNAL \LessThan1~17_combout\ : std_logic;
SIGNAL \LessThan1~28_combout\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \LessThan1~19_combout\ : std_logic;
SIGNAL \LessThan1~20_combout\ : std_logic;
SIGNAL \LessThan1~21_combout\ : std_logic;
SIGNAL \LessThan1~22_combout\ : std_logic;
SIGNAL \LessThan1~31_combout\ : std_logic;
SIGNAL \LessThan1~32_combout\ : std_logic;
SIGNAL \LessThan1~26_combout\ : std_logic;
SIGNAL \LessThan1~29_combout\ : std_logic;
SIGNAL \LessThan1~30_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~2_combout\ : std_logic;
SIGNAL \Selector36~4_combout\ : std_logic;
SIGNAL \state.HIGH2~q\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \LOW1_MULT[0]~feeder_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \LessThan2~35_combout\ : std_logic;
SIGNAL \LessThan2~32_combout\ : std_logic;
SIGNAL \LessThan2~31_combout\ : std_logic;
SIGNAL \LessThan2~33_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \LessThan2~11_combout\ : std_logic;
SIGNAL \LessThan2~12_combout\ : std_logic;
SIGNAL \LessThan2~37_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \LessThan2~13_combout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \LessThan2~15_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \LessThan2~16_combout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \LessThan2~17_combout\ : std_logic;
SIGNAL \LessThan2~18_combout\ : std_logic;
SIGNAL \LessThan2~19_combout\ : std_logic;
SIGNAL \LessThan2~20_combout\ : std_logic;
SIGNAL \LessThan2~25_combout\ : std_logic;
SIGNAL \LessThan2~23_combout\ : std_logic;
SIGNAL \LessThan2~24_combout\ : std_logic;
SIGNAL \LessThan2~21_combout\ : std_logic;
SIGNAL \LessThan2~22_combout\ : std_logic;
SIGNAL \LessThan2~27_combout\ : std_logic;
SIGNAL \LessThan2~26_combout\ : std_logic;
SIGNAL \LessThan2~28_combout\ : std_logic;
SIGNAL \LessThan2~29_combout\ : std_logic;
SIGNAL \LessThan2~30_combout\ : std_logic;
SIGNAL \LessThan2~34_combout\ : std_logic;
SIGNAL \count[2]~96_combout\ : std_logic;
SIGNAL \count[2]~97_combout\ : std_logic;
SIGNAL \count[2]~98_combout\ : std_logic;
SIGNAL \count[0]~33\ : std_logic;
SIGNAL \count[1]~34_combout\ : std_logic;
SIGNAL \count[1]~35\ : std_logic;
SIGNAL \count[2]~36_combout\ : std_logic;
SIGNAL \count[2]~37\ : std_logic;
SIGNAL \count[3]~38_combout\ : std_logic;
SIGNAL \count[3]~39\ : std_logic;
SIGNAL \count[4]~40_combout\ : std_logic;
SIGNAL \count[4]~41\ : std_logic;
SIGNAL \count[5]~42_combout\ : std_logic;
SIGNAL \count[5]~43\ : std_logic;
SIGNAL \count[6]~44_combout\ : std_logic;
SIGNAL \count[6]~45\ : std_logic;
SIGNAL \count[7]~46_combout\ : std_logic;
SIGNAL \count[7]~47\ : std_logic;
SIGNAL \count[8]~48_combout\ : std_logic;
SIGNAL \count[8]~49\ : std_logic;
SIGNAL \count[9]~50_combout\ : std_logic;
SIGNAL \count[9]~51\ : std_logic;
SIGNAL \count[10]~52_combout\ : std_logic;
SIGNAL \count[10]~53\ : std_logic;
SIGNAL \count[11]~54_combout\ : std_logic;
SIGNAL \count[11]~55\ : std_logic;
SIGNAL \count[12]~56_combout\ : std_logic;
SIGNAL \count[12]~57\ : std_logic;
SIGNAL \count[13]~58_combout\ : std_logic;
SIGNAL \count[13]~59\ : std_logic;
SIGNAL \count[14]~60_combout\ : std_logic;
SIGNAL \count[14]~61\ : std_logic;
SIGNAL \count[15]~62_combout\ : std_logic;
SIGNAL \count[15]~63\ : std_logic;
SIGNAL \count[16]~64_combout\ : std_logic;
SIGNAL \count[16]~65\ : std_logic;
SIGNAL \count[17]~66_combout\ : std_logic;
SIGNAL \count[17]~67\ : std_logic;
SIGNAL \count[18]~68_combout\ : std_logic;
SIGNAL \count[18]~69\ : std_logic;
SIGNAL \count[19]~70_combout\ : std_logic;
SIGNAL \count[19]~71\ : std_logic;
SIGNAL \count[20]~72_combout\ : std_logic;
SIGNAL \count[20]~73\ : std_logic;
SIGNAL \count[21]~74_combout\ : std_logic;
SIGNAL \count[21]~75\ : std_logic;
SIGNAL \count[22]~76_combout\ : std_logic;
SIGNAL \count[22]~77\ : std_logic;
SIGNAL \count[23]~78_combout\ : std_logic;
SIGNAL \count[23]~79\ : std_logic;
SIGNAL \count[24]~80_combout\ : std_logic;
SIGNAL \count[24]~81\ : std_logic;
SIGNAL \count[25]~82_combout\ : std_logic;
SIGNAL \count[25]~83\ : std_logic;
SIGNAL \count[26]~84_combout\ : std_logic;
SIGNAL \count[26]~85\ : std_logic;
SIGNAL \count[27]~86_combout\ : std_logic;
SIGNAL \count[27]~87\ : std_logic;
SIGNAL \count[28]~88_combout\ : std_logic;
SIGNAL \count[28]~89\ : std_logic;
SIGNAL \count[29]~90_combout\ : std_logic;
SIGNAL \count[29]~91\ : std_logic;
SIGNAL \count[30]~92_combout\ : std_logic;
SIGNAL \LessThan2~36_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \state.LOW1~q\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \state.HIGH1~q\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector32~3_combout\ : std_logic;
SIGNAL \Selector32~4_combout\ : std_logic;
SIGNAL \Selector32~5_combout\ : std_logic;
SIGNAL \output_signal~reg0_q\ : std_logic;
SIGNAL times_set_flag : std_logic_vector(2 DOWNTO 0);
SIGNAL led_timer : std_logic_vector(31 DOWNTO 0);
SIGNAL internal_led_indicator : std_logic_vector(2 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL LOW1_MULT : std_logic_vector(1 DOWNTO 0);
SIGNAL HIGH2_MULT : std_logic_vector(1 DOWNTO 0);
SIGNAL HIGH1_MULT : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_button <= button;
ww_time_input <= time_input;
ww_set_time <= set_time;
ww_time_base_sel <= time_base_sel;
led_indicator <= ww_led_indicator;
output_signal <= ww_output_signal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT16\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT16\ & \Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT12\ & \Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT7\ & \Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT2\ & \Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\ & \Mult1|auto_generated|mac_mult1~0\);

\Mult1|auto_generated|mac_out2~0\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~dataout\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out2~DATAOUT1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out2~DATAOUT2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out2~DATAOUT3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out2~DATAOUT4\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out2~DATAOUT5\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out2~DATAOUT6\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out2~DATAOUT7\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out2~DATAOUT8\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out2~DATAOUT9\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out2~DATAOUT10\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out2~DATAOUT11\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out2~DATAOUT12\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out2~DATAOUT13\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out2~DATAOUT14\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out2~DATAOUT15\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out2~DATAOUT16\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\Mult2|auto_generated|mac_mult1~DATAOUT16\ & \Mult2|auto_generated|mac_mult1~DATAOUT15\ & \Mult2|auto_generated|mac_mult1~DATAOUT14\ & \Mult2|auto_generated|mac_mult1~DATAOUT13\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT12\ & \Mult2|auto_generated|mac_mult1~DATAOUT11\ & \Mult2|auto_generated|mac_mult1~DATAOUT10\ & \Mult2|auto_generated|mac_mult1~DATAOUT9\ & \Mult2|auto_generated|mac_mult1~DATAOUT8\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT7\ & \Mult2|auto_generated|mac_mult1~DATAOUT6\ & \Mult2|auto_generated|mac_mult1~DATAOUT5\ & \Mult2|auto_generated|mac_mult1~DATAOUT4\ & \Mult2|auto_generated|mac_mult1~DATAOUT3\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT2\ & \Mult2|auto_generated|mac_mult1~DATAOUT1\ & \Mult2|auto_generated|mac_mult1~dataout\ & \Mult2|auto_generated|mac_mult1~0\);

\Mult2|auto_generated|mac_out2~0\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_out2~dataout\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_out2~DATAOUT1\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_out2~DATAOUT2\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_out2~DATAOUT3\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_out2~DATAOUT4\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_out2~DATAOUT5\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_out2~DATAOUT6\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_out2~DATAOUT7\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_out2~DATAOUT8\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_out2~DATAOUT9\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_out2~DATAOUT10\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_out2~DATAOUT11\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_out2~DATAOUT12\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_out2~DATAOUT13\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_out2~DATAOUT14\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_out2~DATAOUT15\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_out2~DATAOUT16\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \time_input[7]~input_o\ & \time_input[6]~input_o\ & \time_input[5]~input_o\ & \time_input[4]~input_o\ & \time_input[3]~input_o\ & \time_input[2]~input_o\ & \time_input[1]~input_o\ & 
\time_input[0]~input_o\);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \Mux1~1_combout\ & \Mux3~0_combout\ & \Mux1~0_combout\ & gnd & HIGH1_MULT(1) & \Mux1~0_combout\ & NOT \Mux3~0_combout\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \time_input[7]~input_o\ & \time_input[6]~input_o\ & \time_input[5]~input_o\ & \time_input[4]~input_o\ & \time_input[3]~input_o\ & \time_input[2]~input_o\ & \time_input[1]~input_o\ & 
\time_input[0]~input_o\);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \Mux5~1_combout\ & \Mux7~0_combout\ & \Mux5~0_combout\ & gnd & LOW1_MULT(1) & \Mux5~0_combout\ & NOT \Mux7~0_combout\ & gnd);

\Mult1|auto_generated|mac_mult1~0\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \time_input[7]~input_o\ & \time_input[6]~input_o\ & \time_input[5]~input_o\ & \time_input[4]~input_o\ & \time_input[3]~input_o\ & \time_input[2]~input_o\ & \time_input[1]~input_o\ & 
\time_input[0]~input_o\);

\Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \Mux9~1_combout\ & \Mux11~0_combout\ & \Mux9~0_combout\ & gnd & HIGH2_MULT(1) & \Mux9~0_combout\ & NOT \Mux11~0_combout\ & gnd);

\Mult2|auto_generated|mac_mult1~0\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_mult1~dataout\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X0_Y20_N9
\led_indicator[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => internal_led_indicator(0),
	devoe => ww_devoe,
	o => \led_indicator[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led_indicator[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => internal_led_indicator(1),
	devoe => ww_devoe,
	o => \led_indicator[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led_indicator[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => internal_led_indicator(2),
	devoe => ww_devoe,
	o => \led_indicator[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\output_signal~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_signal~reg0_q\,
	devoe => ww_devoe,
	o => \output_signal~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X21_Y0_N29
\set_time[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set_time(1),
	o => \set_time[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\set_time[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set_time(0),
	o => \set_time[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\set_time[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set_time(2),
	o => \set_time[2]~input_o\);

-- Location: LCCOMB_X17_Y5_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (led_timer(31) & ((\set_time[1]~input_o\ & ((\set_time[2]~input_o\) # (\set_time[0]~input_o\))) # (!\set_time[1]~input_o\ & (\set_time[2]~input_o\ $ (!\set_time[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_time[1]~input_o\,
	datab => led_timer(31),
	datac => \set_time[2]~input_o\,
	datad => \set_time[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X17_Y5_N22
\led_timer~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_timer~0_combout\ = (\set_time[1]~input_o\ & ((\set_time[2]~input_o\) # (\set_time[0]~input_o\))) # (!\set_time[1]~input_o\ & (\set_time[2]~input_o\ $ (!\set_time[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_time[1]~input_o\,
	datac => \set_time[2]~input_o\,
	datad => \set_time[0]~input_o\,
	combout => \led_timer~0_combout\);

-- Location: LCCOMB_X17_Y5_N28
\led_active~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_active~0_combout\ = ((!\led_timer~0_combout\ & !\led_active~q\)) # (!\led_timer[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer~0_combout\,
	datac => \led_active~q\,
	datad => \led_timer[28]~1_combout\,
	combout => \led_active~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X17_Y5_N29
led_active : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_active~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_active~q\);

-- Location: LCCOMB_X15_Y6_N0
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = led_timer(0) $ (VCC)
-- \Add0~2\ = CARRY(led_timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(0),
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X16_Y6_N30
\Add0~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~1_combout\ & !\led_timer[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datad => \led_timer[28]~1_combout\,
	combout => \Add0~93_combout\);

-- Location: LCCOMB_X16_Y5_N18
\led_timer~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_timer~2_combout\ = ((\set_time[1]~input_o\ & (!\set_time[0]~input_o\ & !\set_time[2]~input_o\)) # (!\set_time[1]~input_o\ & (\set_time[0]~input_o\ $ (\set_time[2]~input_o\)))) # (!\led_timer[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_time[1]~input_o\,
	datab => \set_time[0]~input_o\,
	datac => \set_time[2]~input_o\,
	datad => \led_timer[28]~1_combout\,
	combout => \led_timer~2_combout\);

-- Location: FF_X16_Y6_N31
\led_timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~93_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(0));

-- Location: LCCOMB_X15_Y6_N2
\Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (led_timer(1) & (!\Add0~2\)) # (!led_timer(1) & ((\Add0~2\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~2\) # (!led_timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(1),
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X16_Y6_N20
\Add0~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\Add0~3_combout\ & !\led_timer[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~3_combout\,
	datad => \led_timer[28]~1_combout\,
	combout => \Add0~92_combout\);

-- Location: FF_X16_Y6_N21
\led_timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~92_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(1));

-- Location: LCCOMB_X15_Y6_N4
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (led_timer(2) & (\Add0~4\ $ (GND))) # (!led_timer(2) & (!\Add0~4\ & VCC))
-- \Add0~6\ = CARRY((led_timer(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X16_Y6_N14
\Add0~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\Add0~5_combout\ & !\led_timer[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	datad => \led_timer[28]~1_combout\,
	combout => \Add0~91_combout\);

-- Location: FF_X16_Y6_N15
\led_timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~91_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(2));

-- Location: LCCOMB_X15_Y6_N6
\Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (led_timer(3) & (!\Add0~6\)) # (!led_timer(3) & ((\Add0~6\) # (GND)))
-- \Add0~8\ = CARRY((!\Add0~6\) # (!led_timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(3),
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X16_Y6_N4
\Add0~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (\Add0~7_combout\ & !\led_timer[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~7_combout\,
	datad => \led_timer[28]~1_combout\,
	combout => \Add0~90_combout\);

-- Location: FF_X16_Y6_N5
\led_timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~90_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(3));

-- Location: LCCOMB_X15_Y6_N8
\Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (led_timer(4) & (\Add0~8\ $ (GND))) # (!led_timer(4) & (!\Add0~8\ & VCC))
-- \Add0~10\ = CARRY((led_timer(4) & !\Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(4),
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X16_Y6_N6
\Add0~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (!\led_timer[28]~1_combout\ & \Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~9_combout\,
	combout => \Add0~89_combout\);

-- Location: FF_X16_Y6_N7
\led_timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~89_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(4));

-- Location: LCCOMB_X15_Y6_N10
\Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (led_timer(5) & (!\Add0~10\)) # (!led_timer(5) & ((\Add0~10\) # (GND)))
-- \Add0~12\ = CARRY((!\Add0~10\) # (!led_timer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(5),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X16_Y6_N8
\Add0~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (!\led_timer[28]~1_combout\ & \Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~11_combout\,
	combout => \Add0~88_combout\);

-- Location: FF_X16_Y6_N9
\led_timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~88_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(5));

-- Location: LCCOMB_X15_Y6_N12
\Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (led_timer(6) & (\Add0~12\ $ (GND))) # (!led_timer(6) & (!\Add0~12\ & VCC))
-- \Add0~14\ = CARRY((led_timer(6) & !\Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(6),
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X16_Y6_N10
\Add0~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (!\led_timer[28]~1_combout\ & \Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~13_combout\,
	combout => \Add0~87_combout\);

-- Location: FF_X16_Y6_N11
\led_timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~87_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(6));

-- Location: LCCOMB_X15_Y6_N14
\Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (led_timer(7) & (!\Add0~14\)) # (!led_timer(7) & ((\Add0~14\) # (GND)))
-- \Add0~16\ = CARRY((!\Add0~14\) # (!led_timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(7),
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X16_Y6_N22
\Add0~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (!\led_timer[28]~1_combout\ & \Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~15_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X16_Y6_N23
\led_timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~74_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(7));

-- Location: LCCOMB_X15_Y6_N16
\Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (led_timer(8) & (\Add0~16\ $ (GND))) # (!led_timer(8) & (!\Add0~16\ & VCC))
-- \Add0~18\ = CARRY((led_timer(8) & !\Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(8),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X16_Y6_N12
\Add0~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\Add0~17_combout\ & !\led_timer[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	datad => \led_timer[28]~1_combout\,
	combout => \Add0~73_combout\);

-- Location: FF_X16_Y6_N13
\led_timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~73_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(8));

-- Location: LCCOMB_X15_Y6_N18
\Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (led_timer(9) & (!\Add0~18\)) # (!led_timer(9) & ((\Add0~18\) # (GND)))
-- \Add0~20\ = CARRY((!\Add0~18\) # (!led_timer(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(9),
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X16_Y6_N26
\Add0~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (!\led_timer[28]~1_combout\ & \Add0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~19_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X16_Y6_N27
\led_timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~77_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(9));

-- Location: LCCOMB_X15_Y6_N20
\Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (led_timer(10) & (\Add0~20\ $ (GND))) # (!led_timer(10) & (!\Add0~20\ & VCC))
-- \Add0~22\ = CARRY((led_timer(10) & !\Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(10),
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X16_Y6_N18
\Add0~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (!\led_timer[28]~1_combout\ & \Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~21_combout\,
	combout => \Add0~76_combout\);

-- Location: FF_X16_Y6_N19
\led_timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~76_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(10));

-- Location: LCCOMB_X15_Y6_N22
\Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (led_timer(11) & (!\Add0~22\)) # (!led_timer(11) & ((\Add0~22\) # (GND)))
-- \Add0~24\ = CARRY((!\Add0~22\) # (!led_timer(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(11),
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X16_Y6_N0
\Add0~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (!\led_timer[28]~1_combout\ & \Add0~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~23_combout\,
	combout => \Add0~75_combout\);

-- Location: FF_X16_Y6_N1
\led_timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~75_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(11));

-- Location: LCCOMB_X15_Y6_N24
\Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (led_timer(12) & (\Add0~24\ $ (GND))) # (!led_timer(12) & (!\Add0~24\ & VCC))
-- \Add0~26\ = CARRY((led_timer(12) & !\Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(12),
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X16_Y6_N28
\Add0~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (!\led_timer[28]~1_combout\ & \Add0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~25_combout\,
	combout => \Add0~78_combout\);

-- Location: FF_X16_Y6_N29
\led_timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~78_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(12));

-- Location: LCCOMB_X15_Y6_N26
\Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (led_timer(13) & (!\Add0~26\)) # (!led_timer(13) & ((\Add0~26\) # (GND)))
-- \Add0~28\ = CARRY((!\Add0~26\) # (!led_timer(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(13),
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X16_Y6_N2
\Add0~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (\Add0~27_combout\ & !\led_timer[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~27_combout\,
	datad => \led_timer[28]~1_combout\,
	combout => \Add0~79_combout\);

-- Location: FF_X16_Y6_N3
\led_timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~79_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(13));

-- Location: LCCOMB_X15_Y6_N28
\Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (led_timer(14) & (\Add0~28\ $ (GND))) # (!led_timer(14) & (!\Add0~28\ & VCC))
-- \Add0~30\ = CARRY((led_timer(14) & !\Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(14),
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X16_Y5_N10
\Add0~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~29_combout\ & !\led_timer[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~29_combout\,
	datad => \led_timer[28]~1_combout\,
	combout => \Add0~81_combout\);

-- Location: FF_X16_Y5_N11
\led_timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~81_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(14));

-- Location: LCCOMB_X15_Y6_N30
\Add0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (led_timer(15) & (!\Add0~30\)) # (!led_timer(15) & ((\Add0~30\) # (GND)))
-- \Add0~32\ = CARRY((!\Add0~30\) # (!led_timer(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(15),
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X16_Y5_N0
\Add0~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\Add0~31_combout\ & !\led_timer[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~31_combout\,
	datad => \led_timer[28]~1_combout\,
	combout => \Add0~80_combout\);

-- Location: FF_X16_Y5_N1
\led_timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~80_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(15));

-- Location: LCCOMB_X15_Y5_N0
\Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (led_timer(16) & (\Add0~32\ $ (GND))) # (!led_timer(16) & (!\Add0~32\ & VCC))
-- \Add0~34\ = CARRY((led_timer(16) & !\Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(16),
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X14_Y5_N4
\Add0~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\Add0~33_combout\ & !\led_timer[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~33_combout\,
	datac => \led_timer[28]~1_combout\,
	combout => \Add0~72_combout\);

-- Location: FF_X14_Y5_N5
\led_timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~72_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(16));

-- Location: LCCOMB_X15_Y5_N2
\Add0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (led_timer(17) & (!\Add0~34\)) # (!led_timer(17) & ((\Add0~34\) # (GND)))
-- \Add0~36\ = CARRY((!\Add0~34\) # (!led_timer(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(17),
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X14_Y5_N26
\Add0~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (!\led_timer[28]~1_combout\ & \Add0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_timer[28]~1_combout\,
	datad => \Add0~35_combout\,
	combout => \Add0~71_combout\);

-- Location: FF_X14_Y5_N27
\led_timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~71_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(17));

-- Location: LCCOMB_X15_Y5_N4
\Add0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (led_timer(18) & (\Add0~36\ $ (GND))) # (!led_timer(18) & (!\Add0~36\ & VCC))
-- \Add0~38\ = CARRY((led_timer(18) & !\Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(18),
	datad => VCC,
	cin => \Add0~36\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X14_Y5_N20
\Add0~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (!\led_timer[28]~1_combout\ & \Add0~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_timer[28]~1_combout\,
	datad => \Add0~37_combout\,
	combout => \Add0~70_combout\);

-- Location: FF_X14_Y5_N21
\led_timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~70_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(18));

-- Location: LCCOMB_X15_Y5_N6
\Add0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (led_timer(19) & (!\Add0~38\)) # (!led_timer(19) & ((\Add0~38\) # (GND)))
-- \Add0~40\ = CARRY((!\Add0~38\) # (!led_timer(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(19),
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X14_Y5_N6
\Add0~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (!\led_timer[28]~1_combout\ & \Add0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_timer[28]~1_combout\,
	datad => \Add0~39_combout\,
	combout => \Add0~69_combout\);

-- Location: FF_X14_Y5_N7
\led_timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~69_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(19));

-- Location: LCCOMB_X15_Y5_N8
\Add0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (led_timer(20) & (\Add0~40\ $ (GND))) # (!led_timer(20) & (!\Add0~40\ & VCC))
-- \Add0~42\ = CARRY((led_timer(20) & !\Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(20),
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

-- Location: LCCOMB_X16_Y5_N4
\Add0~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (!\led_timer[28]~1_combout\ & \Add0~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~41_combout\,
	combout => \Add0~85_combout\);

-- Location: FF_X16_Y5_N5
\led_timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~85_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(20));

-- Location: LCCOMB_X15_Y5_N10
\Add0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (led_timer(21) & (!\Add0~42\)) # (!led_timer(21) & ((\Add0~42\) # (GND)))
-- \Add0~44\ = CARRY((!\Add0~42\) # (!led_timer(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(21),
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X16_Y5_N6
\Add0~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (!\led_timer[28]~1_combout\ & \Add0~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~43_combout\,
	combout => \Add0~84_combout\);

-- Location: FF_X16_Y5_N7
\led_timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~84_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(21));

-- Location: LCCOMB_X15_Y5_N12
\Add0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (led_timer(22) & (\Add0~44\ $ (GND))) # (!led_timer(22) & (!\Add0~44\ & VCC))
-- \Add0~46\ = CARRY((led_timer(22) & !\Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(22),
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X16_Y5_N20
\Add0~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (!\led_timer[28]~1_combout\ & \Add0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~45_combout\,
	combout => \Add0~83_combout\);

-- Location: FF_X16_Y5_N21
\led_timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~83_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(22));

-- Location: LCCOMB_X15_Y5_N14
\Add0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (led_timer(23) & (!\Add0~46\)) # (!led_timer(23) & ((\Add0~46\) # (GND)))
-- \Add0~48\ = CARRY((!\Add0~46\) # (!led_timer(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(23),
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~47_combout\,
	cout => \Add0~48\);

-- Location: LCCOMB_X16_Y5_N2
\Add0~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (!\led_timer[28]~1_combout\ & \Add0~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~47_combout\,
	combout => \Add0~82_combout\);

-- Location: FF_X16_Y5_N3
\led_timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~82_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(23));

-- Location: LCCOMB_X15_Y5_N16
\Add0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (led_timer(24) & (\Add0~48\ $ (GND))) # (!led_timer(24) & (!\Add0~48\ & VCC))
-- \Add0~50\ = CARRY((led_timer(24) & !\Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(24),
	datad => VCC,
	cin => \Add0~48\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X16_Y5_N24
\Add0~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (!\led_timer[28]~1_combout\ & \Add0~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~49_combout\,
	combout => \Add0~68_combout\);

-- Location: FF_X16_Y5_N25
\led_timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~68_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(24));

-- Location: LCCOMB_X15_Y5_N18
\Add0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (led_timer(25) & (!\Add0~50\)) # (!led_timer(25) & ((\Add0~50\) # (GND)))
-- \Add0~52\ = CARRY((!\Add0~50\) # (!led_timer(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(25),
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X16_Y5_N30
\Add0~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (!\led_timer[28]~1_combout\ & \Add0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~51_combout\,
	combout => \Add0~67_combout\);

-- Location: FF_X16_Y5_N31
\led_timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~67_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(25));

-- Location: LCCOMB_X15_Y5_N20
\Add0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (led_timer(26) & (\Add0~52\ $ (GND))) # (!led_timer(26) & (!\Add0~52\ & VCC))
-- \Add0~54\ = CARRY((led_timer(26) & !\Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(26),
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~53_combout\,
	cout => \Add0~54\);

-- Location: LCCOMB_X16_Y5_N8
\Add0~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (!\led_timer[28]~1_combout\ & \Add0~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer[28]~1_combout\,
	datad => \Add0~53_combout\,
	combout => \Add0~66_combout\);

-- Location: FF_X16_Y5_N9
\led_timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~66_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(26));

-- Location: LCCOMB_X15_Y5_N22
\Add0~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (led_timer(27) & (!\Add0~54\)) # (!led_timer(27) & ((\Add0~54\) # (GND)))
-- \Add0~56\ = CARRY((!\Add0~54\) # (!led_timer(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(27),
	datad => VCC,
	cin => \Add0~54\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X14_Y5_N16
\Add0~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (!\led_timer[28]~1_combout\ & \Add0~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_timer[28]~1_combout\,
	datad => \Add0~55_combout\,
	combout => \Add0~86_combout\);

-- Location: FF_X14_Y5_N17
\led_timer[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~86_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \led_timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(27));

-- Location: LCCOMB_X15_Y5_N24
\Add0~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (led_timer(28) & (\Add0~56\ $ (GND))) # (!led_timer(28) & (!\Add0~56\ & VCC))
-- \Add0~58\ = CARRY((led_timer(28) & !\Add0~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(28),
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X15_Y8_N0
\led_timer[28]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_timer[28]~5_combout\ = (\led_timer[28]~1_combout\ & (\led_timer~0_combout\ & (led_timer(28)))) # (!\led_timer[28]~1_combout\ & (((\Add0~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer~0_combout\,
	datab => \led_timer[28]~1_combout\,
	datac => led_timer(28),
	datad => \Add0~57_combout\,
	combout => \led_timer[28]~5_combout\);

-- Location: FF_X15_Y8_N1
\led_timer[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_timer[28]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(28));

-- Location: LCCOMB_X15_Y8_N10
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!led_timer(30) & (!led_timer(29) & !led_timer(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => led_timer(30),
	datac => led_timer(29),
	datad => led_timer(28),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X16_Y5_N26
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((!led_timer(22)) # (!led_timer(20))) # (!led_timer(23))) # (!led_timer(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(21),
	datab => led_timer(23),
	datac => led_timer(20),
	datad => led_timer(22),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X16_Y5_N22
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!led_timer(26) & (!led_timer(25) & !led_timer(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => led_timer(26),
	datac => led_timer(25),
	datad => led_timer(24),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y5_N10
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!led_timer(17) & (!led_timer(18) & (!led_timer(16) & !led_timer(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(17),
	datab => led_timer(18),
	datac => led_timer(16),
	datad => led_timer(19),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y6_N24
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!led_timer(11) & (!led_timer(10) & ((!led_timer(7)) # (!led_timer(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(8),
	datab => led_timer(11),
	datac => led_timer(7),
	datad => led_timer(10),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y6_N16
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!led_timer(13) & (((!led_timer(9) & \LessThan0~2_combout\)) # (!led_timer(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(12),
	datab => led_timer(13),
	datac => led_timer(9),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y5_N28
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\ & (((\LessThan0~3_combout\) # (!led_timer(15))) # (!led_timer(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(14),
	datab => led_timer(15),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X16_Y5_N16
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((\LessThan0~0_combout\ & ((\LessThan0~5_combout\) # (\LessThan0~4_combout\)))) # (!led_timer(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => led_timer(27),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X16_Y5_N12
\led_timer[28]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_timer[28]~1_combout\ = ((!led_timer(31) & ((!\LessThan0~6_combout\) # (!\LessThan0~7_combout\)))) # (!\led_active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(31),
	datab => \led_active~q\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~6_combout\,
	combout => \led_timer[28]~1_combout\);

-- Location: LCCOMB_X15_Y5_N26
\Add0~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (led_timer(29) & (!\Add0~58\)) # (!led_timer(29) & ((\Add0~58\) # (GND)))
-- \Add0~60\ = CARRY((!\Add0~58\) # (!led_timer(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(29),
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~59_combout\,
	cout => \Add0~60\);

-- Location: LCCOMB_X15_Y8_N22
\led_timer[29]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_timer[29]~4_combout\ = (\led_timer[28]~1_combout\ & (\led_timer~0_combout\ & (led_timer(29)))) # (!\led_timer[28]~1_combout\ & (((\Add0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_timer~0_combout\,
	datab => \led_timer[28]~1_combout\,
	datac => led_timer(29),
	datad => \Add0~59_combout\,
	combout => \led_timer[29]~4_combout\);

-- Location: FF_X15_Y8_N23
\led_timer[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_timer[29]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(29));

-- Location: LCCOMB_X15_Y5_N28
\Add0~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (led_timer(30) & (\Add0~60\ $ (GND))) # (!led_timer(30) & (!\Add0~60\ & VCC))
-- \Add0~62\ = CARRY((led_timer(30) & !\Add0~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_timer(30),
	datad => VCC,
	cin => \Add0~60\,
	combout => \Add0~61_combout\,
	cout => \Add0~62\);

-- Location: LCCOMB_X15_Y8_N4
\led_timer[30]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_timer[30]~3_combout\ = (\led_timer[28]~1_combout\ & (((led_timer(30) & \led_timer~0_combout\)))) # (!\led_timer[28]~1_combout\ & (\Add0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~61_combout\,
	datab => \led_timer[28]~1_combout\,
	datac => led_timer(30),
	datad => \led_timer~0_combout\,
	combout => \led_timer[30]~3_combout\);

-- Location: FF_X15_Y8_N5
\led_timer[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_timer[30]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(30));

-- Location: LCCOMB_X15_Y5_N30
\Add0~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = \Add0~62\ $ (led_timer(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => led_timer(31),
	cin => \Add0~62\,
	combout => \Add0~63_combout\);

-- Location: LCCOMB_X14_Y5_N8
\Add0~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (\led_timer[28]~1_combout\ & (\Add0~0_combout\)) # (!\led_timer[28]~1_combout\ & ((\Add0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Add0~63_combout\,
	datad => \led_timer[28]~1_combout\,
	combout => \Add0~65_combout\);

-- Location: FF_X14_Y5_N9
\led_timer[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~65_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(31));

-- Location: LCCOMB_X16_Y5_N14
\internal_led_indicator[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \internal_led_indicator[0]~6_combout\ = (led_timer(31)) # (((\LessThan0~7_combout\ & \LessThan0~6_combout\)) # (!\led_active~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(31),
	datab => \led_active~q\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~6_combout\,
	combout => \internal_led_indicator[0]~6_combout\);

-- Location: LCCOMB_X17_Y5_N12
\internal_led_indicator~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \internal_led_indicator~8_combout\ = (!\set_time[1]~input_o\ & (\set_time[0]~input_o\ & (!\set_time[2]~input_o\ & \internal_led_indicator[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_time[1]~input_o\,
	datab => \set_time[0]~input_o\,
	datac => \set_time[2]~input_o\,
	datad => \internal_led_indicator[0]~6_combout\,
	combout => \internal_led_indicator~8_combout\);

-- Location: LCCOMB_X17_Y5_N14
\internal_led_indicator[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \internal_led_indicator[0]~9_combout\ = ((\set_time[1]~input_o\ & (!\set_time[0]~input_o\ & !\set_time[2]~input_o\)) # (!\set_time[1]~input_o\ & (\set_time[0]~input_o\ $ (\set_time[2]~input_o\)))) # (!\internal_led_indicator[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_time[1]~input_o\,
	datab => \set_time[0]~input_o\,
	datac => \set_time[2]~input_o\,
	datad => \internal_led_indicator[0]~6_combout\,
	combout => \internal_led_indicator[0]~9_combout\);

-- Location: FF_X17_Y5_N13
\internal_led_indicator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_led_indicator~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \internal_led_indicator[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_led_indicator(0));

-- Location: LCCOMB_X17_Y5_N26
\internal_led_indicator~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \internal_led_indicator~10_combout\ = (\set_time[1]~input_o\ & (!\set_time[0]~input_o\ & (!\set_time[2]~input_o\ & \internal_led_indicator[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_time[1]~input_o\,
	datab => \set_time[0]~input_o\,
	datac => \set_time[2]~input_o\,
	datad => \internal_led_indicator[0]~6_combout\,
	combout => \internal_led_indicator~10_combout\);

-- Location: FF_X17_Y5_N27
\internal_led_indicator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_led_indicator~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \internal_led_indicator[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_led_indicator(1));

-- Location: LCCOMB_X17_Y5_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\set_time[1]~input_o\ & (!\set_time[2]~input_o\ & \set_time[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_time[1]~input_o\,
	datac => \set_time[2]~input_o\,
	datad => \set_time[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y5_N24
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\set_time[1]~input_o\ & (!\set_time[2]~input_o\ & !\set_time[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_time[1]~input_o\,
	datac => \set_time[2]~input_o\,
	datad => \set_time[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X17_Y5_N4
\internal_led_indicator~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \internal_led_indicator~7_combout\ = (!\Equal0~0_combout\ & (!\Equal1~0_combout\ & \internal_led_indicator[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \internal_led_indicator[0]~6_combout\,
	combout => \internal_led_indicator~7_combout\);

-- Location: FF_X17_Y5_N5
\internal_led_indicator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_led_indicator~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \internal_led_indicator[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_led_indicator(2));

-- Location: LCCOMB_X19_Y10_N0
\count[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~32_combout\ = count(0) $ (VCC)
-- \count[0]~33\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~32_combout\,
	cout => \count[0]~33\);

-- Location: LCCOMB_X17_Y5_N8
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\set_time[1]~input_o\ & (\set_time[2]~input_o\ & !\set_time[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_time[1]~input_o\,
	datac => \set_time[2]~input_o\,
	datad => \set_time[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X26_Y0_N8
\time_input[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_input(0),
	o => \time_input[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\time_input[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_input(1),
	o => \time_input[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\time_input[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_input(2),
	o => \time_input[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\time_input[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_input(3),
	o => \time_input[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\time_input[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_input(4),
	o => \time_input[4]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\time_input[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_input(5),
	o => \time_input[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\time_input[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_input(6),
	o => \time_input[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\time_input[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_input(7),
	o => \time_input[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\time_base_sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_base_sel(1),
	o => \time_base_sel[1]~input_o\);

-- Location: LCCOMB_X19_Y8_N8
\HIGH2_MULT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HIGH2_MULT[1]~feeder_combout\ = \time_base_sel[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \time_base_sel[1]~input_o\,
	combout => \HIGH2_MULT[1]~feeder_combout\);

-- Location: FF_X19_Y8_N9
\HIGH2_MULT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HIGH2_MULT[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HIGH2_MULT(1));

-- Location: IOIBUF_X28_Y0_N15
\time_base_sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_base_sel(0),
	o => \time_base_sel[0]~input_o\);

-- Location: FF_X19_Y8_N3
\HIGH2_MULT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \time_base_sel[0]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HIGH2_MULT(0));

-- Location: LCCOMB_X19_Y8_N4
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = HIGH2_MULT(1) $ (HIGH2_MULT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HIGH2_MULT(1),
	datad => HIGH2_MULT(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X19_Y8_N14
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!HIGH2_MULT(1) & HIGH2_MULT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HIGH2_MULT(1),
	datad => HIGH2_MULT(0),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X19_Y8_N20
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (HIGH2_MULT(1) & !HIGH2_MULT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HIGH2_MULT(1),
	datad => HIGH2_MULT(0),
	combout => \Mux9~1_combout\);

-- Location: DSPMULT_X18_Y8_N0
\Mult2|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \rst~input_o\,
	ena => \Equal2~0_combout\,
	dataa => \Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y8_N2
\Mult2|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X17_Y9_N14
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \Mult2|auto_generated|mac_out2~dataout\ $ (VCC)
-- \Add4~1\ = CARRY(\Mult2|auto_generated|mac_out2~dataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X17_Y9_N16
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT1\ & (\Add4~1\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT1\ & (!\Add4~1\))
-- \Add4~3\ = CARRY((!\Mult2|auto_generated|mac_out2~DATAOUT1\ & !\Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X17_Y9_N18
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT2\ & ((GND) # (!\Add4~3\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT2\ & (\Add4~3\ $ (GND)))
-- \Add4~5\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT2\) # (!\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X17_Y9_N20
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT3\ & (\Add4~5\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT3\ & (!\Add4~5\))
-- \Add4~7\ = CARRY((!\Mult2|auto_generated|mac_out2~DATAOUT3\ & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X17_Y9_N22
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT4\ & ((GND) # (!\Add4~7\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT4\ & (\Add4~7\ $ (GND)))
-- \Add4~9\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT4\) # (!\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X17_Y9_N24
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT5\ & (\Add4~9\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT5\ & (!\Add4~9\))
-- \Add4~11\ = CARRY((!\Mult2|auto_generated|mac_out2~DATAOUT5\ & !\Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X17_Y9_N26
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT6\ & ((GND) # (!\Add4~11\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT6\ & (\Add4~11\ $ (GND)))
-- \Add4~13\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT6\) # (!\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X17_Y9_N28
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT7\ & (\Add4~13\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT7\ & (!\Add4~13\))
-- \Add4~15\ = CARRY((!\Mult2|auto_generated|mac_out2~DATAOUT7\ & !\Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X17_Y9_N30
\Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT8\ & ((GND) # (!\Add4~15\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT8\ & (\Add4~15\ $ (GND)))
-- \Add4~17\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT8\) # (!\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X17_Y8_N0
\Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT9\ & (\Add4~17\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT9\ & (!\Add4~17\))
-- \Add4~19\ = CARRY((!\Mult2|auto_generated|mac_out2~DATAOUT9\ & !\Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X17_Y8_N2
\Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT10\ & ((GND) # (!\Add4~19\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT10\ & (\Add4~19\ $ (GND)))
-- \Add4~21\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT10\) # (!\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X17_Y8_N4
\Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT11\ & (\Add4~21\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT11\ & (!\Add4~21\))
-- \Add4~23\ = CARRY((!\Mult2|auto_generated|mac_out2~DATAOUT11\ & !\Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X17_Y8_N6
\Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT12\ & ((GND) # (!\Add4~23\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT12\ & (\Add4~23\ $ (GND)))
-- \Add4~25\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT12\) # (!\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X17_Y8_N8
\Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT13\ & (\Add4~25\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT13\ & (!\Add4~25\))
-- \Add4~27\ = CARRY((!\Mult2|auto_generated|mac_out2~DATAOUT13\ & !\Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X17_Y8_N10
\Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT14\ & ((GND) # (!\Add4~27\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT14\ & (\Add4~27\ $ (GND)))
-- \Add4~29\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT14\) # (!\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X17_Y8_N12
\Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT15\ & (\Add4~29\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT15\ & (!\Add4~29\))
-- \Add4~31\ = CARRY((!\Mult2|auto_generated|mac_out2~DATAOUT15\ & !\Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X17_Y8_N14
\Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT16\ & ((GND) # (!\Add4~31\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT16\ & (\Add4~31\ $ (GND)))
-- \Add4~33\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT16\) # (!\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X17_Y8_N16
\Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = \Add4~33\ $ (!\Mult2|auto_generated|mac_out2~DATAOUT16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult2|auto_generated|mac_out2~DATAOUT16\,
	cin => \Add4~33\,
	combout => \Add4~34_combout\);

-- Location: LCCOMB_X19_Y9_N28
\count[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[30]~92_combout\ = (count(30) & (\count[29]~91\ $ (GND))) # (!count(30) & (!\count[29]~91\ & VCC))
-- \count[30]~93\ = CARRY((count(30) & !\count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \count[29]~91\,
	combout => \count[30]~92_combout\,
	cout => \count[30]~93\);

-- Location: LCCOMB_X19_Y9_N30
\count[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[31]~94_combout\ = count(31) $ (\count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \count[30]~93\,
	combout => \count[31]~94_combout\);

-- Location: IOIBUF_X9_Y0_N29
\button~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: LCCOMB_X19_Y7_N22
\button_last~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_last~feeder_combout\ = \button~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button~input_o\,
	combout => \button_last~feeder_combout\);

-- Location: FF_X19_Y7_N23
button_last : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button_last~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_last~q\);

-- Location: LCCOMB_X17_Y6_N18
\times_set_flag[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \times_set_flag[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \times_set_flag[0]~feeder_combout\);

-- Location: FF_X17_Y6_N19
\times_set_flag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times_set_flag[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times_set_flag(0));

-- Location: LCCOMB_X17_Y6_N24
\times_set_flag[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \times_set_flag[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \times_set_flag[1]~feeder_combout\);

-- Location: FF_X17_Y6_N25
\times_set_flag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times_set_flag[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times_set_flag(1));

-- Location: LCCOMB_X17_Y7_N2
\times_set_flag[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \times_set_flag[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \times_set_flag[2]~feeder_combout\);

-- Location: FF_X17_Y7_N3
\times_set_flag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times_set_flag[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times_set_flag(2));

-- Location: LCCOMB_X17_Y7_N0
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (times_set_flag(0) & (times_set_flag(1) & times_set_flag(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => times_set_flag(0),
	datac => times_set_flag(1),
	datad => times_set_flag(2),
	combout => \Equal3~0_combout\);

-- Location: FF_X17_Y7_N1
all_times_set : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \all_times_set~q\);

-- Location: LCCOMB_X19_Y7_N14
\count[2]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~99_combout\ = (\state.IDLE~q\) # ((!\button_last~q\ & (\button~input_o\ & \all_times_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_last~q\,
	datab => \button~input_o\,
	datac => \all_times_set~q\,
	datad => \state.IDLE~q\,
	combout => \count[2]~99_combout\);

-- Location: FF_X19_Y9_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[31]~94_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X21_Y9_N10
\LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~7_combout\ = (count(31) & (((!count(29)) # (!count(30))) # (!\Add4~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datab => count(30),
	datac => count(31),
	datad => count(29),
	combout => \LessThan3~7_combout\);

-- Location: LCCOMB_X20_Y7_N12
\LessThan3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (((!count(28)) # (!count(26))) # (!count(25))) # (!count(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datab => count(25),
	datac => count(26),
	datad => count(28),
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X20_Y7_N30
\LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (((\LessThan3~4_combout\) # (!count(24))) # (!count(22))) # (!count(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(22),
	datac => count(24),
	datad => \LessThan3~4_combout\,
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X20_Y8_N22
\LessThan3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~8_combout\ = (count(30) & (count(31) & (count(29) & \Add4~34_combout\))) # (!count(30) & (!count(31) & (!count(29) & !\Add4~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => count(31),
	datac => count(29),
	datad => \Add4~34_combout\,
	combout => \LessThan3~8_combout\);

-- Location: LCCOMB_X20_Y5_N14
\LessThan3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = (((!count(18)) # (!count(19))) # (!count(20))) # (!count(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(20),
	datac => count(19),
	datad => count(18),
	combout => \LessThan3~6_combout\);

-- Location: LCCOMB_X19_Y8_N26
\LessThan3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~12_combout\ = (count(21) & (((count(20) & count(19))) # (!count(17)))) # (!count(21) & (!count(17) & ((count(20)) # (count(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(20),
	datac => count(19),
	datad => count(17),
	combout => \LessThan3~12_combout\);

-- Location: LCCOMB_X19_Y8_N10
\LessThan3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~34_combout\ = (count(16) & (!count(15) & (\Add4~30_combout\ & \Add4~32_combout\))) # (!count(16) & ((\Add4~32_combout\) # ((!count(15) & \Add4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => \Add4~30_combout\,
	datac => count(16),
	datad => \Add4~32_combout\,
	combout => \LessThan3~34_combout\);

-- Location: LCCOMB_X19_Y8_N16
\LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~13_combout\ = (\LessThan3~34_combout\ & ((count(18) & (count(17) & \LessThan3~12_combout\)) # (!count(18) & (!count(17) & !\LessThan3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(17),
	datac => \LessThan3~12_combout\,
	datad => \LessThan3~34_combout\,
	combout => \LessThan3~13_combout\);

-- Location: LCCOMB_X19_Y8_N22
\LessThan3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~14_combout\ = (count(17) & (\Add4~34_combout\ & ((\LessThan3~6_combout\) # (\LessThan3~13_combout\)))) # (!count(17) & (((\Add4~34_combout\) # (\LessThan3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~6_combout\,
	datab => count(17),
	datac => \Add4~34_combout\,
	datad => \LessThan3~13_combout\,
	combout => \LessThan3~14_combout\);

-- Location: LCCOMB_X17_Y8_N22
\LessThan3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~28_combout\ = (count(18) & (count(19) & (count(17) & \Add4~34_combout\))) # (!count(18) & (!count(19) & (!count(17) & !\Add4~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(19),
	datac => count(17),
	datad => \Add4~34_combout\,
	combout => \LessThan3~28_combout\);

-- Location: LCCOMB_X17_Y8_N28
\LessThan3~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~29_combout\ = (count(21) & (count(20) & \Add4~34_combout\)) # (!count(21) & (!count(20) & !\Add4~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datac => count(20),
	datad => \Add4~34_combout\,
	combout => \LessThan3~29_combout\);

-- Location: LCCOMB_X17_Y8_N30
\LessThan3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~30_combout\ = (\LessThan3~28_combout\ & (\LessThan3~29_combout\ & (count(16) $ (!\Add4~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~28_combout\,
	datab => count(16),
	datac => \Add4~32_combout\,
	datad => \LessThan3~29_combout\,
	combout => \LessThan3~30_combout\);

-- Location: LCCOMB_X21_Y9_N0
\LessThan3~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~31_combout\ = (\LessThan3~30_combout\ & (count(15) $ (!\Add4~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datac => \LessThan3~30_combout\,
	datad => \Add4~30_combout\,
	combout => \LessThan3~31_combout\);

-- Location: LCCOMB_X19_Y8_N18
\LessThan3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~10_combout\ = (count(26) & (count(27) & (\Add4~34_combout\ & count(25)))) # (!count(26) & (!count(27) & (!\Add4~34_combout\ & !count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(27),
	datac => \Add4~34_combout\,
	datad => count(25),
	combout => \LessThan3~10_combout\);

-- Location: LCCOMB_X19_Y8_N28
\LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~9_combout\ = (\Add4~34_combout\ & (count(23) & (count(24) & count(22)))) # (!\Add4~34_combout\ & (!count(23) & (!count(24) & !count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datab => count(23),
	datac => count(24),
	datad => count(22),
	combout => \LessThan3~9_combout\);

-- Location: LCCOMB_X19_Y8_N24
\LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~11_combout\ = (\LessThan3~10_combout\ & (\LessThan3~9_combout\ & (count(28) $ (!\Add4~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datab => \LessThan3~10_combout\,
	datac => \Add4~34_combout\,
	datad => \LessThan3~9_combout\,
	combout => \LessThan3~11_combout\);

-- Location: LCCOMB_X16_Y9_N12
\LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~17_combout\ = (count(11) & (!count(10) & (\Add4~20_combout\ & \Add4~22_combout\))) # (!count(11) & ((\Add4~22_combout\) # ((!count(10) & \Add4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(10),
	datac => \Add4~20_combout\,
	datad => \Add4~22_combout\,
	combout => \LessThan3~17_combout\);

-- Location: LCCOMB_X16_Y9_N26
\LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~18_combout\ = (count(12) & (\Add4~24_combout\ & \LessThan3~17_combout\)) # (!count(12) & ((\Add4~24_combout\) # (\LessThan3~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datac => \Add4~24_combout\,
	datad => \LessThan3~17_combout\,
	combout => \LessThan3~18_combout\);

-- Location: LCCOMB_X16_Y9_N8
\LessThan3~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~19_combout\ = (count(13) & (\LessThan3~18_combout\ & \Add4~26_combout\)) # (!count(13) & ((\LessThan3~18_combout\) # (\Add4~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datac => \LessThan3~18_combout\,
	datad => \Add4~26_combout\,
	combout => \LessThan3~19_combout\);

-- Location: LCCOMB_X16_Y9_N22
\LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~16_combout\ = (count(13) & ((count(12) $ (\Add4~24_combout\)) # (!\Add4~26_combout\))) # (!count(13) & ((\Add4~26_combout\) # (count(12) $ (\Add4~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(12),
	datac => \Add4~24_combout\,
	datad => \Add4~26_combout\,
	combout => \LessThan3~16_combout\);

-- Location: LCCOMB_X16_Y9_N20
\LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~15_combout\ = (count(11) & ((count(10) $ (\Add4~20_combout\)) # (!\Add4~22_combout\))) # (!count(11) & ((\Add4~22_combout\) # (count(10) $ (\Add4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(10),
	datac => \Add4~20_combout\,
	datad => \Add4~22_combout\,
	combout => \LessThan3~15_combout\);

-- Location: LCCOMB_X17_Y9_N8
\LessThan3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~20_combout\ = (count(1) & (!count(0) & (\Add4~0_combout\ & \Add4~2_combout\))) # (!count(1) & ((\Add4~2_combout\) # ((!count(0) & \Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datac => \Add4~0_combout\,
	datad => \Add4~2_combout\,
	combout => \LessThan3~20_combout\);

-- Location: LCCOMB_X17_Y9_N2
\LessThan3~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~21_combout\ = (count(2) & (\LessThan3~20_combout\ & \Add4~4_combout\)) # (!count(2) & ((\LessThan3~20_combout\) # (\Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datac => \LessThan3~20_combout\,
	datad => \Add4~4_combout\,
	combout => \LessThan3~21_combout\);

-- Location: LCCOMB_X17_Y9_N12
\LessThan3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~22_combout\ = (\Add4~6_combout\ & ((\LessThan3~21_combout\) # (!count(3)))) # (!\Add4~6_combout\ & (!count(3) & \LessThan3~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~6_combout\,
	datac => count(3),
	datad => \LessThan3~21_combout\,
	combout => \LessThan3~22_combout\);

-- Location: LCCOMB_X17_Y9_N0
\LessThan3~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~35_combout\ = (count(4) & (\Add4~8_combout\ & \LessThan3~22_combout\)) # (!count(4) & ((\Add4~8_combout\) # (\LessThan3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datac => \Add4~8_combout\,
	datad => \LessThan3~22_combout\,
	combout => \LessThan3~35_combout\);

-- Location: LCCOMB_X17_Y9_N10
\LessThan3~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~23_combout\ = (count(5) & (\Add4~10_combout\ & \LessThan3~35_combout\)) # (!count(5) & ((\Add4~10_combout\) # (\LessThan3~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datac => \Add4~10_combout\,
	datad => \LessThan3~35_combout\,
	combout => \LessThan3~23_combout\);

-- Location: LCCOMB_X17_Y9_N4
\LessThan3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~24_combout\ = (count(6) & (\Add4~12_combout\ & \LessThan3~23_combout\)) # (!count(6) & ((\Add4~12_combout\) # (\LessThan3~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datac => \Add4~12_combout\,
	datad => \LessThan3~23_combout\,
	combout => \LessThan3~24_combout\);

-- Location: LCCOMB_X17_Y9_N6
\LessThan3~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~25_combout\ = (count(7) & (\LessThan3~24_combout\ & \Add4~14_combout\)) # (!count(7) & ((\LessThan3~24_combout\) # (\Add4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datac => \LessThan3~24_combout\,
	datad => \Add4~14_combout\,
	combout => \LessThan3~25_combout\);

-- Location: LCCOMB_X16_Y9_N10
\LessThan3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~26_combout\ = (count(8) & (\Add4~16_combout\ & \LessThan3~25_combout\)) # (!count(8) & ((\Add4~16_combout\) # (\LessThan3~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datac => \Add4~16_combout\,
	datad => \LessThan3~25_combout\,
	combout => \LessThan3~26_combout\);

-- Location: LCCOMB_X16_Y9_N28
\LessThan3~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~27_combout\ = (count(9) & (\Add4~18_combout\ & \LessThan3~26_combout\)) # (!count(9) & ((\Add4~18_combout\) # (\LessThan3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datac => \Add4~18_combout\,
	datad => \LessThan3~26_combout\,
	combout => \LessThan3~27_combout\);

-- Location: LCCOMB_X16_Y9_N18
\LessThan3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~36_combout\ = (\LessThan3~19_combout\) # ((!\LessThan3~16_combout\ & (!\LessThan3~15_combout\ & \LessThan3~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~16_combout\,
	datab => \LessThan3~15_combout\,
	datac => \LessThan3~19_combout\,
	datad => \LessThan3~27_combout\,
	combout => \LessThan3~36_combout\);

-- Location: LCCOMB_X16_Y9_N4
\LessThan3~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~37_combout\ = (\Add4~28_combout\ & ((\LessThan3~36_combout\) # ((!count(14) & !\LessThan3~19_combout\)))) # (!\Add4~28_combout\ & (!count(14) & ((\LessThan3~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~28_combout\,
	datab => count(14),
	datac => \LessThan3~19_combout\,
	datad => \LessThan3~36_combout\,
	combout => \LessThan3~37_combout\);

-- Location: LCCOMB_X20_Y9_N28
\LessThan3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~32_combout\ = (\LessThan3~11_combout\ & ((\LessThan3~14_combout\) # ((\LessThan3~31_combout\ & \LessThan3~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~14_combout\,
	datab => \LessThan3~31_combout\,
	datac => \LessThan3~11_combout\,
	datad => \LessThan3~37_combout\,
	combout => \LessThan3~32_combout\);

-- Location: LCCOMB_X20_Y9_N2
\LessThan3~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~33_combout\ = (\LessThan3~8_combout\ & ((\LessThan3~32_combout\) # ((\LessThan3~5_combout\ & \Add4~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~5_combout\,
	datab => \Add4~34_combout\,
	datac => \LessThan3~8_combout\,
	datad => \LessThan3~32_combout\,
	combout => \LessThan3~33_combout\);

-- Location: LCCOMB_X20_Y9_N24
\Selector36~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~3_combout\ = (\state.HIGH2~q\ & (!\LessThan3~7_combout\ & !\LessThan3~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.HIGH2~q\,
	datac => \LessThan3~7_combout\,
	datad => \LessThan3~33_combout\,
	combout => \Selector36~3_combout\);

-- Location: LCCOMB_X19_Y7_N16
\Selector36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (!\button_last~q\ & (\button~input_o\ & (\all_times_set~q\ & !\state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_last~q\,
	datab => \button~input_o\,
	datac => \all_times_set~q\,
	datad => \state.IDLE~q\,
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X17_Y6_N14
\HIGH1_MULT[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HIGH1_MULT[0]~feeder_combout\ = \time_base_sel[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \time_base_sel[0]~input_o\,
	combout => \HIGH1_MULT[0]~feeder_combout\);

-- Location: FF_X17_Y6_N15
\HIGH1_MULT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HIGH1_MULT[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HIGH1_MULT(0));

-- Location: FF_X17_Y6_N17
\HIGH1_MULT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \time_base_sel[1]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HIGH1_MULT(1));

-- Location: LCCOMB_X17_Y6_N12
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = HIGH1_MULT(0) $ (HIGH1_MULT(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HIGH1_MULT(0),
	datad => HIGH1_MULT(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X17_Y6_N6
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (HIGH1_MULT(0) & !HIGH1_MULT(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HIGH1_MULT(0),
	datad => HIGH1_MULT(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X17_Y6_N20
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!HIGH1_MULT(0) & HIGH1_MULT(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HIGH1_MULT(0),
	datad => HIGH1_MULT(1),
	combout => \Mux1~1_combout\);

-- Location: DSPMULT_X18_Y6_N0
\Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \rst~input_o\,
	ena => \Equal0~0_combout\,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y6_N2
\Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y6_N14
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \Mult0|auto_generated|mac_out2~dataout\ $ (VCC)
-- \Add1~1\ = CARRY(\Mult0|auto_generated|mac_out2~dataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X21_Y6_N16
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT1\ & (\Add1~1\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\Add1~1\))
-- \Add1~3\ = CARRY((!\Mult0|auto_generated|mac_out2~DATAOUT1\ & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X21_Y6_N18
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT2\ & ((GND) # (!\Add1~3\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT2\ & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X21_Y6_N20
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT3\ & (\Add1~5\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\Add1~5\))
-- \Add1~7\ = CARRY((!\Mult0|auto_generated|mac_out2~DATAOUT3\ & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X21_Y6_N22
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT4\ & ((GND) # (!\Add1~7\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X21_Y6_N24
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT5\ & (\Add1~9\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((!\Mult0|auto_generated|mac_out2~DATAOUT5\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X21_Y6_N26
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT6\ & ((GND) # (!\Add1~11\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT6\ & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X21_Y6_N28
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT7\ & (\Add1~13\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\Add1~13\))
-- \Add1~15\ = CARRY((!\Mult0|auto_generated|mac_out2~DATAOUT7\ & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X21_Y6_N30
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT8\ & ((GND) # (!\Add1~15\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT8\ & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT8\) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X21_Y5_N0
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT9\ & (\Add1~17\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\Add1~17\))
-- \Add1~19\ = CARRY((!\Mult0|auto_generated|mac_out2~DATAOUT9\ & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X21_Y5_N2
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT10\ & ((GND) # (!\Add1~19\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT10\ & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT10\) # (!\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X21_Y5_N4
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT11\ & (\Add1~21\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\Add1~21\))
-- \Add1~23\ = CARRY((!\Mult0|auto_generated|mac_out2~DATAOUT11\ & !\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X21_Y5_N6
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT12\ & ((GND) # (!\Add1~23\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT12\ & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT12\) # (!\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X21_Y5_N8
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT13\ & (\Add1~25\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\Add1~25\))
-- \Add1~27\ = CARRY((!\Mult0|auto_generated|mac_out2~DATAOUT13\ & !\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X21_Y5_N10
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT14\ & ((GND) # (!\Add1~27\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT14\ & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT14\) # (!\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X21_Y5_N12
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT15\ & (\Add1~29\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\Add1~29\))
-- \Add1~31\ = CARRY((!\Mult0|auto_generated|mac_out2~DATAOUT15\ & !\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X21_Y5_N14
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT16\ & ((GND) # (!\Add1~31\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT16\ & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT16\) # (!\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X21_Y5_N16
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = \Mult0|auto_generated|mac_out2~DATAOUT16\ $ (!\Add1~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT16\,
	cin => \Add1~33\,
	combout => \Add1~34_combout\);

-- Location: LCCOMB_X20_Y8_N0
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (count(31) & (((!\Add1~34_combout\) # (!count(29))) # (!count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => count(31),
	datac => count(29),
	datad => \Add1~34_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X21_Y9_N8
\LessThan1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~27_combout\ = (count(30) & (count(29) & (count(31) & \Add1~34_combout\))) # (!count(30) & (!count(29) & (!count(31) & !\Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => count(29),
	datac => count(31),
	datad => \Add1~34_combout\,
	combout => \LessThan1~27_combout\);

-- Location: LCCOMB_X20_Y5_N16
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (count(23) & (count(24) & (count(22) & \Add1~34_combout\))) # (!count(23) & (!count(24) & (!count(22) & !\Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(24),
	datac => count(22),
	datad => \Add1~34_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X21_Y5_N18
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (count(20) & (count(21) & (count(18) & count(19)))) # (!count(20) & (!count(21) & (!count(18) & !count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(21),
	datac => count(18),
	datad => count(19),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X21_Y5_N28
\LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!count(16) & (\LessThan1~5_combout\ & (count(21) $ (!count(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(21),
	datac => count(17),
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X21_Y5_N26
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (\LessThan1~6_combout\ & (\Add1~32_combout\ & (count(21) $ (!\Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => \LessThan1~6_combout\,
	datac => \Add1~32_combout\,
	datad => \Add1~34_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X21_Y5_N20
\LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (\LessThan1~7_combout\) # ((\Add1~34_combout\ & ((\LessThan3~6_combout\) # (!count(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~6_combout\,
	datab => count(17),
	datac => \LessThan1~7_combout\,
	datad => \Add1~34_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X21_Y9_N20
\LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (count(26) & (count(25) & (count(27) & \Add1~34_combout\))) # (!count(26) & (!count(25) & (!count(27) & !\Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(25),
	datac => count(27),
	datad => \Add1~34_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X21_Y5_N30
\LessThan1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~23_combout\ = (count(19) & (count(18) & (count(17) & \Add1~34_combout\))) # (!count(19) & (!count(18) & (!count(17) & !\Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(18),
	datac => count(17),
	datad => \Add1~34_combout\,
	combout => \LessThan1~23_combout\);

-- Location: LCCOMB_X21_Y5_N24
\LessThan1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~24_combout\ = (count(21) & (count(20) & \Add1~34_combout\)) # (!count(21) & (!count(20) & !\Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datac => count(20),
	datad => \Add1~34_combout\,
	combout => \LessThan1~24_combout\);

-- Location: LCCOMB_X21_Y5_N22
\LessThan1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~25_combout\ = (\LessThan1~23_combout\ & (\LessThan1~24_combout\ & (count(16) $ (!\Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => \Add1~32_combout\,
	datac => \LessThan1~23_combout\,
	datad => \LessThan1~24_combout\,
	combout => \LessThan1~25_combout\);

-- Location: LCCOMB_X21_Y9_N26
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_combout\ = (count(12) & (!count(11) & (\Add1~24_combout\ & \Add1~22_combout\))) # (!count(12) & ((\Add1~24_combout\) # ((!count(11) & \Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(11),
	datac => \Add1~24_combout\,
	datad => \Add1~22_combout\,
	combout => \LessThan1~13_combout\);

-- Location: LCCOMB_X21_Y9_N22
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = (count(10)) # (count(12) $ (\Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(10),
	datad => \Add1~24_combout\,
	combout => \LessThan1~11_combout\);

-- Location: LCCOMB_X21_Y9_N16
\LessThan1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = (!\LessThan1~11_combout\ & (\Add1~20_combout\ & (count(11) $ (!\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~11_combout\,
	datab => count(11),
	datac => \Add1~20_combout\,
	datad => \Add1~22_combout\,
	combout => \LessThan1~12_combout\);

-- Location: LCCOMB_X21_Y9_N4
\LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (count(13) & (\Add1~26_combout\ & ((\LessThan1~13_combout\) # (\LessThan1~12_combout\)))) # (!count(13) & ((\Add1~26_combout\) # ((\LessThan1~13_combout\) # (\LessThan1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => \Add1~26_combout\,
	datac => \LessThan1~13_combout\,
	datad => \LessThan1~12_combout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X21_Y9_N12
\LessThan1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (count(12) & ((count(13) $ (\Add1~26_combout\)) # (!\Add1~24_combout\))) # (!count(12) & ((\Add1~24_combout\) # (count(13) $ (\Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(13),
	datac => \Add1~26_combout\,
	datad => \Add1~24_combout\,
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X21_Y9_N30
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\Add1~22_combout\ & ((count(10) $ (\Add1~20_combout\)) # (!count(11)))) # (!\Add1~22_combout\ & ((count(11)) # (count(10) $ (\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => count(10),
	datac => \Add1~20_combout\,
	datad => count(11),
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X21_Y6_N8
\LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~15_combout\ = (count(1) & (!count(0) & (\Add1~0_combout\ & \Add1~2_combout\))) # (!count(1) & ((\Add1~2_combout\) # ((!count(0) & \Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => \Add1~0_combout\,
	datad => \Add1~2_combout\,
	combout => \LessThan1~15_combout\);

-- Location: LCCOMB_X21_Y6_N6
\LessThan1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~16_combout\ = (count(2) & (\LessThan1~15_combout\ & \Add1~4_combout\)) # (!count(2) & ((\LessThan1~15_combout\) # (\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datac => \LessThan1~15_combout\,
	datad => \Add1~4_combout\,
	combout => \LessThan1~16_combout\);

-- Location: LCCOMB_X21_Y6_N12
\LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~17_combout\ = (count(3) & (\Add1~6_combout\ & \LessThan1~16_combout\)) # (!count(3) & ((\Add1~6_combout\) # (\LessThan1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datac => \Add1~6_combout\,
	datad => \LessThan1~16_combout\,
	combout => \LessThan1~17_combout\);

-- Location: LCCOMB_X21_Y6_N4
\LessThan1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~28_combout\ = (count(4) & (\Add1~8_combout\ & \LessThan1~17_combout\)) # (!count(4) & ((\Add1~8_combout\) # (\LessThan1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datac => \Add1~8_combout\,
	datad => \LessThan1~17_combout\,
	combout => \LessThan1~28_combout\);

-- Location: LCCOMB_X21_Y6_N10
\LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = (\Add1~10_combout\ & ((\LessThan1~28_combout\) # (!count(5)))) # (!\Add1~10_combout\ & (\LessThan1~28_combout\ & !count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~10_combout\,
	datac => \LessThan1~28_combout\,
	datad => count(5),
	combout => \LessThan1~18_combout\);

-- Location: LCCOMB_X21_Y6_N0
\LessThan1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~19_combout\ = (count(6) & (\Add1~12_combout\ & \LessThan1~18_combout\)) # (!count(6) & ((\Add1~12_combout\) # (\LessThan1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datac => \Add1~12_combout\,
	datad => \LessThan1~18_combout\,
	combout => \LessThan1~19_combout\);

-- Location: LCCOMB_X21_Y6_N2
\LessThan1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~20_combout\ = (count(7) & (\Add1~14_combout\ & \LessThan1~19_combout\)) # (!count(7) & ((\Add1~14_combout\) # (\LessThan1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datac => \Add1~14_combout\,
	datad => \LessThan1~19_combout\,
	combout => \LessThan1~20_combout\);

-- Location: LCCOMB_X20_Y6_N24
\LessThan1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~21_combout\ = (count(8) & (\Add1~16_combout\ & \LessThan1~20_combout\)) # (!count(8) & ((\Add1~16_combout\) # (\LessThan1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datac => \Add1~16_combout\,
	datad => \LessThan1~20_combout\,
	combout => \LessThan1~21_combout\);

-- Location: LCCOMB_X20_Y6_N14
\LessThan1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~22_combout\ = (\Add1~18_combout\ & ((\LessThan1~21_combout\) # (!count(9)))) # (!\Add1~18_combout\ & (!count(9) & \LessThan1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~18_combout\,
	datac => count(9),
	datad => \LessThan1~21_combout\,
	combout => \LessThan1~22_combout\);

-- Location: LCCOMB_X21_Y9_N2
\LessThan1~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~31_combout\ = (\LessThan1~14_combout\) # ((!\LessThan1~10_combout\ & (!\LessThan1~9_combout\ & \LessThan1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datab => \LessThan1~14_combout\,
	datac => \LessThan1~9_combout\,
	datad => \LessThan1~22_combout\,
	combout => \LessThan1~31_combout\);

-- Location: LCCOMB_X21_Y9_N24
\LessThan1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~32_combout\ = (count(14) & (\Add1~28_combout\ & ((\LessThan1~31_combout\)))) # (!count(14) & ((\LessThan1~31_combout\) # ((\Add1~28_combout\ & !\LessThan1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => \Add1~28_combout\,
	datac => \LessThan1~14_combout\,
	datad => \LessThan1~31_combout\,
	combout => \LessThan1~32_combout\);

-- Location: LCCOMB_X21_Y9_N6
\LessThan1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~26_combout\ = (\LessThan1~25_combout\ & ((\Add1~30_combout\ & ((\LessThan1~32_combout\) # (!count(15)))) # (!\Add1~30_combout\ & (!count(15) & \LessThan1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \LessThan1~25_combout\,
	datac => count(15),
	datad => \LessThan1~32_combout\,
	combout => \LessThan1~26_combout\);

-- Location: LCCOMB_X20_Y9_N20
\LessThan1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~29_combout\ = (\LessThan1~3_combout\ & (\LessThan1~4_combout\ & ((\LessThan1~8_combout\) # (\LessThan1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \LessThan1~8_combout\,
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~26_combout\,
	combout => \LessThan1~29_combout\);

-- Location: LCCOMB_X20_Y9_N6
\LessThan1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~30_combout\ = (\Add1~34_combout\ & ((\LessThan3~5_combout\) # ((count(28) & \LessThan1~29_combout\)))) # (!\Add1~34_combout\ & (((!count(28) & \LessThan1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~5_combout\,
	datab => count(28),
	datac => \Add1~34_combout\,
	datad => \LessThan1~29_combout\,
	combout => \LessThan1~30_combout\);

-- Location: LCCOMB_X20_Y9_N10
\Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\state.HIGH1~q\ & (!\LessThan1~2_combout\ & ((!\LessThan1~30_combout\) # (!\LessThan1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.HIGH1~q\,
	datab => \LessThan1~2_combout\,
	datac => \LessThan1~27_combout\,
	datad => \LessThan1~30_combout\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X20_Y9_N16
\Selector36~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~2_combout\ = (\Selector32~2_combout\) # ((\Selector36~1_combout\) # (\Selector36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~2_combout\,
	datab => \Selector36~1_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector36~2_combout\);

-- Location: LCCOMB_X20_Y9_N22
\Selector36~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~4_combout\ = (!\Selector36~3_combout\ & ((\Selector36~2_combout\ & (\Selector32~2_combout\)) # (!\Selector36~2_combout\ & ((\state.HIGH2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~2_combout\,
	datab => \Selector36~3_combout\,
	datac => \state.HIGH2~q\,
	datad => \Selector36~2_combout\,
	combout => \Selector36~4_combout\);

-- Location: FF_X20_Y9_N23
\state.HIGH2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector36~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.HIGH2~q\);

-- Location: LCCOMB_X20_Y9_N8
\Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\count[2]~99_combout\ & (((\LessThan3~7_combout\) # (\LessThan3~33_combout\)) # (!\state.HIGH2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.HIGH2~q\,
	datab => \LessThan3~7_combout\,
	datac => \LessThan3~33_combout\,
	datad => \count[2]~99_combout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X20_Y9_N9
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: FF_X17_Y6_N23
\LOW1_MULT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \time_base_sel[1]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LOW1_MULT(1));

-- Location: LCCOMB_X17_Y6_N28
\LOW1_MULT[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LOW1_MULT[0]~feeder_combout\ = \time_base_sel[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \time_base_sel[0]~input_o\,
	combout => \LOW1_MULT[0]~feeder_combout\);

-- Location: FF_X17_Y6_N29
\LOW1_MULT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LOW1_MULT[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LOW1_MULT(0));

-- Location: LCCOMB_X17_Y6_N26
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = LOW1_MULT(1) $ (LOW1_MULT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LOW1_MULT(1),
	datad => LOW1_MULT(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X17_Y6_N8
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!LOW1_MULT(1) & LOW1_MULT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LOW1_MULT(1),
	datad => LOW1_MULT(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X17_Y6_N30
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (LOW1_MULT(1) & !LOW1_MULT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LOW1_MULT(1),
	datad => LOW1_MULT(0),
	combout => \Mux5~1_combout\);

-- Location: DSPMULT_X18_Y5_N0
\Mult1|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \rst~input_o\,
	ena => \Equal1~0_combout\,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y5_N2
\Mult1|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y6_N14
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \Mult1|auto_generated|mac_out2~dataout\ $ (VCC)
-- \Add3~1\ = CARRY(\Mult1|auto_generated|mac_out2~dataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X19_Y6_N16
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT1\ & (\Add3~1\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT1\ & (!\Add3~1\))
-- \Add3~3\ = CARRY((!\Mult1|auto_generated|mac_out2~DATAOUT1\ & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X19_Y6_N18
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT2\ & ((GND) # (!\Add3~3\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT2\ & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT2\) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X19_Y6_N20
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT3\ & (\Add3~5\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT3\ & (!\Add3~5\))
-- \Add3~7\ = CARRY((!\Mult1|auto_generated|mac_out2~DATAOUT3\ & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X19_Y6_N22
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT4\ & ((GND) # (!\Add3~7\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT4\ & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT4\) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X19_Y6_N24
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT5\ & (\Add3~9\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT5\ & (!\Add3~9\))
-- \Add3~11\ = CARRY((!\Mult1|auto_generated|mac_out2~DATAOUT5\ & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X19_Y6_N26
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT6\ & ((GND) # (!\Add3~11\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT6\ & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT6\) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X19_Y6_N28
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT7\ & (\Add3~13\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\Add3~13\))
-- \Add3~15\ = CARRY((!\Mult1|auto_generated|mac_out2~DATAOUT7\ & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X19_Y6_N30
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT8\ & ((GND) # (!\Add3~15\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT8\ & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT8\) # (!\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X19_Y5_N0
\Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT9\ & (\Add3~17\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\Add3~17\))
-- \Add3~19\ = CARRY((!\Mult1|auto_generated|mac_out2~DATAOUT9\ & !\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X19_Y5_N2
\Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT10\ & ((GND) # (!\Add3~19\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT10\ & (\Add3~19\ $ (GND)))
-- \Add3~21\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT10\) # (!\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X19_Y5_N4
\Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT11\ & (\Add3~21\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\Add3~21\))
-- \Add3~23\ = CARRY((!\Mult1|auto_generated|mac_out2~DATAOUT11\ & !\Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X19_Y5_N6
\Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT12\ & ((GND) # (!\Add3~23\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT12\ & (\Add3~23\ $ (GND)))
-- \Add3~25\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT12\) # (!\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X19_Y5_N8
\Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT13\ & (\Add3~25\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\Add3~25\))
-- \Add3~27\ = CARRY((!\Mult1|auto_generated|mac_out2~DATAOUT13\ & !\Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X19_Y5_N10
\Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT14\ & ((GND) # (!\Add3~27\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT14\ & (\Add3~27\ $ (GND)))
-- \Add3~29\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT14\) # (!\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X19_Y5_N12
\Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT15\ & (\Add3~29\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT15\ & (!\Add3~29\))
-- \Add3~31\ = CARRY((!\Mult1|auto_generated|mac_out2~DATAOUT15\ & !\Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X19_Y5_N14
\Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT16\ & ((GND) # (!\Add3~31\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT16\ & (\Add3~31\ $ (GND)))
-- \Add3~33\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT16\) # (!\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X19_Y5_N16
\Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = \Mult1|auto_generated|mac_out2~DATAOUT16\ $ (!\Add3~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out2~DATAOUT16\,
	cin => \Add3~33\,
	combout => \Add3~34_combout\);

-- Location: LCCOMB_X20_Y5_N26
\LessThan2~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~35_combout\ = (count(29) & (count(31) & (\Add3~34_combout\ & count(30)))) # (!count(29) & (!count(31) & (!\Add3~34_combout\ & !count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => count(31),
	datac => \Add3~34_combout\,
	datad => count(30),
	combout => \LessThan2~35_combout\);

-- Location: LCCOMB_X20_Y5_N20
\LessThan2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~32_combout\ = (count(26) & (count(27) & (\Add3~34_combout\ & count(25)))) # (!count(26) & (!count(27) & (!\Add3~34_combout\ & !count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(27),
	datac => \Add3~34_combout\,
	datad => count(25),
	combout => \LessThan2~32_combout\);

-- Location: LCCOMB_X20_Y6_N0
\LessThan2~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~31_combout\ = (count(23) & (count(24) & (\Add3~34_combout\ & count(22)))) # (!count(23) & (!count(24) & (!\Add3~34_combout\ & !count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(24),
	datac => \Add3~34_combout\,
	datad => count(22),
	combout => \LessThan2~31_combout\);

-- Location: LCCOMB_X20_Y6_N18
\LessThan2~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~33_combout\ = (\LessThan2~32_combout\ & (\LessThan2~31_combout\ & (\Add3~34_combout\ $ (!count(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~34_combout\,
	datab => count(28),
	datac => \LessThan2~32_combout\,
	datad => \LessThan2~31_combout\,
	combout => \LessThan2~33_combout\);

-- Location: LCCOMB_X20_Y5_N4
\LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (count(20) & (\Add3~34_combout\ & count(21))) # (!count(20) & (!\Add3~34_combout\ & !count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datac => \Add3~34_combout\,
	datad => count(21),
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X20_Y5_N22
\LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (count(17) & (count(19) & (\Add3~34_combout\ & count(18)))) # (!count(17) & (!count(19) & (!\Add3~34_combout\ & !count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(19),
	datac => \Add3~34_combout\,
	datad => count(18),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X20_Y5_N10
\LessThan2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (\LessThan2~7_combout\ & (\LessThan2~6_combout\ & (count(16) $ (!\Add3~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => \LessThan2~7_combout\,
	datac => \LessThan2~6_combout\,
	datad => \Add3~32_combout\,
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X20_Y6_N10
\LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (\LessThan2~8_combout\ & (\Add3~30_combout\ $ (!count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datac => count(15),
	datad => \LessThan2~8_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X20_Y5_N2
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (count(17) & (count(21) & (count(20) & count(18)))) # (!count(17) & ((count(21)) # ((count(20)) # (count(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(21),
	datac => count(20),
	datad => count(18),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X20_Y5_N12
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\Add3~32_combout\ & (((!count(15) & \Add3~30_combout\)) # (!count(16)))) # (!\Add3~32_combout\ & (!count(15) & (!count(16) & \Add3~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => count(15),
	datac => count(16),
	datad => \Add3~30_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X20_Y5_N0
\LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\LessThan2~2_combout\ & ((count(17) & (\LessThan2~3_combout\ & count(19))) # (!count(17) & (!\LessThan2~3_combout\ & !count(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => \LessThan2~3_combout\,
	datac => count(19),
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X20_Y6_N8
\LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (\Add3~34_combout\ & ((\LessThan3~6_combout\) # ((\LessThan2~4_combout\) # (!count(17))))) # (!\Add3~34_combout\ & (((!count(17) & \LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~34_combout\,
	datab => \LessThan3~6_combout\,
	datac => count(17),
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X19_Y6_N4
\LessThan2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = (count(1) & (!count(0) & (\Add3~0_combout\ & \Add3~2_combout\))) # (!count(1) & ((\Add3~2_combout\) # ((!count(0) & \Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => \Add3~0_combout\,
	datad => \Add3~2_combout\,
	combout => \LessThan2~10_combout\);

-- Location: LCCOMB_X19_Y6_N2
\LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~11_combout\ = (count(2) & (\LessThan2~10_combout\ & \Add3~4_combout\)) # (!count(2) & ((\LessThan2~10_combout\) # (\Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datac => \LessThan2~10_combout\,
	datad => \Add3~4_combout\,
	combout => \LessThan2~11_combout\);

-- Location: LCCOMB_X19_Y6_N0
\LessThan2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~12_combout\ = (count(3) & (\Add3~6_combout\ & \LessThan2~11_combout\)) # (!count(3) & ((\Add3~6_combout\) # (\LessThan2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \Add3~6_combout\,
	datad => \LessThan2~11_combout\,
	combout => \LessThan2~12_combout\);

-- Location: LCCOMB_X19_Y6_N8
\LessThan2~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~37_combout\ = (count(4) & (\Add3~8_combout\ & \LessThan2~12_combout\)) # (!count(4) & ((\Add3~8_combout\) # (\LessThan2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datac => \Add3~8_combout\,
	datad => \LessThan2~12_combout\,
	combout => \LessThan2~37_combout\);

-- Location: LCCOMB_X19_Y6_N10
\LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~13_combout\ = (count(5) & (\LessThan2~37_combout\ & \Add3~10_combout\)) # (!count(5) & ((\LessThan2~37_combout\) # (\Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datac => \LessThan2~37_combout\,
	datad => \Add3~10_combout\,
	combout => \LessThan2~13_combout\);

-- Location: LCCOMB_X19_Y6_N12
\LessThan2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (count(6) & (\Add3~12_combout\ & \LessThan2~13_combout\)) # (!count(6) & ((\Add3~12_combout\) # (\LessThan2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datac => \Add3~12_combout\,
	datad => \LessThan2~13_combout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X19_Y6_N6
\LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~15_combout\ = (\Add3~14_combout\ & ((\LessThan2~14_combout\) # (!count(7)))) # (!\Add3~14_combout\ & (!count(7) & \LessThan2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~14_combout\,
	datac => count(7),
	datad => \LessThan2~14_combout\,
	combout => \LessThan2~15_combout\);

-- Location: LCCOMB_X19_Y5_N26
\LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~16_combout\ = (count(11) & ((count(10) $ (\Add3~20_combout\)) # (!\Add3~22_combout\))) # (!count(11) & ((\Add3~22_combout\) # (count(10) $ (\Add3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(10),
	datac => \Add3~22_combout\,
	datad => \Add3~20_combout\,
	combout => \LessThan2~16_combout\);

-- Location: LCCOMB_X19_Y5_N20
\LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~17_combout\ = (count(13) & ((count(12) $ (\Add3~24_combout\)) # (!\Add3~26_combout\))) # (!count(13) & ((\Add3~26_combout\) # (count(12) $ (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(12),
	datac => \Add3~26_combout\,
	datad => \Add3~24_combout\,
	combout => \LessThan2~17_combout\);

-- Location: LCCOMB_X19_Y5_N30
\LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~18_combout\ = (!\LessThan2~16_combout\ & (!\LessThan2~17_combout\ & (\Add3~28_combout\ $ (!count(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~28_combout\,
	datab => count(14),
	datac => \LessThan2~16_combout\,
	datad => \LessThan2~17_combout\,
	combout => \LessThan2~18_combout\);

-- Location: LCCOMB_X20_Y6_N12
\LessThan2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~19_combout\ = (\LessThan2~18_combout\ & (count(9) $ (!\Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datac => \Add3~18_combout\,
	datad => \LessThan2~18_combout\,
	combout => \LessThan2~19_combout\);

-- Location: LCCOMB_X20_Y6_N26
\LessThan2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~20_combout\ = (\LessThan2~15_combout\ & (\LessThan2~19_combout\ & (count(8) $ (!\Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => \Add3~16_combout\,
	datac => \LessThan2~15_combout\,
	datad => \LessThan2~19_combout\,
	combout => \LessThan2~20_combout\);

-- Location: LCCOMB_X19_Y5_N24
\LessThan2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~25_combout\ = (count(14) & (!count(13) & (\Add3~28_combout\ & \Add3~26_combout\))) # (!count(14) & ((\Add3~28_combout\) # ((!count(13) & \Add3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(14),
	datac => \Add3~28_combout\,
	datad => \Add3~26_combout\,
	combout => \LessThan2~25_combout\);

-- Location: LCCOMB_X19_Y5_N28
\LessThan2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~23_combout\ = (!count(10) & (\Add3~20_combout\ & (count(11) $ (!\Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(10),
	datac => \Add3~22_combout\,
	datad => \Add3~20_combout\,
	combout => \LessThan2~23_combout\);

-- Location: LCCOMB_X19_Y5_N18
\LessThan2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~24_combout\ = (!\LessThan2~17_combout\ & (\LessThan2~23_combout\ & (count(14) $ (!\Add3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => \LessThan2~17_combout\,
	datac => \Add3~28_combout\,
	datad => \LessThan2~23_combout\,
	combout => \LessThan2~24_combout\);

-- Location: LCCOMB_X20_Y6_N4
\LessThan2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~21_combout\ = (!count(8) & \Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => \Add3~16_combout\,
	combout => \LessThan2~21_combout\);

-- Location: LCCOMB_X20_Y6_N30
\LessThan2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~22_combout\ = (\LessThan2~18_combout\ & ((\Add3~18_combout\ & ((\LessThan2~21_combout\) # (!count(9)))) # (!\Add3~18_combout\ & (!count(9) & \LessThan2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~18_combout\,
	datab => count(9),
	datac => \LessThan2~21_combout\,
	datad => \LessThan2~18_combout\,
	combout => \LessThan2~22_combout\);

-- Location: LCCOMB_X17_Y8_N26
\LessThan2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~27_combout\ = (!count(11) & \Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => \Add3~22_combout\,
	combout => \LessThan2~27_combout\);

-- Location: LCCOMB_X19_Y5_N22
\LessThan2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~26_combout\ = (count(13) & (\Add3~26_combout\ & (count(14) $ (!\Add3~28_combout\)))) # (!count(13) & (!\Add3~26_combout\ & (count(14) $ (!\Add3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(14),
	datac => \Add3~26_combout\,
	datad => \Add3~28_combout\,
	combout => \LessThan2~26_combout\);

-- Location: LCCOMB_X17_Y8_N24
\LessThan2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~28_combout\ = (\LessThan2~26_combout\ & ((count(12) & (\Add3~24_combout\ & \LessThan2~27_combout\)) # (!count(12) & ((\Add3~24_combout\) # (\LessThan2~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => \Add3~24_combout\,
	datac => \LessThan2~27_combout\,
	datad => \LessThan2~26_combout\,
	combout => \LessThan2~28_combout\);

-- Location: LCCOMB_X20_Y6_N28
\LessThan2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~29_combout\ = (\LessThan2~25_combout\) # ((\LessThan2~24_combout\) # ((\LessThan2~22_combout\) # (\LessThan2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~25_combout\,
	datab => \LessThan2~24_combout\,
	datac => \LessThan2~22_combout\,
	datad => \LessThan2~28_combout\,
	combout => \LessThan2~29_combout\);

-- Location: LCCOMB_X20_Y6_N6
\LessThan2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~30_combout\ = (\LessThan2~5_combout\) # ((\LessThan2~9_combout\ & ((\LessThan2~20_combout\) # (\LessThan2~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \LessThan2~5_combout\,
	datac => \LessThan2~20_combout\,
	datad => \LessThan2~29_combout\,
	combout => \LessThan2~30_combout\);

-- Location: LCCOMB_X20_Y6_N16
\LessThan2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~34_combout\ = (\LessThan3~5_combout\ & ((\Add3~34_combout\) # ((\LessThan2~33_combout\ & \LessThan2~30_combout\)))) # (!\LessThan3~5_combout\ & (\LessThan2~33_combout\ & ((\LessThan2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~5_combout\,
	datab => \LessThan2~33_combout\,
	datac => \Add3~34_combout\,
	datad => \LessThan2~30_combout\,
	combout => \LessThan2~34_combout\);

-- Location: LCCOMB_X20_Y6_N2
\count[2]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~96_combout\ = (\LessThan2~36_combout\) # ((\LessThan2~35_combout\ & \LessThan2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~35_combout\,
	datac => \LessThan2~36_combout\,
	datad => \LessThan2~34_combout\,
	combout => \count[2]~96_combout\);

-- Location: LCCOMB_X20_Y9_N4
\count[2]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~97_combout\ = (\state.HIGH2~q\ & ((\LessThan3~7_combout\) # ((\LessThan3~33_combout\)))) # (!\state.HIGH2~q\ & (((\count[2]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.HIGH2~q\,
	datab => \LessThan3~7_combout\,
	datac => \count[2]~96_combout\,
	datad => \LessThan3~33_combout\,
	combout => \count[2]~97_combout\);

-- Location: LCCOMB_X20_Y9_N14
\count[2]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~98_combout\ = ((!\Selector32~0_combout\ & ((\state.HIGH1~q\) # (!\count[2]~97_combout\)))) # (!\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.HIGH1~q\,
	datab => \state.IDLE~q\,
	datac => \count[2]~97_combout\,
	datad => \Selector32~0_combout\,
	combout => \count[2]~98_combout\);

-- Location: FF_X20_Y9_N17
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count[0]~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	sload => VCC,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X19_Y10_N2
\count[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~34_combout\ = (count(1) & (!\count[0]~33\)) # (!count(1) & ((\count[0]~33\) # (GND)))
-- \count[1]~35\ = CARRY((!\count[0]~33\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~33\,
	combout => \count[1]~34_combout\,
	cout => \count[1]~35\);

-- Location: FF_X19_Y10_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X19_Y10_N4
\count[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~36_combout\ = (count(2) & (\count[1]~35\ $ (GND))) # (!count(2) & (!\count[1]~35\ & VCC))
-- \count[2]~37\ = CARRY((count(2) & !\count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~35\,
	combout => \count[2]~36_combout\,
	cout => \count[2]~37\);

-- Location: FF_X19_Y10_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X19_Y10_N6
\count[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~38_combout\ = (count(3) & (!\count[2]~37\)) # (!count(3) & ((\count[2]~37\) # (GND)))
-- \count[3]~39\ = CARRY((!\count[2]~37\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~37\,
	combout => \count[3]~38_combout\,
	cout => \count[3]~39\);

-- Location: FF_X19_Y10_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X19_Y10_N8
\count[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~40_combout\ = (count(4) & (\count[3]~39\ $ (GND))) # (!count(4) & (!\count[3]~39\ & VCC))
-- \count[4]~41\ = CARRY((count(4) & !\count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~39\,
	combout => \count[4]~40_combout\,
	cout => \count[4]~41\);

-- Location: FF_X19_Y10_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X19_Y10_N10
\count[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~42_combout\ = (count(5) & (!\count[4]~41\)) # (!count(5) & ((\count[4]~41\) # (GND)))
-- \count[5]~43\ = CARRY((!\count[4]~41\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~41\,
	combout => \count[5]~42_combout\,
	cout => \count[5]~43\);

-- Location: FF_X19_Y10_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X19_Y10_N12
\count[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~44_combout\ = (count(6) & (\count[5]~43\ $ (GND))) # (!count(6) & (!\count[5]~43\ & VCC))
-- \count[6]~45\ = CARRY((count(6) & !\count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~43\,
	combout => \count[6]~44_combout\,
	cout => \count[6]~45\);

-- Location: FF_X19_Y10_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X19_Y10_N14
\count[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~46_combout\ = (count(7) & (!\count[6]~45\)) # (!count(7) & ((\count[6]~45\) # (GND)))
-- \count[7]~47\ = CARRY((!\count[6]~45\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~45\,
	combout => \count[7]~46_combout\,
	cout => \count[7]~47\);

-- Location: FF_X19_Y10_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X19_Y10_N16
\count[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~48_combout\ = (count(8) & (\count[7]~47\ $ (GND))) # (!count(8) & (!\count[7]~47\ & VCC))
-- \count[8]~49\ = CARRY((count(8) & !\count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~47\,
	combout => \count[8]~48_combout\,
	cout => \count[8]~49\);

-- Location: FF_X19_Y10_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X19_Y10_N18
\count[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~50_combout\ = (count(9) & (!\count[8]~49\)) # (!count(9) & ((\count[8]~49\) # (GND)))
-- \count[9]~51\ = CARRY((!\count[8]~49\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~49\,
	combout => \count[9]~50_combout\,
	cout => \count[9]~51\);

-- Location: FF_X19_Y10_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X19_Y10_N20
\count[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[10]~52_combout\ = (count(10) & (\count[9]~51\ $ (GND))) # (!count(10) & (!\count[9]~51\ & VCC))
-- \count[10]~53\ = CARRY((count(10) & !\count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~51\,
	combout => \count[10]~52_combout\,
	cout => \count[10]~53\);

-- Location: FF_X19_Y10_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X19_Y10_N22
\count[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[11]~54_combout\ = (count(11) & (!\count[10]~53\)) # (!count(11) & ((\count[10]~53\) # (GND)))
-- \count[11]~55\ = CARRY((!\count[10]~53\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~53\,
	combout => \count[11]~54_combout\,
	cout => \count[11]~55\);

-- Location: FF_X19_Y10_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X19_Y10_N24
\count[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[12]~56_combout\ = (count(12) & (\count[11]~55\ $ (GND))) # (!count(12) & (!\count[11]~55\ & VCC))
-- \count[12]~57\ = CARRY((count(12) & !\count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~55\,
	combout => \count[12]~56_combout\,
	cout => \count[12]~57\);

-- Location: FF_X19_Y10_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X19_Y10_N26
\count[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[13]~58_combout\ = (count(13) & (!\count[12]~57\)) # (!count(13) & ((\count[12]~57\) # (GND)))
-- \count[13]~59\ = CARRY((!\count[12]~57\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~57\,
	combout => \count[13]~58_combout\,
	cout => \count[13]~59\);

-- Location: FF_X19_Y10_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X19_Y10_N28
\count[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[14]~60_combout\ = (count(14) & (\count[13]~59\ $ (GND))) # (!count(14) & (!\count[13]~59\ & VCC))
-- \count[14]~61\ = CARRY((count(14) & !\count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~59\,
	combout => \count[14]~60_combout\,
	cout => \count[14]~61\);

-- Location: FF_X19_Y10_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X19_Y10_N30
\count[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~62_combout\ = (count(15) & (!\count[14]~61\)) # (!count(15) & ((\count[14]~61\) # (GND)))
-- \count[15]~63\ = CARRY((!\count[14]~61\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~61\,
	combout => \count[15]~62_combout\,
	cout => \count[15]~63\);

-- Location: FF_X19_Y10_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[15]~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X19_Y9_N0
\count[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[16]~64_combout\ = (count(16) & (\count[15]~63\ $ (GND))) # (!count(16) & (!\count[15]~63\ & VCC))
-- \count[16]~65\ = CARRY((count(16) & !\count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~63\,
	combout => \count[16]~64_combout\,
	cout => \count[16]~65\);

-- Location: FF_X19_Y9_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[16]~64_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X19_Y9_N2
\count[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[17]~66_combout\ = (count(17) & (!\count[16]~65\)) # (!count(17) & ((\count[16]~65\) # (GND)))
-- \count[17]~67\ = CARRY((!\count[16]~65\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~65\,
	combout => \count[17]~66_combout\,
	cout => \count[17]~67\);

-- Location: FF_X19_Y9_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[17]~66_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X19_Y9_N4
\count[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[18]~68_combout\ = (count(18) & (\count[17]~67\ $ (GND))) # (!count(18) & (!\count[17]~67\ & VCC))
-- \count[18]~69\ = CARRY((count(18) & !\count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~67\,
	combout => \count[18]~68_combout\,
	cout => \count[18]~69\);

-- Location: FF_X19_Y9_N5
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[18]~68_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X19_Y9_N6
\count[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[19]~70_combout\ = (count(19) & (!\count[18]~69\)) # (!count(19) & ((\count[18]~69\) # (GND)))
-- \count[19]~71\ = CARRY((!\count[18]~69\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~69\,
	combout => \count[19]~70_combout\,
	cout => \count[19]~71\);

-- Location: FF_X19_Y9_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[19]~70_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X19_Y9_N8
\count[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[20]~72_combout\ = (count(20) & (\count[19]~71\ $ (GND))) # (!count(20) & (!\count[19]~71\ & VCC))
-- \count[20]~73\ = CARRY((count(20) & !\count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~71\,
	combout => \count[20]~72_combout\,
	cout => \count[20]~73\);

-- Location: FF_X19_Y9_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[20]~72_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X19_Y9_N10
\count[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[21]~74_combout\ = (count(21) & (!\count[20]~73\)) # (!count(21) & ((\count[20]~73\) # (GND)))
-- \count[21]~75\ = CARRY((!\count[20]~73\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~73\,
	combout => \count[21]~74_combout\,
	cout => \count[21]~75\);

-- Location: FF_X19_Y9_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[21]~74_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X19_Y9_N12
\count[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[22]~76_combout\ = (count(22) & (\count[21]~75\ $ (GND))) # (!count(22) & (!\count[21]~75\ & VCC))
-- \count[22]~77\ = CARRY((count(22) & !\count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~75\,
	combout => \count[22]~76_combout\,
	cout => \count[22]~77\);

-- Location: FF_X19_Y9_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[22]~76_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X19_Y9_N14
\count[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[23]~78_combout\ = (count(23) & (!\count[22]~77\)) # (!count(23) & ((\count[22]~77\) # (GND)))
-- \count[23]~79\ = CARRY((!\count[22]~77\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~77\,
	combout => \count[23]~78_combout\,
	cout => \count[23]~79\);

-- Location: FF_X19_Y9_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[23]~78_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X19_Y9_N16
\count[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[24]~80_combout\ = (count(24) & (\count[23]~79\ $ (GND))) # (!count(24) & (!\count[23]~79\ & VCC))
-- \count[24]~81\ = CARRY((count(24) & !\count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~79\,
	combout => \count[24]~80_combout\,
	cout => \count[24]~81\);

-- Location: FF_X19_Y9_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[24]~80_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X19_Y9_N18
\count[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[25]~82_combout\ = (count(25) & (!\count[24]~81\)) # (!count(25) & ((\count[24]~81\) # (GND)))
-- \count[25]~83\ = CARRY((!\count[24]~81\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~81\,
	combout => \count[25]~82_combout\,
	cout => \count[25]~83\);

-- Location: FF_X19_Y9_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[25]~82_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X19_Y9_N20
\count[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[26]~84_combout\ = (count(26) & (\count[25]~83\ $ (GND))) # (!count(26) & (!\count[25]~83\ & VCC))
-- \count[26]~85\ = CARRY((count(26) & !\count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \count[25]~83\,
	combout => \count[26]~84_combout\,
	cout => \count[26]~85\);

-- Location: FF_X19_Y9_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[26]~84_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X19_Y9_N22
\count[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[27]~86_combout\ = (count(27) & (!\count[26]~85\)) # (!count(27) & ((\count[26]~85\) # (GND)))
-- \count[27]~87\ = CARRY((!\count[26]~85\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \count[26]~85\,
	combout => \count[27]~86_combout\,
	cout => \count[27]~87\);

-- Location: FF_X19_Y9_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[27]~86_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X19_Y9_N24
\count[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[28]~88_combout\ = (count(28) & (\count[27]~87\ $ (GND))) # (!count(28) & (!\count[27]~87\ & VCC))
-- \count[28]~89\ = CARRY((count(28) & !\count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \count[27]~87\,
	combout => \count[28]~88_combout\,
	cout => \count[28]~89\);

-- Location: FF_X19_Y9_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[28]~88_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X19_Y9_N26
\count[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[29]~90_combout\ = (count(29) & (!\count[28]~89\)) # (!count(29) & ((\count[28]~89\) # (GND)))
-- \count[29]~91\ = CARRY((!\count[28]~89\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \count[28]~89\,
	combout => \count[29]~90_combout\,
	cout => \count[29]~91\);

-- Location: FF_X19_Y9_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[29]~90_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: FF_X19_Y9_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[30]~92_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[2]~98_combout\,
	ena => \count[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X20_Y6_N22
\LessThan2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~36_combout\ = (count(31) & (((!\Add3~34_combout\) # (!count(29))) # (!count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => count(29),
	datac => \Add3~34_combout\,
	datad => count(31),
	combout => \LessThan2~36_combout\);

-- Location: LCCOMB_X20_Y9_N30
\Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (!\Selector36~3_combout\ & ((\Selector36~2_combout\ & (\Selector36~0_combout\)) # (!\Selector36~2_combout\ & ((\state.LOW1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \Selector36~3_combout\,
	datac => \state.LOW1~q\,
	datad => \Selector36~2_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X20_Y9_N31
\state.LOW1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.LOW1~q\);

-- Location: LCCOMB_X20_Y6_N20
\Selector32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = (!\LessThan2~36_combout\ & (\state.LOW1~q\ & ((!\LessThan2~34_combout\) # (!\LessThan2~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~36_combout\,
	datab => \state.LOW1~q\,
	datac => \LessThan2~35_combout\,
	datad => \LessThan2~34_combout\,
	combout => \Selector32~2_combout\);

-- Location: LCCOMB_X20_Y9_N26
\Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (!\Selector32~2_combout\ & !\Selector36~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector32~2_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X20_Y9_N12
\Selector34~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (!\Selector36~3_combout\ & ((\Selector36~2_combout\ & (\Selector34~0_combout\)) # (!\Selector36~2_combout\ & ((\state.HIGH1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \Selector36~3_combout\,
	datac => \state.HIGH1~q\,
	datad => \Selector36~2_combout\,
	combout => \Selector34~1_combout\);

-- Location: FF_X20_Y9_N13
\state.HIGH1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector34~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.HIGH1~q\);

-- Location: LCCOMB_X20_Y9_N18
\Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\state.HIGH1~q\ & ((\LessThan1~2_combout\) # ((\LessThan1~27_combout\ & \LessThan1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.HIGH1~q\,
	datab => \LessThan1~2_combout\,
	datac => \LessThan1~27_combout\,
	datad => \LessThan1~30_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X19_Y7_N12
\Selector32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\output_signal~reg0_q\) # ((!\button_last~q\ & (\button~input_o\ & \all_times_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_last~q\,
	datab => \button~input_o\,
	datac => \all_times_set~q\,
	datad => \output_signal~reg0_q\,
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X20_Y9_N0
\Selector32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~3_combout\ = (\state.HIGH2~q\ & (\output_signal~reg0_q\ & ((\LessThan3~7_combout\) # (\LessThan3~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.HIGH2~q\,
	datab => \output_signal~reg0_q\,
	datac => \LessThan3~7_combout\,
	datad => \LessThan3~33_combout\,
	combout => \Selector32~3_combout\);

-- Location: LCCOMB_X19_Y7_N10
\Selector32~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~4_combout\ = (\Selector32~3_combout\) # ((\Selector32~2_combout\) # ((\Selector32~1_combout\ & !\state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~1_combout\,
	datab => \state.IDLE~q\,
	datac => \Selector32~3_combout\,
	datad => \Selector32~2_combout\,
	combout => \Selector32~4_combout\);

-- Location: LCCOMB_X19_Y7_N24
\Selector32~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~5_combout\ = (\Selector32~4_combout\) # ((\output_signal~reg0_q\ & ((\Selector32~0_combout\) # (\state.LOW1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \state.LOW1~q\,
	datac => \output_signal~reg0_q\,
	datad => \Selector32~4_combout\,
	combout => \Selector32~5_combout\);

-- Location: FF_X19_Y7_N25
\output_signal~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector32~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_signal~reg0_q\);

ww_led_indicator(0) <= \led_indicator[0]~output_o\;

ww_led_indicator(1) <= \led_indicator[1]~output_o\;

ww_led_indicator(2) <= \led_indicator[2]~output_o\;

ww_output_signal <= \output_signal~output_o\;
END structure;


