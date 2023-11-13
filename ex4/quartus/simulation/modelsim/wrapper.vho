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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/13/2023 03:15:38"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	wrapper IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END wrapper;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF wrapper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut|comb_3|out[1]~27_combout\ : std_logic;
SIGNAL \dut|comb_3|out[2]~29_combout\ : std_logic;
SIGNAL \dut|comb_3|out[4]~33_combout\ : std_logic;
SIGNAL \dut|comb_3|out[8]~41_combout\ : std_logic;
SIGNAL \dut|comb_3|out[11]~47_combout\ : std_logic;
SIGNAL \dut|comb_3|out[20]~65_combout\ : std_logic;
SIGNAL \dut|comb_3|out[23]~72\ : std_logic;
SIGNAL \dut|comb_3|out[24]~73_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \dut|comb_3|out[0]~25_combout\ : std_logic;
SIGNAL \dut|comb_3|out[0]~26\ : std_logic;
SIGNAL \dut|comb_3|out[1]~28\ : std_logic;
SIGNAL \dut|comb_3|out[2]~30\ : std_logic;
SIGNAL \dut|comb_3|out[3]~31_combout\ : std_logic;
SIGNAL \dut|comb_3|out[3]~32\ : std_logic;
SIGNAL \dut|comb_3|out[4]~34\ : std_logic;
SIGNAL \dut|comb_3|out[5]~35_combout\ : std_logic;
SIGNAL \dut|comb_3|out[5]~36\ : std_logic;
SIGNAL \dut|comb_3|out[6]~38\ : std_logic;
SIGNAL \dut|comb_3|out[7]~39_combout\ : std_logic;
SIGNAL \dut|comb_3|out[7]~40\ : std_logic;
SIGNAL \dut|comb_3|out[8]~42\ : std_logic;
SIGNAL \dut|comb_3|out[9]~43_combout\ : std_logic;
SIGNAL \dut|comb_3|out[9]~44\ : std_logic;
SIGNAL \dut|comb_3|out[10]~45_combout\ : std_logic;
SIGNAL \dut|comb_3|out[10]~46\ : std_logic;
SIGNAL \dut|comb_3|out[11]~48\ : std_logic;
SIGNAL \dut|comb_3|out[12]~49_combout\ : std_logic;
SIGNAL \dut|comb_3|out[12]~50\ : std_logic;
SIGNAL \dut|comb_3|out[13]~51_combout\ : std_logic;
SIGNAL \dut|comb_3|out[13]~52\ : std_logic;
SIGNAL \dut|comb_3|out[14]~53_combout\ : std_logic;
SIGNAL \dut|comb_3|out[14]~54\ : std_logic;
SIGNAL \dut|comb_3|out[15]~56\ : std_logic;
SIGNAL \dut|comb_3|out[16]~57_combout\ : std_logic;
SIGNAL \dut|comb_3|out[16]~58\ : std_logic;
SIGNAL \dut|comb_3|out[17]~60\ : std_logic;
SIGNAL \dut|comb_3|out[18]~62\ : std_logic;
SIGNAL \dut|comb_3|out[19]~63_combout\ : std_logic;
SIGNAL \dut|comb_3|out[19]~64\ : std_logic;
SIGNAL \dut|comb_3|out[20]~66\ : std_logic;
SIGNAL \dut|comb_3|out[21]~67_combout\ : std_logic;
SIGNAL \dut|comb_3|out[21]~68\ : std_logic;
SIGNAL \dut|comb_3|out[22]~70\ : std_logic;
SIGNAL \dut|comb_3|out[23]~71_combout\ : std_logic;
SIGNAL \dut|comb_3|out[22]~69_combout\ : std_logic;
SIGNAL \dut|comb_3|out[18]~61_combout\ : std_logic;
SIGNAL \dut|comb_3|LessThan0~4_combout\ : std_logic;
SIGNAL \dut|comb_3|LessThan0~5_combout\ : std_logic;
SIGNAL \dut|comb_3|out[6]~37_combout\ : std_logic;
SIGNAL \dut|comb_3|LessThan0~2_combout\ : std_logic;
SIGNAL \dut|comb_3|out[17]~59_combout\ : std_logic;
SIGNAL \dut|comb_3|out[15]~55_combout\ : std_logic;
SIGNAL \dut|comb_3|LessThan0~0_combout\ : std_logic;
SIGNAL \dut|comb_3|LessThan0~1_combout\ : std_logic;
SIGNAL \dut|comb_3|LessThan0~3_combout\ : std_logic;
SIGNAL \dut|comb_3|LessThan0~6_combout\ : std_logic;
SIGNAL \dut|clk_out~0_combout\ : std_logic;
SIGNAL \dut|clk_out~regout\ : std_logic;
SIGNAL \dut|comb_3|out\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

-- Location: LCFF_X64_Y2_N31
\dut|comb_3|out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[11]~47_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(11));

-- Location: LCFF_X64_Y2_N25
\dut|comb_3|out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[8]~41_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(8));

-- Location: LCFF_X64_Y1_N17
\dut|comb_3|out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[20]~65_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(20));

-- Location: LCFF_X64_Y1_N25
\dut|comb_3|out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[24]~73_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(24));

-- Location: LCFF_X64_Y2_N17
\dut|comb_3|out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[4]~33_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(4));

-- Location: LCFF_X64_Y2_N13
\dut|comb_3|out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[2]~29_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(2));

-- Location: LCFF_X64_Y2_N11
\dut|comb_3|out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[1]~27_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(1));

-- Location: LCCOMB_X64_Y2_N10
\dut|comb_3|out[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[1]~27_combout\ = (\dut|comb_3|out\(1) & (!\dut|comb_3|out[0]~26\)) # (!\dut|comb_3|out\(1) & ((\dut|comb_3|out[0]~26\) # (GND)))
-- \dut|comb_3|out[1]~28\ = CARRY((!\dut|comb_3|out[0]~26\) # (!\dut|comb_3|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(1),
	datad => VCC,
	cin => \dut|comb_3|out[0]~26\,
	combout => \dut|comb_3|out[1]~27_combout\,
	cout => \dut|comb_3|out[1]~28\);

-- Location: LCCOMB_X64_Y2_N12
\dut|comb_3|out[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[2]~29_combout\ = (\dut|comb_3|out\(2) & (\dut|comb_3|out[1]~28\ $ (GND))) # (!\dut|comb_3|out\(2) & (!\dut|comb_3|out[1]~28\ & VCC))
-- \dut|comb_3|out[2]~30\ = CARRY((\dut|comb_3|out\(2) & !\dut|comb_3|out[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(2),
	datad => VCC,
	cin => \dut|comb_3|out[1]~28\,
	combout => \dut|comb_3|out[2]~29_combout\,
	cout => \dut|comb_3|out[2]~30\);

-- Location: LCCOMB_X64_Y2_N16
\dut|comb_3|out[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[4]~33_combout\ = (\dut|comb_3|out\(4) & (\dut|comb_3|out[3]~32\ $ (GND))) # (!\dut|comb_3|out\(4) & (!\dut|comb_3|out[3]~32\ & VCC))
-- \dut|comb_3|out[4]~34\ = CARRY((\dut|comb_3|out\(4) & !\dut|comb_3|out[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(4),
	datad => VCC,
	cin => \dut|comb_3|out[3]~32\,
	combout => \dut|comb_3|out[4]~33_combout\,
	cout => \dut|comb_3|out[4]~34\);

-- Location: LCCOMB_X64_Y2_N24
\dut|comb_3|out[8]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[8]~41_combout\ = (\dut|comb_3|out\(8) & (\dut|comb_3|out[7]~40\ $ (GND))) # (!\dut|comb_3|out\(8) & (!\dut|comb_3|out[7]~40\ & VCC))
-- \dut|comb_3|out[8]~42\ = CARRY((\dut|comb_3|out\(8) & !\dut|comb_3|out[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(8),
	datad => VCC,
	cin => \dut|comb_3|out[7]~40\,
	combout => \dut|comb_3|out[8]~41_combout\,
	cout => \dut|comb_3|out[8]~42\);

-- Location: LCCOMB_X64_Y2_N30
\dut|comb_3|out[11]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[11]~47_combout\ = (\dut|comb_3|out\(11) & (!\dut|comb_3|out[10]~46\)) # (!\dut|comb_3|out\(11) & ((\dut|comb_3|out[10]~46\) # (GND)))
-- \dut|comb_3|out[11]~48\ = CARRY((!\dut|comb_3|out[10]~46\) # (!\dut|comb_3|out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(11),
	datad => VCC,
	cin => \dut|comb_3|out[10]~46\,
	combout => \dut|comb_3|out[11]~47_combout\,
	cout => \dut|comb_3|out[11]~48\);

-- Location: LCCOMB_X64_Y1_N16
\dut|comb_3|out[20]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[20]~65_combout\ = (\dut|comb_3|out\(20) & (\dut|comb_3|out[19]~64\ $ (GND))) # (!\dut|comb_3|out\(20) & (!\dut|comb_3|out[19]~64\ & VCC))
-- \dut|comb_3|out[20]~66\ = CARRY((\dut|comb_3|out\(20) & !\dut|comb_3|out[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(20),
	datad => VCC,
	cin => \dut|comb_3|out[19]~64\,
	combout => \dut|comb_3|out[20]~65_combout\,
	cout => \dut|comb_3|out[20]~66\);

-- Location: LCCOMB_X64_Y1_N22
\dut|comb_3|out[23]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[23]~71_combout\ = (\dut|comb_3|out\(23) & (!\dut|comb_3|out[22]~70\)) # (!\dut|comb_3|out\(23) & ((\dut|comb_3|out[22]~70\) # (GND)))
-- \dut|comb_3|out[23]~72\ = CARRY((!\dut|comb_3|out[22]~70\) # (!\dut|comb_3|out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(23),
	datad => VCC,
	cin => \dut|comb_3|out[22]~70\,
	combout => \dut|comb_3|out[23]~71_combout\,
	cout => \dut|comb_3|out[23]~72\);

-- Location: LCCOMB_X64_Y1_N24
\dut|comb_3|out[24]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[24]~73_combout\ = \dut|comb_3|out\(24) $ (!\dut|comb_3|out[23]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(24),
	cin => \dut|comb_3|out[23]~72\,
	combout => \dut|comb_3|out[24]~73_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y2_N8
\dut|comb_3|out[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[0]~25_combout\ = \dut|comb_3|out\(0) $ (VCC)
-- \dut|comb_3|out[0]~26\ = CARRY(\dut|comb_3|out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(0),
	datad => VCC,
	combout => \dut|comb_3|out[0]~25_combout\,
	cout => \dut|comb_3|out[0]~26\);

-- Location: LCCOMB_X64_Y2_N14
\dut|comb_3|out[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[3]~31_combout\ = (\dut|comb_3|out\(3) & (!\dut|comb_3|out[2]~30\)) # (!\dut|comb_3|out\(3) & ((\dut|comb_3|out[2]~30\) # (GND)))
-- \dut|comb_3|out[3]~32\ = CARRY((!\dut|comb_3|out[2]~30\) # (!\dut|comb_3|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(3),
	datad => VCC,
	cin => \dut|comb_3|out[2]~30\,
	combout => \dut|comb_3|out[3]~31_combout\,
	cout => \dut|comb_3|out[3]~32\);

-- Location: LCFF_X64_Y2_N15
\dut|comb_3|out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[3]~31_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(3));

-- Location: LCCOMB_X64_Y2_N18
\dut|comb_3|out[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[5]~35_combout\ = (\dut|comb_3|out\(5) & (!\dut|comb_3|out[4]~34\)) # (!\dut|comb_3|out\(5) & ((\dut|comb_3|out[4]~34\) # (GND)))
-- \dut|comb_3|out[5]~36\ = CARRY((!\dut|comb_3|out[4]~34\) # (!\dut|comb_3|out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(5),
	datad => VCC,
	cin => \dut|comb_3|out[4]~34\,
	combout => \dut|comb_3|out[5]~35_combout\,
	cout => \dut|comb_3|out[5]~36\);

-- Location: LCFF_X64_Y2_N19
\dut|comb_3|out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[5]~35_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(5));

-- Location: LCCOMB_X64_Y2_N20
\dut|comb_3|out[6]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[6]~37_combout\ = (\dut|comb_3|out\(6) & (\dut|comb_3|out[5]~36\ $ (GND))) # (!\dut|comb_3|out\(6) & (!\dut|comb_3|out[5]~36\ & VCC))
-- \dut|comb_3|out[6]~38\ = CARRY((\dut|comb_3|out\(6) & !\dut|comb_3|out[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(6),
	datad => VCC,
	cin => \dut|comb_3|out[5]~36\,
	combout => \dut|comb_3|out[6]~37_combout\,
	cout => \dut|comb_3|out[6]~38\);

-- Location: LCCOMB_X64_Y2_N22
\dut|comb_3|out[7]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[7]~39_combout\ = (\dut|comb_3|out\(7) & (!\dut|comb_3|out[6]~38\)) # (!\dut|comb_3|out\(7) & ((\dut|comb_3|out[6]~38\) # (GND)))
-- \dut|comb_3|out[7]~40\ = CARRY((!\dut|comb_3|out[6]~38\) # (!\dut|comb_3|out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(7),
	datad => VCC,
	cin => \dut|comb_3|out[6]~38\,
	combout => \dut|comb_3|out[7]~39_combout\,
	cout => \dut|comb_3|out[7]~40\);

-- Location: LCFF_X64_Y2_N23
\dut|comb_3|out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[7]~39_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(7));

-- Location: LCCOMB_X64_Y2_N26
\dut|comb_3|out[9]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[9]~43_combout\ = (\dut|comb_3|out\(9) & (!\dut|comb_3|out[8]~42\)) # (!\dut|comb_3|out\(9) & ((\dut|comb_3|out[8]~42\) # (GND)))
-- \dut|comb_3|out[9]~44\ = CARRY((!\dut|comb_3|out[8]~42\) # (!\dut|comb_3|out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(9),
	datad => VCC,
	cin => \dut|comb_3|out[8]~42\,
	combout => \dut|comb_3|out[9]~43_combout\,
	cout => \dut|comb_3|out[9]~44\);

-- Location: LCFF_X64_Y2_N27
\dut|comb_3|out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[9]~43_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(9));

-- Location: LCCOMB_X64_Y2_N28
\dut|comb_3|out[10]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[10]~45_combout\ = (\dut|comb_3|out\(10) & (\dut|comb_3|out[9]~44\ $ (GND))) # (!\dut|comb_3|out\(10) & (!\dut|comb_3|out[9]~44\ & VCC))
-- \dut|comb_3|out[10]~46\ = CARRY((\dut|comb_3|out\(10) & !\dut|comb_3|out[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(10),
	datad => VCC,
	cin => \dut|comb_3|out[9]~44\,
	combout => \dut|comb_3|out[10]~45_combout\,
	cout => \dut|comb_3|out[10]~46\);

-- Location: LCFF_X64_Y2_N29
\dut|comb_3|out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[10]~45_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(10));

-- Location: LCCOMB_X64_Y1_N0
\dut|comb_3|out[12]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[12]~49_combout\ = (\dut|comb_3|out\(12) & (\dut|comb_3|out[11]~48\ $ (GND))) # (!\dut|comb_3|out\(12) & (!\dut|comb_3|out[11]~48\ & VCC))
-- \dut|comb_3|out[12]~50\ = CARRY((\dut|comb_3|out\(12) & !\dut|comb_3|out[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(12),
	datad => VCC,
	cin => \dut|comb_3|out[11]~48\,
	combout => \dut|comb_3|out[12]~49_combout\,
	cout => \dut|comb_3|out[12]~50\);

-- Location: LCFF_X64_Y1_N1
\dut|comb_3|out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[12]~49_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(12));

-- Location: LCCOMB_X64_Y1_N2
\dut|comb_3|out[13]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[13]~51_combout\ = (\dut|comb_3|out\(13) & (!\dut|comb_3|out[12]~50\)) # (!\dut|comb_3|out\(13) & ((\dut|comb_3|out[12]~50\) # (GND)))
-- \dut|comb_3|out[13]~52\ = CARRY((!\dut|comb_3|out[12]~50\) # (!\dut|comb_3|out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(13),
	datad => VCC,
	cin => \dut|comb_3|out[12]~50\,
	combout => \dut|comb_3|out[13]~51_combout\,
	cout => \dut|comb_3|out[13]~52\);

-- Location: LCFF_X64_Y1_N3
\dut|comb_3|out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[13]~51_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(13));

-- Location: LCCOMB_X64_Y1_N4
\dut|comb_3|out[14]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[14]~53_combout\ = (\dut|comb_3|out\(14) & (\dut|comb_3|out[13]~52\ $ (GND))) # (!\dut|comb_3|out\(14) & (!\dut|comb_3|out[13]~52\ & VCC))
-- \dut|comb_3|out[14]~54\ = CARRY((\dut|comb_3|out\(14) & !\dut|comb_3|out[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(14),
	datad => VCC,
	cin => \dut|comb_3|out[13]~52\,
	combout => \dut|comb_3|out[14]~53_combout\,
	cout => \dut|comb_3|out[14]~54\);

-- Location: LCFF_X64_Y1_N5
\dut|comb_3|out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[14]~53_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(14));

-- Location: LCCOMB_X64_Y1_N6
\dut|comb_3|out[15]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[15]~55_combout\ = (\dut|comb_3|out\(15) & (!\dut|comb_3|out[14]~54\)) # (!\dut|comb_3|out\(15) & ((\dut|comb_3|out[14]~54\) # (GND)))
-- \dut|comb_3|out[15]~56\ = CARRY((!\dut|comb_3|out[14]~54\) # (!\dut|comb_3|out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(15),
	datad => VCC,
	cin => \dut|comb_3|out[14]~54\,
	combout => \dut|comb_3|out[15]~55_combout\,
	cout => \dut|comb_3|out[15]~56\);

-- Location: LCCOMB_X64_Y1_N8
\dut|comb_3|out[16]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[16]~57_combout\ = (\dut|comb_3|out\(16) & (\dut|comb_3|out[15]~56\ $ (GND))) # (!\dut|comb_3|out\(16) & (!\dut|comb_3|out[15]~56\ & VCC))
-- \dut|comb_3|out[16]~58\ = CARRY((\dut|comb_3|out\(16) & !\dut|comb_3|out[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(16),
	datad => VCC,
	cin => \dut|comb_3|out[15]~56\,
	combout => \dut|comb_3|out[16]~57_combout\,
	cout => \dut|comb_3|out[16]~58\);

-- Location: LCFF_X64_Y1_N9
\dut|comb_3|out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[16]~57_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(16));

-- Location: LCCOMB_X64_Y1_N10
\dut|comb_3|out[17]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[17]~59_combout\ = (\dut|comb_3|out\(17) & (!\dut|comb_3|out[16]~58\)) # (!\dut|comb_3|out\(17) & ((\dut|comb_3|out[16]~58\) # (GND)))
-- \dut|comb_3|out[17]~60\ = CARRY((!\dut|comb_3|out[16]~58\) # (!\dut|comb_3|out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(17),
	datad => VCC,
	cin => \dut|comb_3|out[16]~58\,
	combout => \dut|comb_3|out[17]~59_combout\,
	cout => \dut|comb_3|out[17]~60\);

-- Location: LCCOMB_X64_Y1_N12
\dut|comb_3|out[18]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[18]~61_combout\ = (\dut|comb_3|out\(18) & (\dut|comb_3|out[17]~60\ $ (GND))) # (!\dut|comb_3|out\(18) & (!\dut|comb_3|out[17]~60\ & VCC))
-- \dut|comb_3|out[18]~62\ = CARRY((\dut|comb_3|out\(18) & !\dut|comb_3|out[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(18),
	datad => VCC,
	cin => \dut|comb_3|out[17]~60\,
	combout => \dut|comb_3|out[18]~61_combout\,
	cout => \dut|comb_3|out[18]~62\);

-- Location: LCCOMB_X64_Y1_N14
\dut|comb_3|out[19]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[19]~63_combout\ = (\dut|comb_3|out\(19) & (!\dut|comb_3|out[18]~62\)) # (!\dut|comb_3|out\(19) & ((\dut|comb_3|out[18]~62\) # (GND)))
-- \dut|comb_3|out[19]~64\ = CARRY((!\dut|comb_3|out[18]~62\) # (!\dut|comb_3|out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(19),
	datad => VCC,
	cin => \dut|comb_3|out[18]~62\,
	combout => \dut|comb_3|out[19]~63_combout\,
	cout => \dut|comb_3|out[19]~64\);

-- Location: LCFF_X64_Y1_N15
\dut|comb_3|out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[19]~63_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(19));

-- Location: LCCOMB_X64_Y1_N18
\dut|comb_3|out[21]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[21]~67_combout\ = (\dut|comb_3|out\(21) & (!\dut|comb_3|out[20]~66\)) # (!\dut|comb_3|out\(21) & ((\dut|comb_3|out[20]~66\) # (GND)))
-- \dut|comb_3|out[21]~68\ = CARRY((!\dut|comb_3|out[20]~66\) # (!\dut|comb_3|out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(21),
	datad => VCC,
	cin => \dut|comb_3|out[20]~66\,
	combout => \dut|comb_3|out[21]~67_combout\,
	cout => \dut|comb_3|out[21]~68\);

-- Location: LCFF_X64_Y1_N19
\dut|comb_3|out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[21]~67_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(21));

-- Location: LCCOMB_X64_Y1_N20
\dut|comb_3|out[22]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|out[22]~69_combout\ = (\dut|comb_3|out\(22) & (\dut|comb_3|out[21]~68\ $ (GND))) # (!\dut|comb_3|out\(22) & (!\dut|comb_3|out[21]~68\ & VCC))
-- \dut|comb_3|out[22]~70\ = CARRY((\dut|comb_3|out\(22) & !\dut|comb_3|out[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(22),
	datad => VCC,
	cin => \dut|comb_3|out[21]~68\,
	combout => \dut|comb_3|out[22]~69_combout\,
	cout => \dut|comb_3|out[22]~70\);

-- Location: LCFF_X64_Y1_N23
\dut|comb_3|out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[23]~71_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(23));

-- Location: LCFF_X64_Y1_N21
\dut|comb_3|out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[22]~69_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(22));

-- Location: LCFF_X64_Y1_N13
\dut|comb_3|out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[18]~61_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(18));

-- Location: LCCOMB_X64_Y1_N30
\dut|comb_3|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|LessThan0~4_combout\ = (((!\dut|comb_3|out\(17) & !\dut|comb_3|out\(16))) # (!\dut|comb_3|out\(18))) # (!\dut|comb_3|out\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(17),
	datab => \dut|comb_3|out\(19),
	datac => \dut|comb_3|out\(16),
	datad => \dut|comb_3|out\(18),
	combout => \dut|comb_3|LessThan0~4_combout\);

-- Location: LCCOMB_X64_Y1_N28
\dut|comb_3|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|LessThan0~5_combout\ = (((\dut|comb_3|LessThan0~4_combout\) # (!\dut|comb_3|out\(22))) # (!\dut|comb_3|out\(21))) # (!\dut|comb_3|out\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(20),
	datab => \dut|comb_3|out\(21),
	datac => \dut|comb_3|out\(22),
	datad => \dut|comb_3|LessThan0~4_combout\,
	combout => \dut|comb_3|LessThan0~5_combout\);

-- Location: LCFF_X64_Y2_N21
\dut|comb_3|out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[6]~37_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(6));

-- Location: LCCOMB_X64_Y2_N0
\dut|comb_3|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|LessThan0~2_combout\ = (!\dut|comb_3|out\(8) & (!\dut|comb_3|out\(7) & (!\dut|comb_3|out\(6) & !\dut|comb_3|out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(8),
	datab => \dut|comb_3|out\(7),
	datac => \dut|comb_3|out\(6),
	datad => \dut|comb_3|out\(9),
	combout => \dut|comb_3|LessThan0~2_combout\);

-- Location: LCFF_X64_Y1_N11
\dut|comb_3|out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[17]~59_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(17));

-- Location: LCFF_X64_Y1_N7
\dut|comb_3|out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[15]~55_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(15));

-- Location: LCCOMB_X64_Y2_N4
\dut|comb_3|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|LessThan0~0_combout\ = (!\dut|comb_3|out\(23) & (!\dut|comb_3|out\(17) & !\dut|comb_3|out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|comb_3|out\(23),
	datac => \dut|comb_3|out\(17),
	datad => \dut|comb_3|out\(15),
	combout => \dut|comb_3|LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y2_N2
\dut|comb_3|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|LessThan0~1_combout\ = (((!\dut|comb_3|out\(13)) # (!\dut|comb_3|out\(12))) # (!\dut|comb_3|out\(14))) # (!\dut|comb_3|out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(11),
	datab => \dut|comb_3|out\(14),
	datac => \dut|comb_3|out\(12),
	datad => \dut|comb_3|out\(13),
	combout => \dut|comb_3|LessThan0~1_combout\);

-- Location: LCCOMB_X64_Y2_N6
\dut|comb_3|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|LessThan0~3_combout\ = (\dut|comb_3|LessThan0~0_combout\ & ((\dut|comb_3|LessThan0~1_combout\) # ((!\dut|comb_3|out\(10) & \dut|comb_3|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(10),
	datab => \dut|comb_3|LessThan0~2_combout\,
	datac => \dut|comb_3|LessThan0~0_combout\,
	datad => \dut|comb_3|LessThan0~1_combout\,
	combout => \dut|comb_3|LessThan0~3_combout\);

-- Location: LCCOMB_X64_Y1_N26
\dut|comb_3|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|comb_3|LessThan0~6_combout\ = (\dut|comb_3|out\(24) & (!\dut|comb_3|LessThan0~3_combout\ & ((\dut|comb_3|out\(23)) # (!\dut|comb_3|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|comb_3|out\(24),
	datab => \dut|comb_3|out\(23),
	datac => \dut|comb_3|LessThan0~5_combout\,
	datad => \dut|comb_3|LessThan0~3_combout\,
	combout => \dut|comb_3|LessThan0~6_combout\);

-- Location: LCFF_X64_Y2_N9
\dut|comb_3|out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|comb_3|out[0]~25_combout\,
	sclr => \dut|comb_3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|comb_3|out\(0));

-- Location: LCCOMB_X60_Y2_N24
\dut|clk_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|clk_out~0_combout\ = \dut|clk_out~regout\ $ (\dut|comb_3|out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_out~regout\,
	datad => \dut|comb_3|out\(0),
	combout => \dut|clk_out~0_combout\);

-- Location: LCFF_X60_Y2_N25
\dut|clk_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_out~regout\);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dut|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));
END structure;


