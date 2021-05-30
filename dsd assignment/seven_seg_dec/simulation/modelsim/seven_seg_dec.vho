-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/08/2019 16:21:50"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
LIBRARY STD;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	seven_seg_dec IS
    PORT (
	bcd : IN STD.STANDARD.integer;
	disp : OUT std_logic_vector(6 DOWNTO 0)
	);
END seven_seg_dec;

-- Design Ports Information
-- disp[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[8]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[10]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[11]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[12]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[13]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[15]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[16]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[17]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[18]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[19]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[20]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[21]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[22]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[23]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[24]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[25]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[26]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[27]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[28]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[29]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[30]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[31]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[0]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seven_seg_dec IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bcd : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_disp : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \disp[0]~output_o\ : std_logic;
SIGNAL \disp[1]~output_o\ : std_logic;
SIGNAL \disp[2]~output_o\ : std_logic;
SIGNAL \disp[3]~output_o\ : std_logic;
SIGNAL \disp[4]~output_o\ : std_logic;
SIGNAL \disp[5]~output_o\ : std_logic;
SIGNAL \disp[6]~output_o\ : std_logic;
SIGNAL \bcd[2]~input_o\ : std_logic;
SIGNAL \bcd[1]~input_o\ : std_logic;
SIGNAL \bcd[3]~input_o\ : std_logic;
SIGNAL \bcd[22]~input_o\ : std_logic;
SIGNAL \bcd[23]~input_o\ : std_logic;
SIGNAL \bcd[20]~input_o\ : std_logic;
SIGNAL \bcd[21]~input_o\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \bcd[26]~input_o\ : std_logic;
SIGNAL \bcd[25]~input_o\ : std_logic;
SIGNAL \bcd[24]~input_o\ : std_logic;
SIGNAL \bcd[27]~input_o\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \bcd[18]~input_o\ : std_logic;
SIGNAL \bcd[16]~input_o\ : std_logic;
SIGNAL \bcd[17]~input_o\ : std_logic;
SIGNAL \bcd[19]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \bcd[15]~input_o\ : std_logic;
SIGNAL \bcd[14]~input_o\ : std_logic;
SIGNAL \bcd[13]~input_o\ : std_logic;
SIGNAL \bcd[12]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \bcd[8]~input_o\ : std_logic;
SIGNAL \bcd[11]~input_o\ : std_logic;
SIGNAL \bcd[10]~input_o\ : std_logic;
SIGNAL \bcd[9]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \bcd[4]~input_o\ : std_logic;
SIGNAL \bcd[7]~input_o\ : std_logic;
SIGNAL \bcd[6]~input_o\ : std_logic;
SIGNAL \bcd[5]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \bcd[29]~input_o\ : std_logic;
SIGNAL \bcd[28]~input_o\ : std_logic;
SIGNAL \bcd[31]~input_o\ : std_logic;
SIGNAL \bcd[30]~input_o\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \bcd[0]~input_o\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \disp~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_bcd <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(bcd, 32);
disp <= ww_disp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y46_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X40_Y0_N30
\disp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~combout\,
	devoe => ww_devoe,
	o => \disp[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\disp[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr4~combout\,
	devoe => ww_devoe,
	o => \disp[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\disp[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp~0_combout\,
	devoe => ww_devoe,
	o => \disp[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\disp[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~combout\,
	devoe => ww_devoe,
	o => \disp[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\disp[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor0~0_combout\,
	devoe => ww_devoe,
	o => \disp[4]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\disp[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~combout\,
	devoe => ww_devoe,
	o => \disp[5]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\disp[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~combout\,
	devoe => ww_devoe,
	o => \disp[6]~output_o\);

-- Location: IOIBUF_X46_Y0_N8
\bcd[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(2),
	o => \bcd[2]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\bcd[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(1),
	o => \bcd[1]~input_o\);

-- Location: IOIBUF_X36_Y39_N29
\bcd[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(3),
	o => \bcd[3]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\bcd[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(22),
	o => \bcd[22]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\bcd[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(23),
	o => \bcd[23]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\bcd[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(20),
	o => \bcd[20]~input_o\);

-- Location: IOIBUF_X54_Y54_N1
\bcd[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(21),
	o => \bcd[21]~input_o\);

-- Location: LCCOMB_X49_Y50_N24
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\bcd[22]~input_o\ & (!\bcd[23]~input_o\ & (!\bcd[20]~input_o\ & !\bcd[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[22]~input_o\,
	datab => \bcd[23]~input_o\,
	datac => \bcd[20]~input_o\,
	datad => \bcd[21]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: IOIBUF_X46_Y54_N1
\bcd[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(26),
	o => \bcd[26]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\bcd[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(25),
	o => \bcd[25]~input_o\);

-- Location: IOIBUF_X36_Y39_N15
\bcd[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(24),
	o => \bcd[24]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\bcd[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(27),
	o => \bcd[27]~input_o\);

-- Location: LCCOMB_X45_Y39_N18
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\bcd[26]~input_o\ & (!\bcd[25]~input_o\ & (!\bcd[24]~input_o\ & !\bcd[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[26]~input_o\,
	datab => \bcd[25]~input_o\,
	datac => \bcd[24]~input_o\,
	datad => \bcd[27]~input_o\,
	combout => \Equal0~6_combout\);

-- Location: IOIBUF_X49_Y54_N29
\bcd[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(18),
	o => \bcd[18]~input_o\);

-- Location: IOIBUF_X29_Y39_N8
\bcd[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(16),
	o => \bcd[16]~input_o\);

-- Location: IOIBUF_X34_Y39_N8
\bcd[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(17),
	o => \bcd[17]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\bcd[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(19),
	o => \bcd[19]~input_o\);

-- Location: LCCOMB_X45_Y39_N6
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\bcd[18]~input_o\ & (!\bcd[16]~input_o\ & (!\bcd[17]~input_o\ & !\bcd[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[18]~input_o\,
	datab => \bcd[16]~input_o\,
	datac => \bcd[17]~input_o\,
	datad => \bcd[19]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X31_Y39_N8
\bcd[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(15),
	o => \bcd[15]~input_o\);

-- Location: IOIBUF_X46_Y54_N15
\bcd[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(14),
	o => \bcd[14]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\bcd[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(13),
	o => \bcd[13]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\bcd[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(12),
	o => \bcd[12]~input_o\);

-- Location: LCCOMB_X45_Y39_N4
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\bcd[15]~input_o\ & (!\bcd[14]~input_o\ & (!\bcd[13]~input_o\ & !\bcd[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[15]~input_o\,
	datab => \bcd[14]~input_o\,
	datac => \bcd[13]~input_o\,
	datad => \bcd[12]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X34_Y39_N15
\bcd[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(8),
	o => \bcd[8]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\bcd[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(11),
	o => \bcd[11]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\bcd[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(10),
	o => \bcd[10]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\bcd[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(9),
	o => \bcd[9]~input_o\);

-- Location: LCCOMB_X45_Y39_N26
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\bcd[8]~input_o\ & (!\bcd[11]~input_o\ & (!\bcd[10]~input_o\ & !\bcd[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[8]~input_o\,
	datab => \bcd[11]~input_o\,
	datac => \bcd[10]~input_o\,
	datad => \bcd[9]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X46_Y54_N8
\bcd[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(4),
	o => \bcd[4]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\bcd[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(7),
	o => \bcd[7]~input_o\);

-- Location: IOIBUF_X34_Y39_N1
\bcd[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(6),
	o => \bcd[6]~input_o\);

-- Location: IOIBUF_X49_Y54_N15
\bcd[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(5),
	o => \bcd[5]~input_o\);

-- Location: LCCOMB_X45_Y39_N16
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\bcd[4]~input_o\ & (!\bcd[7]~input_o\ & (!\bcd[6]~input_o\ & !\bcd[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[4]~input_o\,
	datab => \bcd[7]~input_o\,
	datac => \bcd[6]~input_o\,
	datad => \bcd[5]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y39_N8
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X51_Y54_N1
\bcd[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(29),
	o => \bcd[29]~input_o\);

-- Location: IOIBUF_X54_Y54_N8
\bcd[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(28),
	o => \bcd[28]~input_o\);

-- Location: IOIBUF_X49_Y54_N8
\bcd[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(31),
	o => \bcd[31]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\bcd[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(30),
	o => \bcd[30]~input_o\);

-- Location: LCCOMB_X51_Y50_N0
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\bcd[29]~input_o\ & (!\bcd[28]~input_o\ & (!\bcd[31]~input_o\ & !\bcd[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[29]~input_o\,
	datab => \bcd[28]~input_o\,
	datac => \bcd[31]~input_o\,
	datad => \bcd[30]~input_o\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X45_Y39_N20
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~4_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X45_Y38_N8
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\bcd[3]~input_o\ & \Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datac => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: IOIBUF_X78_Y37_N1
\bcd[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(0),
	o => \bcd[0]~input_o\);

-- Location: LCCOMB_X45_Y38_N22
\WideNor0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (\bcd[1]~input_o\) # ((\bcd[2]~input_o\ $ (!\bcd[0]~input_o\)) # (!\Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[2]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \Equal0~10_combout\,
	datad => \bcd[0]~input_o\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X45_Y38_N18
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\bcd[3]~input_o\ & (!\bcd[1]~input_o\ & !\bcd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[1]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X45_Y38_N12
\Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (\Equal8~0_combout\ & (\Equal0~8_combout\ & \bcd[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \Equal0~8_combout\,
	datad => \bcd[0]~input_o\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X45_Y38_N0
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\bcd[3]~input_o\ & (\Equal0~8_combout\ & !\bcd[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datac => \Equal0~8_combout\,
	datad => \bcd[0]~input_o\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X45_Y38_N4
\Equal8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\Equal8~0_combout\ & (\Equal0~8_combout\ & !\bcd[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \Equal0~8_combout\,
	datad => \bcd[0]~input_o\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X45_Y38_N30
\WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (!\Equal8~1_combout\ & (((!\bcd[1]~input_o\ & \bcd[2]~input_o\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \bcd[1]~input_o\,
	datac => \Equal8~1_combout\,
	datad => \bcd[2]~input_o\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X45_Y38_N10
\WideNor0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = (\Equal0~10_combout\ & ((\bcd[0]~input_o\) # ((\bcd[2]~input_o\ & !\bcd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[2]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \Equal0~10_combout\,
	datad => \bcd[0]~input_o\,
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X45_Y38_N24
WideOr5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = ((!\Equal9~0_combout\ & (\WideNor0~0_combout\ & !\WideNor0~1_combout\))) # (!\WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \Equal9~0_combout\,
	datac => \WideNor0~0_combout\,
	datad => \WideNor0~1_combout\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X45_Y38_N26
\WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\bcd[2]~input_o\ & (\Equal0~10_combout\ & (\bcd[1]~input_o\ $ (\bcd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[2]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \Equal0~10_combout\,
	datad => \bcd[0]~input_o\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X45_Y38_N20
WideOr4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\WideOr4~0_combout\) # ((!\Equal9~0_combout\ & (\WideNor0~0_combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \WideNor0~0_combout\,
	datad => \WideNor0~1_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X45_Y39_N22
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\Equal0~9_combout\ & (\bcd[1]~input_o\ & !\bcd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \bcd[1]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X45_Y38_N6
\disp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \disp~0_combout\ = (\Equal2~0_combout\) # ((\WideNor0~0_combout\ & (!\Equal9~0_combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \WideNor0~1_combout\,
	combout => \disp~0_combout\);

-- Location: LCCOMB_X45_Y38_N16
\WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ((\bcd[2]~input_o\ $ (\bcd[1]~input_o\)) # (!\bcd[0]~input_o\)) # (!\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[2]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \Equal0~10_combout\,
	datad => \bcd[0]~input_o\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X45_Y38_N2
\WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\WideOr0~0_combout\ & ((\Equal9~0_combout\) # ((\WideNor0~1_combout\) # (!\WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \WideOr0~0_combout\,
	datac => \WideNor0~0_combout\,
	datad => \WideNor0~1_combout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X45_Y39_N24
WideOr3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = ((\Equal0~9_combout\ & (!\bcd[1]~input_o\ & \bcd[2]~input_o\))) # (!\WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \WideOr0~1_combout\,
	datac => \bcd[1]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X45_Y38_N28
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\bcd[3]~input_o\ & (\bcd[1]~input_o\ & (\Equal0~8_combout\ & \bcd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \Equal0~8_combout\,
	datad => \bcd[0]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X45_Y38_N14
WideOr1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ((\Equal2~0_combout\) # ((!\bcd[2]~input_o\ & \Equal3~0_combout\))) # (!\WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[2]~input_o\,
	datab => \WideOr0~1_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X45_Y39_N10
WideOr0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ((\Equal0~9_combout\ & (!\bcd[1]~input_o\ & !\bcd[2]~input_o\))) # (!\WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \WideOr0~1_combout\,
	datac => \bcd[1]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \WideOr0~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_disp(0) <= \disp[0]~output_o\;

ww_disp(1) <= \disp[1]~output_o\;

ww_disp(2) <= \disp[2]~output_o\;

ww_disp(3) <= \disp[3]~output_o\;

ww_disp(4) <= \disp[4]~output_o\;

ww_disp(5) <= \disp[5]~output_o\;

ww_disp(6) <= \disp[6]~output_o\;
END structure;


