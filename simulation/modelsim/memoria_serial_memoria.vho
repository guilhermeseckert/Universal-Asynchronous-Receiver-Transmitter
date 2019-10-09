-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/13/2018 13:55:20"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	memoria_serial_memoria IS
    PORT (
	address : IN std_logic_vector(3 DOWNTO 0);
	data : INOUT std_logic_vector(3 DOWNTO 0);
	WR : IN std_logic;
	RD : IN std_logic
	);
END memoria_serial_memoria;

-- Design Ports Information
-- data[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memoria_serial_memoria IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WR : std_logic;
SIGNAL ww_RD : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \RD~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \WR~input_o\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \mem~4_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \mem~12_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \mem~8_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \mem~0_combout\ : std_logic;
SIGNAL \mem~64_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \mem~36_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \mem~40_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \mem~44_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \mem~32_combout\ : std_logic;
SIGNAL \mem~66_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \mem~48_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \mem~56_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \mem~60_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \mem~52_combout\ : std_logic;
SIGNAL \mem~67_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \mem~16_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \mem~24_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \mem~28_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \mem~20_combout\ : std_logic;
SIGNAL \mem~65_combout\ : std_logic;
SIGNAL \mem~68_combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \mem~13_combout\ : std_logic;
SIGNAL \mem~29_combout\ : std_logic;
SIGNAL \mem~61_combout\ : std_logic;
SIGNAL \mem~45_combout\ : std_logic;
SIGNAL \mem~72_combout\ : std_logic;
SIGNAL \mem~1_combout\ : std_logic;
SIGNAL \mem~17_combout\ : std_logic;
SIGNAL \mem~49_combout\ : std_logic;
SIGNAL \mem~33_combout\ : std_logic;
SIGNAL \mem~69_combout\ : std_logic;
SIGNAL \mem~25_combout\ : std_logic;
SIGNAL \mem~41_combout\ : std_logic;
SIGNAL \mem~57_combout\ : std_logic;
SIGNAL \mem~9_combout\ : std_logic;
SIGNAL \mem~71_combout\ : std_logic;
SIGNAL \mem~53_combout\ : std_logic;
SIGNAL \mem~21_combout\ : std_logic;
SIGNAL \mem~37_combout\ : std_logic;
SIGNAL \mem~5_combout\ : std_logic;
SIGNAL \mem~70_combout\ : std_logic;
SIGNAL \mem~73_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \mem~34_combout\ : std_logic;
SIGNAL \mem~38_combout\ : std_logic;
SIGNAL \mem~46_combout\ : std_logic;
SIGNAL \mem~42_combout\ : std_logic;
SIGNAL \mem~76_combout\ : std_logic;
SIGNAL \mem~18_combout\ : std_logic;
SIGNAL \mem~22_combout\ : std_logic;
SIGNAL \mem~30_combout\ : std_logic;
SIGNAL \mem~26_combout\ : std_logic;
SIGNAL \mem~75_combout\ : std_logic;
SIGNAL \mem~50_combout\ : std_logic;
SIGNAL \mem~54_combout\ : std_logic;
SIGNAL \mem~62_combout\ : std_logic;
SIGNAL \mem~58_combout\ : std_logic;
SIGNAL \mem~77_combout\ : std_logic;
SIGNAL \mem~2_combout\ : std_logic;
SIGNAL \mem~10_combout\ : std_logic;
SIGNAL \mem~14_combout\ : std_logic;
SIGNAL \mem~6_combout\ : std_logic;
SIGNAL \mem~74_combout\ : std_logic;
SIGNAL \mem~78_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \mem~23_combout\ : std_logic;
SIGNAL \mem~39_combout\ : std_logic;
SIGNAL \mem~7_combout\ : std_logic;
SIGNAL \mem~55_combout\ : std_logic;
SIGNAL \mem~80_combout\ : std_logic;
SIGNAL \mem~59_combout\ : std_logic;
SIGNAL \mem~43_combout\ : std_logic;
SIGNAL \mem~11_combout\ : std_logic;
SIGNAL \mem~27_combout\ : std_logic;
SIGNAL \mem~81_combout\ : std_logic;
SIGNAL \mem~31_combout\ : std_logic;
SIGNAL \mem~15_combout\ : std_logic;
SIGNAL \mem~63_combout\ : std_logic;
SIGNAL \mem~47_combout\ : std_logic;
SIGNAL \mem~82_combout\ : std_logic;
SIGNAL \mem~35_combout\ : std_logic;
SIGNAL \mem~19_combout\ : std_logic;
SIGNAL \mem~51_combout\ : std_logic;
SIGNAL \mem~3_combout\ : std_logic;
SIGNAL \mem~79_combout\ : std_logic;
SIGNAL \mem~83_combout\ : std_logic;
SIGNAL data_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_WR~input_o\ : std_logic;
SIGNAL \ALT_INV_address[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD~input_o\ : std_logic;
SIGNAL \ALT_INV_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem~63_combout\ : std_logic;
SIGNAL \ALT_INV_mem~47_combout\ : std_logic;
SIGNAL \ALT_INV_mem~31_combout\ : std_logic;
SIGNAL \ALT_INV_mem~15_combout\ : std_logic;
SIGNAL \ALT_INV_mem~59_combout\ : std_logic;
SIGNAL \ALT_INV_mem~43_combout\ : std_logic;
SIGNAL \ALT_INV_mem~27_combout\ : std_logic;
SIGNAL \ALT_INV_mem~11_combout\ : std_logic;
SIGNAL \ALT_INV_mem~55_combout\ : std_logic;
SIGNAL \ALT_INV_mem~39_combout\ : std_logic;
SIGNAL \ALT_INV_mem~23_combout\ : std_logic;
SIGNAL \ALT_INV_mem~7_combout\ : std_logic;
SIGNAL \ALT_INV_mem~51_combout\ : std_logic;
SIGNAL \ALT_INV_mem~35_combout\ : std_logic;
SIGNAL \ALT_INV_mem~19_combout\ : std_logic;
SIGNAL \ALT_INV_mem~3_combout\ : std_logic;
SIGNAL \ALT_INV_mem~62_combout\ : std_logic;
SIGNAL \ALT_INV_mem~58_combout\ : std_logic;
SIGNAL \ALT_INV_mem~54_combout\ : std_logic;
SIGNAL \ALT_INV_mem~50_combout\ : std_logic;
SIGNAL \ALT_INV_mem~46_combout\ : std_logic;
SIGNAL \ALT_INV_mem~42_combout\ : std_logic;
SIGNAL \ALT_INV_mem~38_combout\ : std_logic;
SIGNAL \ALT_INV_mem~34_combout\ : std_logic;
SIGNAL \ALT_INV_mem~30_combout\ : std_logic;
SIGNAL \ALT_INV_mem~26_combout\ : std_logic;
SIGNAL \ALT_INV_mem~22_combout\ : std_logic;
SIGNAL \ALT_INV_mem~18_combout\ : std_logic;
SIGNAL \ALT_INV_mem~14_combout\ : std_logic;
SIGNAL \ALT_INV_mem~10_combout\ : std_logic;
SIGNAL \ALT_INV_mem~6_combout\ : std_logic;
SIGNAL \ALT_INV_mem~2_combout\ : std_logic;
SIGNAL \ALT_INV_mem~61_combout\ : std_logic;
SIGNAL \ALT_INV_mem~45_combout\ : std_logic;
SIGNAL \ALT_INV_mem~29_combout\ : std_logic;
SIGNAL \ALT_INV_mem~13_combout\ : std_logic;
SIGNAL \ALT_INV_mem~57_combout\ : std_logic;
SIGNAL \ALT_INV_mem~41_combout\ : std_logic;
SIGNAL \ALT_INV_mem~25_combout\ : std_logic;
SIGNAL \ALT_INV_mem~9_combout\ : std_logic;
SIGNAL \ALT_INV_mem~53_combout\ : std_logic;
SIGNAL \ALT_INV_mem~37_combout\ : std_logic;
SIGNAL \ALT_INV_mem~21_combout\ : std_logic;
SIGNAL \ALT_INV_mem~5_combout\ : std_logic;
SIGNAL \ALT_INV_mem~49_combout\ : std_logic;
SIGNAL \ALT_INV_mem~33_combout\ : std_logic;
SIGNAL \ALT_INV_mem~17_combout\ : std_logic;
SIGNAL \ALT_INV_mem~1_combout\ : std_logic;
SIGNAL \ALT_INV_mem~60_combout\ : std_logic;
SIGNAL \ALT_INV_mem~56_combout\ : std_logic;
SIGNAL \ALT_INV_mem~52_combout\ : std_logic;
SIGNAL \ALT_INV_mem~48_combout\ : std_logic;
SIGNAL \ALT_INV_mem~44_combout\ : std_logic;
SIGNAL \ALT_INV_mem~40_combout\ : std_logic;
SIGNAL \ALT_INV_mem~36_combout\ : std_logic;
SIGNAL \ALT_INV_mem~32_combout\ : std_logic;
SIGNAL \ALT_INV_mem~28_combout\ : std_logic;
SIGNAL \ALT_INV_mem~24_combout\ : std_logic;
SIGNAL \ALT_INV_mem~20_combout\ : std_logic;
SIGNAL \ALT_INV_mem~16_combout\ : std_logic;
SIGNAL \ALT_INV_mem~12_combout\ : std_logic;
SIGNAL \ALT_INV_mem~8_combout\ : std_logic;
SIGNAL \ALT_INV_mem~4_combout\ : std_logic;
SIGNAL \ALT_INV_mem~0_combout\ : std_logic;
SIGNAL ALT_INV_data_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rtl~15_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~14_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~13_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~12_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~11_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~10_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~9_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~8_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~7_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~6_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~5_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~4_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~3_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~2_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~1_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \ALT_INV_mem~83_combout\ : std_logic;
SIGNAL \ALT_INV_mem~82_combout\ : std_logic;
SIGNAL \ALT_INV_mem~81_combout\ : std_logic;
SIGNAL \ALT_INV_mem~80_combout\ : std_logic;
SIGNAL \ALT_INV_mem~79_combout\ : std_logic;
SIGNAL \ALT_INV_mem~78_combout\ : std_logic;
SIGNAL \ALT_INV_mem~77_combout\ : std_logic;
SIGNAL \ALT_INV_mem~76_combout\ : std_logic;
SIGNAL \ALT_INV_mem~75_combout\ : std_logic;
SIGNAL \ALT_INV_mem~74_combout\ : std_logic;
SIGNAL \ALT_INV_mem~73_combout\ : std_logic;
SIGNAL \ALT_INV_mem~72_combout\ : std_logic;
SIGNAL \ALT_INV_mem~71_combout\ : std_logic;
SIGNAL \ALT_INV_mem~70_combout\ : std_logic;
SIGNAL \ALT_INV_mem~69_combout\ : std_logic;
SIGNAL \ALT_INV_mem~68_combout\ : std_logic;
SIGNAL \ALT_INV_mem~67_combout\ : std_logic;
SIGNAL \ALT_INV_mem~66_combout\ : std_logic;
SIGNAL \ALT_INV_mem~65_combout\ : std_logic;
SIGNAL \ALT_INV_mem~64_combout\ : std_logic;

BEGIN

ww_address <= address;
ww_WR <= WR;
ww_RD <= RD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WR~input_o\ <= NOT \WR~input_o\;
\ALT_INV_address[3]~input_o\ <= NOT \address[3]~input_o\;
\ALT_INV_address[2]~input_o\ <= NOT \address[2]~input_o\;
\ALT_INV_address[1]~input_o\ <= NOT \address[1]~input_o\;
\ALT_INV_address[0]~input_o\ <= NOT \address[0]~input_o\;
\ALT_INV_RD~input_o\ <= NOT \RD~input_o\;
\ALT_INV_data[3]~input_o\ <= NOT \data[3]~input_o\;
\ALT_INV_data[2]~input_o\ <= NOT \data[2]~input_o\;
\ALT_INV_data[1]~input_o\ <= NOT \data[1]~input_o\;
\ALT_INV_data[0]~input_o\ <= NOT \data[0]~input_o\;
\ALT_INV_mem~63_combout\ <= NOT \mem~63_combout\;
\ALT_INV_mem~47_combout\ <= NOT \mem~47_combout\;
\ALT_INV_mem~31_combout\ <= NOT \mem~31_combout\;
\ALT_INV_mem~15_combout\ <= NOT \mem~15_combout\;
\ALT_INV_mem~59_combout\ <= NOT \mem~59_combout\;
\ALT_INV_mem~43_combout\ <= NOT \mem~43_combout\;
\ALT_INV_mem~27_combout\ <= NOT \mem~27_combout\;
\ALT_INV_mem~11_combout\ <= NOT \mem~11_combout\;
\ALT_INV_mem~55_combout\ <= NOT \mem~55_combout\;
\ALT_INV_mem~39_combout\ <= NOT \mem~39_combout\;
\ALT_INV_mem~23_combout\ <= NOT \mem~23_combout\;
\ALT_INV_mem~7_combout\ <= NOT \mem~7_combout\;
\ALT_INV_mem~51_combout\ <= NOT \mem~51_combout\;
\ALT_INV_mem~35_combout\ <= NOT \mem~35_combout\;
\ALT_INV_mem~19_combout\ <= NOT \mem~19_combout\;
\ALT_INV_mem~3_combout\ <= NOT \mem~3_combout\;
\ALT_INV_mem~62_combout\ <= NOT \mem~62_combout\;
\ALT_INV_mem~58_combout\ <= NOT \mem~58_combout\;
\ALT_INV_mem~54_combout\ <= NOT \mem~54_combout\;
\ALT_INV_mem~50_combout\ <= NOT \mem~50_combout\;
\ALT_INV_mem~46_combout\ <= NOT \mem~46_combout\;
\ALT_INV_mem~42_combout\ <= NOT \mem~42_combout\;
\ALT_INV_mem~38_combout\ <= NOT \mem~38_combout\;
\ALT_INV_mem~34_combout\ <= NOT \mem~34_combout\;
\ALT_INV_mem~30_combout\ <= NOT \mem~30_combout\;
\ALT_INV_mem~26_combout\ <= NOT \mem~26_combout\;
\ALT_INV_mem~22_combout\ <= NOT \mem~22_combout\;
\ALT_INV_mem~18_combout\ <= NOT \mem~18_combout\;
\ALT_INV_mem~14_combout\ <= NOT \mem~14_combout\;
\ALT_INV_mem~10_combout\ <= NOT \mem~10_combout\;
\ALT_INV_mem~6_combout\ <= NOT \mem~6_combout\;
\ALT_INV_mem~2_combout\ <= NOT \mem~2_combout\;
\ALT_INV_mem~61_combout\ <= NOT \mem~61_combout\;
\ALT_INV_mem~45_combout\ <= NOT \mem~45_combout\;
\ALT_INV_mem~29_combout\ <= NOT \mem~29_combout\;
\ALT_INV_mem~13_combout\ <= NOT \mem~13_combout\;
\ALT_INV_mem~57_combout\ <= NOT \mem~57_combout\;
\ALT_INV_mem~41_combout\ <= NOT \mem~41_combout\;
\ALT_INV_mem~25_combout\ <= NOT \mem~25_combout\;
\ALT_INV_mem~9_combout\ <= NOT \mem~9_combout\;
\ALT_INV_mem~53_combout\ <= NOT \mem~53_combout\;
\ALT_INV_mem~37_combout\ <= NOT \mem~37_combout\;
\ALT_INV_mem~21_combout\ <= NOT \mem~21_combout\;
\ALT_INV_mem~5_combout\ <= NOT \mem~5_combout\;
\ALT_INV_mem~49_combout\ <= NOT \mem~49_combout\;
\ALT_INV_mem~33_combout\ <= NOT \mem~33_combout\;
\ALT_INV_mem~17_combout\ <= NOT \mem~17_combout\;
\ALT_INV_mem~1_combout\ <= NOT \mem~1_combout\;
\ALT_INV_mem~60_combout\ <= NOT \mem~60_combout\;
\ALT_INV_mem~56_combout\ <= NOT \mem~56_combout\;
\ALT_INV_mem~52_combout\ <= NOT \mem~52_combout\;
\ALT_INV_mem~48_combout\ <= NOT \mem~48_combout\;
\ALT_INV_mem~44_combout\ <= NOT \mem~44_combout\;
\ALT_INV_mem~40_combout\ <= NOT \mem~40_combout\;
\ALT_INV_mem~36_combout\ <= NOT \mem~36_combout\;
\ALT_INV_mem~32_combout\ <= NOT \mem~32_combout\;
\ALT_INV_mem~28_combout\ <= NOT \mem~28_combout\;
\ALT_INV_mem~24_combout\ <= NOT \mem~24_combout\;
\ALT_INV_mem~20_combout\ <= NOT \mem~20_combout\;
\ALT_INV_mem~16_combout\ <= NOT \mem~16_combout\;
\ALT_INV_mem~12_combout\ <= NOT \mem~12_combout\;
\ALT_INV_mem~8_combout\ <= NOT \mem~8_combout\;
\ALT_INV_mem~4_combout\ <= NOT \mem~4_combout\;
\ALT_INV_mem~0_combout\ <= NOT \mem~0_combout\;
ALT_INV_data_out(3) <= NOT data_out(3);
ALT_INV_data_out(2) <= NOT data_out(2);
ALT_INV_data_out(1) <= NOT data_out(1);
ALT_INV_data_out(0) <= NOT data_out(0);
\ALT_INV_rtl~15_combout\ <= NOT \rtl~15_combout\;
\ALT_INV_rtl~14_combout\ <= NOT \rtl~14_combout\;
\ALT_INV_rtl~13_combout\ <= NOT \rtl~13_combout\;
\ALT_INV_rtl~12_combout\ <= NOT \rtl~12_combout\;
\ALT_INV_rtl~11_combout\ <= NOT \rtl~11_combout\;
\ALT_INV_rtl~10_combout\ <= NOT \rtl~10_combout\;
\ALT_INV_rtl~9_combout\ <= NOT \rtl~9_combout\;
\ALT_INV_rtl~8_combout\ <= NOT \rtl~8_combout\;
\ALT_INV_rtl~7_combout\ <= NOT \rtl~7_combout\;
\ALT_INV_rtl~6_combout\ <= NOT \rtl~6_combout\;
\ALT_INV_rtl~5_combout\ <= NOT \rtl~5_combout\;
\ALT_INV_rtl~4_combout\ <= NOT \rtl~4_combout\;
\ALT_INV_rtl~3_combout\ <= NOT \rtl~3_combout\;
\ALT_INV_rtl~2_combout\ <= NOT \rtl~2_combout\;
\ALT_INV_rtl~1_combout\ <= NOT \rtl~1_combout\;
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\ALT_INV_mem~83_combout\ <= NOT \mem~83_combout\;
\ALT_INV_mem~82_combout\ <= NOT \mem~82_combout\;
\ALT_INV_mem~81_combout\ <= NOT \mem~81_combout\;
\ALT_INV_mem~80_combout\ <= NOT \mem~80_combout\;
\ALT_INV_mem~79_combout\ <= NOT \mem~79_combout\;
\ALT_INV_mem~78_combout\ <= NOT \mem~78_combout\;
\ALT_INV_mem~77_combout\ <= NOT \mem~77_combout\;
\ALT_INV_mem~76_combout\ <= NOT \mem~76_combout\;
\ALT_INV_mem~75_combout\ <= NOT \mem~75_combout\;
\ALT_INV_mem~74_combout\ <= NOT \mem~74_combout\;
\ALT_INV_mem~73_combout\ <= NOT \mem~73_combout\;
\ALT_INV_mem~72_combout\ <= NOT \mem~72_combout\;
\ALT_INV_mem~71_combout\ <= NOT \mem~71_combout\;
\ALT_INV_mem~70_combout\ <= NOT \mem~70_combout\;
\ALT_INV_mem~69_combout\ <= NOT \mem~69_combout\;
\ALT_INV_mem~68_combout\ <= NOT \mem~68_combout\;
\ALT_INV_mem~67_combout\ <= NOT \mem~67_combout\;
\ALT_INV_mem~66_combout\ <= NOT \mem~66_combout\;
\ALT_INV_mem~65_combout\ <= NOT \mem~65_combout\;
\ALT_INV_mem~64_combout\ <= NOT \mem~64_combout\;

-- Location: IOOBUF_X89_Y36_N56
\data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(0),
	oe => \RD~input_o\,
	devoe => ww_devoe,
	o => data(0));

-- Location: IOOBUF_X89_Y35_N96
\data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(1),
	oe => \RD~input_o\,
	devoe => ww_devoe,
	o => data(1));

-- Location: IOOBUF_X89_Y35_N79
\data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(2),
	oe => \RD~input_o\,
	devoe => ww_devoe,
	o => data(2));

-- Location: IOOBUF_X89_Y36_N22
\data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(3),
	oe => \RD~input_o\,
	devoe => ww_devoe,
	o => data(3));

-- Location: IOIBUF_X89_Y35_N44
\RD~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD,
	o => \RD~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\WR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR,
	o => \WR~input_o\);

-- Location: LABCELL_X83_Y36_N24
\rtl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = ( \WR~input_o\ & ( (!\address[1]~input_o\ & (!\address[2]~input_o\ & (!\address[3]~input_o\ & \address[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[1]~input_o\,
	datab => \ALT_INV_address[2]~input_o\,
	datac => \ALT_INV_address[3]~input_o\,
	datad => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_WR~input_o\,
	combout => \rtl~1_combout\);

-- Location: MLABCELL_X82_Y36_N45
\mem~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~4_combout\ = ( \rtl~1_combout\ & ( \data[0]~input_o\ ) ) # ( !\rtl~1_combout\ & ( \mem~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_mem~4_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \mem~4_combout\);

-- Location: LABCELL_X83_Y35_N36
\rtl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = ( !\address[3]~input_o\ & ( (!\address[2]~input_o\ & (\address[0]~input_o\ & (\address[1]~input_o\ & \WR~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[0]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_WR~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \rtl~3_combout\);

-- Location: MLABCELL_X82_Y36_N15
\mem~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~12_combout\ = ( \mem~12_combout\ & ( (!\rtl~3_combout\) # (\data[0]~input_o\) ) ) # ( !\mem~12_combout\ & ( (\data[0]~input_o\ & \rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datac => \ALT_INV_rtl~3_combout\,
	dataf => \ALT_INV_mem~12_combout\,
	combout => \mem~12_combout\);

-- Location: LABCELL_X83_Y36_N3
\rtl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = ( \WR~input_o\ & ( (!\address[3]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[3]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_WR~input_o\,
	combout => \rtl~2_combout\);

-- Location: LABCELL_X83_Y36_N12
\mem~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~8_combout\ = ( \mem~8_combout\ & ( (!\rtl~2_combout\) # (\data[0]~input_o\) ) ) # ( !\mem~8_combout\ & ( (\data[0]~input_o\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \ALT_INV_mem~8_combout\,
	combout => \mem~8_combout\);

-- Location: LABCELL_X83_Y36_N57
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( \WR~input_o\ & ( (!\address[3]~input_o\ & (!\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[3]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_WR~input_o\,
	combout => \rtl~0_combout\);

-- Location: MLABCELL_X82_Y36_N57
\mem~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~0_combout\ = ( \rtl~0_combout\ & ( \data[0]~input_o\ ) ) # ( !\rtl~0_combout\ & ( \mem~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_mem~0_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \mem~0_combout\);

-- Location: MLABCELL_X82_Y36_N30
\mem~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~64_combout\ = ( \mem~8_combout\ & ( \mem~0_combout\ & ( (!\address[0]~input_o\) # ((!\address[1]~input_o\ & (\mem~4_combout\)) # (\address[1]~input_o\ & ((\mem~12_combout\)))) ) ) ) # ( !\mem~8_combout\ & ( \mem~0_combout\ & ( (!\address[0]~input_o\ 
-- & (((!\address[1]~input_o\)))) # (\address[0]~input_o\ & ((!\address[1]~input_o\ & (\mem~4_combout\)) # (\address[1]~input_o\ & ((\mem~12_combout\))))) ) ) ) # ( \mem~8_combout\ & ( !\mem~0_combout\ & ( (!\address[0]~input_o\ & (((\address[1]~input_o\)))) 
-- # (\address[0]~input_o\ & ((!\address[1]~input_o\ & (\mem~4_combout\)) # (\address[1]~input_o\ & ((\mem~12_combout\))))) ) ) ) # ( !\mem~8_combout\ & ( !\mem~0_combout\ & ( (\address[0]~input_o\ & ((!\address[1]~input_o\ & (\mem~4_combout\)) # 
-- (\address[1]~input_o\ & ((\mem~12_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_mem~4_combout\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_mem~12_combout\,
	datae => \ALT_INV_mem~8_combout\,
	dataf => \ALT_INV_mem~0_combout\,
	combout => \mem~64_combout\);

-- Location: LABCELL_X83_Y35_N39
\rtl~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = ( \WR~input_o\ & ( (!\address[2]~input_o\ & (\address[0]~input_o\ & (\address[3]~input_o\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[0]~input_o\,
	datac => \ALT_INV_address[3]~input_o\,
	datad => \ALT_INV_address[1]~input_o\,
	dataf => \ALT_INV_WR~input_o\,
	combout => \rtl~9_combout\);

-- Location: MLABCELL_X82_Y36_N51
\mem~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~36_combout\ = ( \mem~36_combout\ & ( (!\rtl~9_combout\) # (\data[0]~input_o\) ) ) # ( !\mem~36_combout\ & ( (\data[0]~input_o\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \ALT_INV_mem~36_combout\,
	combout => \mem~36_combout\);

-- Location: LABCELL_X83_Y35_N48
\rtl~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = ( \address[3]~input_o\ & ( (!\address[2]~input_o\ & (!\address[0]~input_o\ & (\address[1]~input_o\ & \WR~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[0]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_WR~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \rtl~10_combout\);

-- Location: LABCELL_X83_Y35_N9
\mem~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~40_combout\ = ( \rtl~10_combout\ & ( \data[0]~input_o\ ) ) # ( !\rtl~10_combout\ & ( \mem~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_mem~40_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \mem~40_combout\);

-- Location: LABCELL_X83_Y35_N51
\rtl~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = ( \WR~input_o\ & ( (!\address[2]~input_o\ & (\address[0]~input_o\ & (\address[3]~input_o\ & \address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[0]~input_o\,
	datac => \ALT_INV_address[3]~input_o\,
	datad => \ALT_INV_address[1]~input_o\,
	dataf => \ALT_INV_WR~input_o\,
	combout => \rtl~11_combout\);

-- Location: MLABCELL_X82_Y36_N42
\mem~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~44_combout\ = ( \mem~44_combout\ & ( (!\rtl~11_combout\) # (\data[0]~input_o\) ) ) # ( !\mem~44_combout\ & ( (\data[0]~input_o\ & \rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \ALT_INV_mem~44_combout\,
	combout => \mem~44_combout\);

-- Location: MLABCELL_X84_Y35_N45
\rtl~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = ( \WR~input_o\ & ( (!\address[0]~input_o\ & (\address[3]~input_o\ & (!\address[1]~input_o\ & !\address[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_WR~input_o\,
	combout => \rtl~8_combout\);

-- Location: LABCELL_X83_Y36_N0
\mem~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~32_combout\ = ( \mem~32_combout\ & ( (!\rtl~8_combout\) # (\data[0]~input_o\) ) ) # ( !\mem~32_combout\ & ( (\data[0]~input_o\ & \rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \ALT_INV_mem~32_combout\,
	combout => \mem~32_combout\);

-- Location: MLABCELL_X82_Y36_N36
\mem~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~66_combout\ = ( \mem~44_combout\ & ( \mem~32_combout\ & ( (!\address[0]~input_o\ & (((!\address[1]~input_o\) # (\mem~40_combout\)))) # (\address[0]~input_o\ & (((\address[1]~input_o\)) # (\mem~36_combout\))) ) ) ) # ( !\mem~44_combout\ & ( 
-- \mem~32_combout\ & ( (!\address[0]~input_o\ & (((!\address[1]~input_o\) # (\mem~40_combout\)))) # (\address[0]~input_o\ & (\mem~36_combout\ & (!\address[1]~input_o\))) ) ) ) # ( \mem~44_combout\ & ( !\mem~32_combout\ & ( (!\address[0]~input_o\ & 
-- (((\address[1]~input_o\ & \mem~40_combout\)))) # (\address[0]~input_o\ & (((\address[1]~input_o\)) # (\mem~36_combout\))) ) ) ) # ( !\mem~44_combout\ & ( !\mem~32_combout\ & ( (!\address[0]~input_o\ & (((\address[1]~input_o\ & \mem~40_combout\)))) # 
-- (\address[0]~input_o\ & (\mem~36_combout\ & (!\address[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~36_combout\,
	datab => \ALT_INV_address[0]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_mem~40_combout\,
	datae => \ALT_INV_mem~44_combout\,
	dataf => \ALT_INV_mem~32_combout\,
	combout => \mem~66_combout\);

-- Location: LABCELL_X83_Y35_N54
\rtl~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = ( !\address[0]~input_o\ & ( (!\address[1]~input_o\ & (\address[3]~input_o\ & (\address[2]~input_o\ & \WR~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[1]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_WR~input_o\,
	dataf => \ALT_INV_address[0]~input_o\,
	combout => \rtl~12_combout\);

-- Location: MLABCELL_X82_Y36_N54
\mem~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~48_combout\ = ( \rtl~12_combout\ & ( \data[0]~input_o\ ) ) # ( !\rtl~12_combout\ & ( \mem~48_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_mem~48_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \mem~48_combout\);

-- Location: LABCELL_X83_Y35_N30
\rtl~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = ( !\address[0]~input_o\ & ( (\address[1]~input_o\ & (\address[3]~input_o\ & (\address[2]~input_o\ & \WR~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[1]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_WR~input_o\,
	dataf => \ALT_INV_address[0]~input_o\,
	combout => \rtl~14_combout\);

-- Location: MLABCELL_X82_Y36_N48
\mem~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~56_combout\ = ( \mem~56_combout\ & ( (!\rtl~14_combout\) # (\data[0]~input_o\) ) ) # ( !\mem~56_combout\ & ( (\data[0]~input_o\ & \rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \ALT_INV_mem~56_combout\,
	combout => \mem~56_combout\);

-- Location: LABCELL_X83_Y35_N45
\rtl~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = ( \WR~input_o\ & ( (\address[2]~input_o\ & (\address[3]~input_o\ & (\address[0]~input_o\ & \address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_address[0]~input_o\,
	datad => \ALT_INV_address[1]~input_o\,
	dataf => \ALT_INV_WR~input_o\,
	combout => \rtl~15_combout\);

-- Location: MLABCELL_X82_Y36_N9
\mem~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~60_combout\ = ( \mem~60_combout\ & ( (!\rtl~15_combout\) # (\data[0]~input_o\) ) ) # ( !\mem~60_combout\ & ( (\data[0]~input_o\ & \rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \ALT_INV_mem~60_combout\,
	combout => \mem~60_combout\);

-- Location: LABCELL_X83_Y35_N3
\rtl~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = ( \WR~input_o\ & ( (\address[2]~input_o\ & (\address[3]~input_o\ & (\address[0]~input_o\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_address[0]~input_o\,
	datad => \ALT_INV_address[1]~input_o\,
	dataf => \ALT_INV_WR~input_o\,
	combout => \rtl~13_combout\);

-- Location: MLABCELL_X82_Y36_N12
\mem~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~52_combout\ = ( \mem~52_combout\ & ( (!\rtl~13_combout\) # (\data[0]~input_o\) ) ) # ( !\mem~52_combout\ & ( (\data[0]~input_o\ & \rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datac => \ALT_INV_rtl~13_combout\,
	dataf => \ALT_INV_mem~52_combout\,
	combout => \mem~52_combout\);

-- Location: MLABCELL_X82_Y36_N0
\mem~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~67_combout\ = ( \mem~60_combout\ & ( \mem~52_combout\ & ( ((!\address[1]~input_o\ & (\mem~48_combout\)) # (\address[1]~input_o\ & ((\mem~56_combout\)))) # (\address[0]~input_o\) ) ) ) # ( !\mem~60_combout\ & ( \mem~52_combout\ & ( 
-- (!\address[0]~input_o\ & ((!\address[1]~input_o\ & (\mem~48_combout\)) # (\address[1]~input_o\ & ((\mem~56_combout\))))) # (\address[0]~input_o\ & (((!\address[1]~input_o\)))) ) ) ) # ( \mem~60_combout\ & ( !\mem~52_combout\ & ( (!\address[0]~input_o\ & 
-- ((!\address[1]~input_o\ & (\mem~48_combout\)) # (\address[1]~input_o\ & ((\mem~56_combout\))))) # (\address[0]~input_o\ & (((\address[1]~input_o\)))) ) ) ) # ( !\mem~60_combout\ & ( !\mem~52_combout\ & ( (!\address[0]~input_o\ & ((!\address[1]~input_o\ & 
-- (\mem~48_combout\)) # (\address[1]~input_o\ & ((\mem~56_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~48_combout\,
	datab => \ALT_INV_address[0]~input_o\,
	datac => \ALT_INV_mem~56_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_mem~60_combout\,
	dataf => \ALT_INV_mem~52_combout\,
	combout => \mem~67_combout\);

-- Location: LABCELL_X83_Y35_N21
\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( \WR~input_o\ & ( (\address[2]~input_o\ & (!\address[3]~input_o\ & (!\address[0]~input_o\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_address[0]~input_o\,
	datad => \ALT_INV_address[1]~input_o\,
	dataf => \ALT_INV_WR~input_o\,
	combout => \rtl~4_combout\);

-- Location: LABCELL_X83_Y36_N15
\mem~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~16_combout\ = ( \rtl~4_combout\ & ( \data[0]~input_o\ ) ) # ( !\rtl~4_combout\ & ( \mem~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datac => \ALT_INV_mem~16_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \mem~16_combout\);

-- Location: LABCELL_X81_Y35_N30
\rtl~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = ( \address[1]~input_o\ & ( \WR~input_o\ & ( (\address[2]~input_o\ & (!\address[3]~input_o\ & !\address[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_address[0]~input_o\,
	datae => \ALT_INV_address[1]~input_o\,
	dataf => \ALT_INV_WR~input_o\,
	combout => \rtl~6_combout\);

-- Location: LABCELL_X81_Y35_N57
\mem~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~24_combout\ = ( \mem~24_combout\ & ( \rtl~6_combout\ & ( \data[0]~input_o\ ) ) ) # ( !\mem~24_combout\ & ( \rtl~6_combout\ & ( \data[0]~input_o\ ) ) ) # ( \mem~24_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[0]~input_o\,
	datae => \ALT_INV_mem~24_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \mem~24_combout\);

-- Location: LABCELL_X83_Y35_N12
\rtl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = ( \address[2]~input_o\ & ( (!\address[3]~input_o\ & (\address[0]~input_o\ & (\address[1]~input_o\ & \WR~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[3]~input_o\,
	datab => \ALT_INV_address[0]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_WR~input_o\,
	dataf => \ALT_INV_address[2]~input_o\,
	combout => \rtl~7_combout\);

-- Location: LABCELL_X83_Y36_N33
\mem~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~28_combout\ = ( \rtl~7_combout\ & ( \data[0]~input_o\ ) ) # ( !\rtl~7_combout\ & ( \mem~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_mem~28_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \mem~28_combout\);

-- Location: LABCELL_X83_Y35_N6
\rtl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = ( \address[0]~input_o\ & ( (\address[2]~input_o\ & (!\address[3]~input_o\ & (!\address[1]~input_o\ & \WR~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[2]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_WR~input_o\,
	dataf => \ALT_INV_address[0]~input_o\,
	combout => \rtl~5_combout\);

-- Location: LABCELL_X81_Y35_N39
\mem~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~20_combout\ = ( \rtl~5_combout\ & ( \mem~20_combout\ & ( \data[0]~input_o\ ) ) ) # ( !\rtl~5_combout\ & ( \mem~20_combout\ ) ) # ( \rtl~5_combout\ & ( !\mem~20_combout\ & ( \data[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[0]~input_o\,
	datae => \ALT_INV_rtl~5_combout\,
	dataf => \ALT_INV_mem~20_combout\,
	combout => \mem~20_combout\);

-- Location: MLABCELL_X82_Y36_N18
\mem~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~65_combout\ = ( \mem~28_combout\ & ( \mem~20_combout\ & ( ((!\address[1]~input_o\ & (\mem~16_combout\)) # (\address[1]~input_o\ & ((\mem~24_combout\)))) # (\address[0]~input_o\) ) ) ) # ( !\mem~28_combout\ & ( \mem~20_combout\ & ( 
-- (!\address[0]~input_o\ & ((!\address[1]~input_o\ & (\mem~16_combout\)) # (\address[1]~input_o\ & ((\mem~24_combout\))))) # (\address[0]~input_o\ & (((!\address[1]~input_o\)))) ) ) ) # ( \mem~28_combout\ & ( !\mem~20_combout\ & ( (!\address[0]~input_o\ & 
-- ((!\address[1]~input_o\ & (\mem~16_combout\)) # (\address[1]~input_o\ & ((\mem~24_combout\))))) # (\address[0]~input_o\ & (((\address[1]~input_o\)))) ) ) ) # ( !\mem~28_combout\ & ( !\mem~20_combout\ & ( (!\address[0]~input_o\ & ((!\address[1]~input_o\ & 
-- (\mem~16_combout\)) # (\address[1]~input_o\ & ((\mem~24_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~16_combout\,
	datab => \ALT_INV_address[0]~input_o\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_mem~24_combout\,
	datae => \ALT_INV_mem~28_combout\,
	dataf => \ALT_INV_mem~20_combout\,
	combout => \mem~65_combout\);

-- Location: MLABCELL_X82_Y36_N24
\mem~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~68_combout\ = ( \mem~67_combout\ & ( \mem~65_combout\ & ( ((!\address[3]~input_o\ & (\mem~64_combout\)) # (\address[3]~input_o\ & ((\mem~66_combout\)))) # (\address[2]~input_o\) ) ) ) # ( !\mem~67_combout\ & ( \mem~65_combout\ & ( 
-- (!\address[3]~input_o\ & (((\address[2]~input_o\)) # (\mem~64_combout\))) # (\address[3]~input_o\ & (((\mem~66_combout\ & !\address[2]~input_o\)))) ) ) ) # ( \mem~67_combout\ & ( !\mem~65_combout\ & ( (!\address[3]~input_o\ & (\mem~64_combout\ & 
-- ((!\address[2]~input_o\)))) # (\address[3]~input_o\ & (((\address[2]~input_o\) # (\mem~66_combout\)))) ) ) ) # ( !\mem~67_combout\ & ( !\mem~65_combout\ & ( (!\address[2]~input_o\ & ((!\address[3]~input_o\ & (\mem~64_combout\)) # (\address[3]~input_o\ & 
-- ((\mem~66_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[3]~input_o\,
	datab => \ALT_INV_mem~64_combout\,
	datac => \ALT_INV_mem~66_combout\,
	datad => \ALT_INV_address[2]~input_o\,
	datae => \ALT_INV_mem~67_combout\,
	dataf => \ALT_INV_mem~65_combout\,
	combout => \mem~68_combout\);

-- Location: MLABCELL_X82_Y36_N6
\data_out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- data_out(0) = ( \mem~68_combout\ & ( (\RD~input_o\) # (data_out(0)) ) ) # ( !\mem~68_combout\ & ( (data_out(0) & !\RD~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_data_out(0),
	datad => \ALT_INV_RD~input_o\,
	dataf => \ALT_INV_mem~68_combout\,
	combout => data_out(0));

-- Location: IOIBUF_X89_Y35_N95
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(1),
	o => \data[1]~input_o\);

-- Location: MLABCELL_X82_Y35_N57
\mem~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~13_combout\ = ( \mem~13_combout\ & ( (!\rtl~3_combout\) # (\data[1]~input_o\) ) ) # ( !\mem~13_combout\ & ( (\data[1]~input_o\ & \rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[1]~input_o\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \ALT_INV_mem~13_combout\,
	combout => \mem~13_combout\);

-- Location: MLABCELL_X82_Y35_N39
\mem~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~29_combout\ = ( \rtl~7_combout\ & ( \data[1]~input_o\ ) ) # ( !\rtl~7_combout\ & ( \mem~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[1]~input_o\,
	datac => \ALT_INV_mem~29_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \mem~29_combout\);

-- Location: MLABCELL_X82_Y35_N36
\mem~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~61_combout\ = ( \rtl~15_combout\ & ( \data[1]~input_o\ ) ) # ( !\rtl~15_combout\ & ( \mem~61_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[1]~input_o\,
	datad => \ALT_INV_mem~61_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \mem~61_combout\);

-- Location: MLABCELL_X82_Y35_N21
\mem~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~45_combout\ = ( \rtl~11_combout\ & ( \data[1]~input_o\ ) ) # ( !\rtl~11_combout\ & ( \mem~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[1]~input_o\,
	datad => \ALT_INV_mem~45_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \mem~45_combout\);

-- Location: MLABCELL_X82_Y35_N42
\mem~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~72_combout\ = ( \mem~61_combout\ & ( \mem~45_combout\ & ( ((!\address[2]~input_o\ & (\mem~13_combout\)) # (\address[2]~input_o\ & ((\mem~29_combout\)))) # (\address[3]~input_o\) ) ) ) # ( !\mem~61_combout\ & ( \mem~45_combout\ & ( 
-- (!\address[3]~input_o\ & ((!\address[2]~input_o\ & (\mem~13_combout\)) # (\address[2]~input_o\ & ((\mem~29_combout\))))) # (\address[3]~input_o\ & (((!\address[2]~input_o\)))) ) ) ) # ( \mem~61_combout\ & ( !\mem~45_combout\ & ( (!\address[3]~input_o\ & 
-- ((!\address[2]~input_o\ & (\mem~13_combout\)) # (\address[2]~input_o\ & ((\mem~29_combout\))))) # (\address[3]~input_o\ & (((\address[2]~input_o\)))) ) ) ) # ( !\mem~61_combout\ & ( !\mem~45_combout\ & ( (!\address[3]~input_o\ & ((!\address[2]~input_o\ & 
-- (\mem~13_combout\)) # (\address[2]~input_o\ & ((\mem~29_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~13_combout\,
	datab => \ALT_INV_mem~29_combout\,
	datac => \ALT_INV_address[3]~input_o\,
	datad => \ALT_INV_address[2]~input_o\,
	datae => \ALT_INV_mem~61_combout\,
	dataf => \ALT_INV_mem~45_combout\,
	combout => \mem~72_combout\);

-- Location: LABCELL_X83_Y36_N54
\mem~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~1_combout\ = ( \mem~1_combout\ & ( (!\rtl~0_combout\) # (\data[1]~input_o\) ) ) # ( !\mem~1_combout\ & ( (\data[1]~input_o\ & \rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[1]~input_o\,
	datad => \ALT_INV_rtl~0_combout\,
	dataf => \ALT_INV_mem~1_combout\,
	combout => \mem~1_combout\);

-- Location: LABCELL_X83_Y36_N30
\mem~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~17_combout\ = ( \rtl~4_combout\ & ( \data[1]~input_o\ ) ) # ( !\rtl~4_combout\ & ( \mem~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mem~17_combout\,
	datac => \ALT_INV_data[1]~input_o\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \mem~17_combout\);

-- Location: LABCELL_X83_Y36_N36
\mem~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~49_combout\ = ( \rtl~12_combout\ & ( \data[1]~input_o\ ) ) # ( !\rtl~12_combout\ & ( \mem~49_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[1]~input_o\,
	datad => \ALT_INV_mem~49_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \mem~49_combout\);

-- Location: LABCELL_X83_Y36_N39
\mem~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~33_combout\ = ( \mem~33_combout\ & ( (!\rtl~8_combout\) # (\data[1]~input_o\) ) ) # ( !\mem~33_combout\ & ( (\data[1]~input_o\ & \rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[1]~input_o\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \ALT_INV_mem~33_combout\,
	combout => \mem~33_combout\);

-- Location: LABCELL_X83_Y36_N6
\mem~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~69_combout\ = ( \mem~49_combout\ & ( \mem~33_combout\ & ( ((!\address[2]~input_o\ & (\mem~1_combout\)) # (\address[2]~input_o\ & ((\mem~17_combout\)))) # (\address[3]~input_o\) ) ) ) # ( !\mem~49_combout\ & ( \mem~33_combout\ & ( 
-- (!\address[3]~input_o\ & ((!\address[2]~input_o\ & (\mem~1_combout\)) # (\address[2]~input_o\ & ((\mem~17_combout\))))) # (\address[3]~input_o\ & (!\address[2]~input_o\)) ) ) ) # ( \mem~49_combout\ & ( !\mem~33_combout\ & ( (!\address[3]~input_o\ & 
-- ((!\address[2]~input_o\ & (\mem~1_combout\)) # (\address[2]~input_o\ & ((\mem~17_combout\))))) # (\address[3]~input_o\ & (\address[2]~input_o\)) ) ) ) # ( !\mem~49_combout\ & ( !\mem~33_combout\ & ( (!\address[3]~input_o\ & ((!\address[2]~input_o\ & 
-- (\mem~1_combout\)) # (\address[2]~input_o\ & ((\mem~17_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[3]~input_o\,
	datab => \ALT_INV_address[2]~input_o\,
	datac => \ALT_INV_mem~1_combout\,
	datad => \ALT_INV_mem~17_combout\,
	datae => \ALT_INV_mem~49_combout\,
	dataf => \ALT_INV_mem~33_combout\,
	combout => \mem~69_combout\);

-- Location: LABCELL_X81_Y35_N48
\mem~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~25_combout\ = ( \mem~25_combout\ & ( \rtl~6_combout\ & ( \data[1]~input_o\ ) ) ) # ( !\mem~25_combout\ & ( \rtl~6_combout\ & ( \data[1]~input_o\ ) ) ) # ( \mem~25_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[1]~input_o\,
	datae => \ALT_INV_mem~25_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \mem~25_combout\);

-- Location: MLABCELL_X82_Y35_N33
\mem~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~41_combout\ = ( \mem~41_combout\ & ( (!\rtl~10_combout\) # (\data[1]~input_o\) ) ) # ( !\mem~41_combout\ & ( (\data[1]~input_o\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[1]~input_o\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \ALT_INV_mem~41_combout\,
	combout => \mem~41_combout\);

-- Location: MLABCELL_X82_Y35_N51
\mem~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~57_combout\ = ( \rtl~14_combout\ & ( \data[1]~input_o\ ) ) # ( !\rtl~14_combout\ & ( \mem~57_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~57_combout\,
	datab => \ALT_INV_data[1]~input_o\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \mem~57_combout\);

-- Location: MLABCELL_X82_Y35_N12
\mem~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~9_combout\ = ( \mem~9_combout\ & ( (!\rtl~2_combout\) # (\data[1]~input_o\) ) ) # ( !\mem~9_combout\ & ( (\data[1]~input_o\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[1]~input_o\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \ALT_INV_mem~9_combout\,
	combout => \mem~9_combout\);

-- Location: MLABCELL_X82_Y35_N0
\mem~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~71_combout\ = ( \address[2]~input_o\ & ( \mem~9_combout\ & ( (!\address[3]~input_o\ & (\mem~25_combout\)) # (\address[3]~input_o\ & ((\mem~57_combout\))) ) ) ) # ( !\address[2]~input_o\ & ( \mem~9_combout\ & ( (!\address[3]~input_o\) # 
-- (\mem~41_combout\) ) ) ) # ( \address[2]~input_o\ & ( !\mem~9_combout\ & ( (!\address[3]~input_o\ & (\mem~25_combout\)) # (\address[3]~input_o\ & ((\mem~57_combout\))) ) ) ) # ( !\address[2]~input_o\ & ( !\mem~9_combout\ & ( (\mem~41_combout\ & 
-- \address[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~25_combout\,
	datab => \ALT_INV_mem~41_combout\,
	datac => \ALT_INV_mem~57_combout\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_mem~9_combout\,
	combout => \mem~71_combout\);

-- Location: MLABCELL_X82_Y35_N18
\mem~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~53_combout\ = ( \mem~53_combout\ & ( (!\rtl~13_combout\) # (\data[1]~input_o\) ) ) # ( !\mem~53_combout\ & ( (\data[1]~input_o\ & \rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[1]~input_o\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \ALT_INV_mem~53_combout\,
	combout => \mem~53_combout\);

-- Location: MLABCELL_X82_Y35_N48
\mem~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~21_combout\ = ( \rtl~5_combout\ & ( \data[1]~input_o\ ) ) # ( !\rtl~5_combout\ & ( \mem~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[1]~input_o\,
	datac => \ALT_INV_mem~21_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \mem~21_combout\);

-- Location: MLABCELL_X82_Y35_N15
\mem~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~37_combout\ = ( \rtl~9_combout\ & ( \data[1]~input_o\ ) ) # ( !\rtl~9_combout\ & ( \mem~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[1]~input_o\,
	datac => \ALT_INV_mem~37_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \mem~37_combout\);

-- Location: MLABCELL_X82_Y35_N30
\mem~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~5_combout\ = ( \mem~5_combout\ & ( (!\rtl~1_combout\) # (\data[1]~input_o\) ) ) # ( !\mem~5_combout\ & ( (\data[1]~input_o\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[1]~input_o\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \ALT_INV_mem~5_combout\,
	combout => \mem~5_combout\);

-- Location: MLABCELL_X82_Y35_N24
\mem~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~70_combout\ = ( \address[2]~input_o\ & ( \mem~5_combout\ & ( (!\address[3]~input_o\ & ((\mem~21_combout\))) # (\address[3]~input_o\ & (\mem~53_combout\)) ) ) ) # ( !\address[2]~input_o\ & ( \mem~5_combout\ & ( (!\address[3]~input_o\) # 
-- (\mem~37_combout\) ) ) ) # ( \address[2]~input_o\ & ( !\mem~5_combout\ & ( (!\address[3]~input_o\ & ((\mem~21_combout\))) # (\address[3]~input_o\ & (\mem~53_combout\)) ) ) ) # ( !\address[2]~input_o\ & ( !\mem~5_combout\ & ( (\address[3]~input_o\ & 
-- \mem~37_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~53_combout\,
	datab => \ALT_INV_mem~21_combout\,
	datac => \ALT_INV_address[3]~input_o\,
	datad => \ALT_INV_mem~37_combout\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_mem~5_combout\,
	combout => \mem~70_combout\);

-- Location: MLABCELL_X82_Y35_N6
\mem~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~73_combout\ = ( \mem~71_combout\ & ( \mem~70_combout\ & ( (!\address[1]~input_o\ & (((\address[0]~input_o\) # (\mem~69_combout\)))) # (\address[1]~input_o\ & (((!\address[0]~input_o\)) # (\mem~72_combout\))) ) ) ) # ( !\mem~71_combout\ & ( 
-- \mem~70_combout\ & ( (!\address[1]~input_o\ & (((\address[0]~input_o\) # (\mem~69_combout\)))) # (\address[1]~input_o\ & (\mem~72_combout\ & ((\address[0]~input_o\)))) ) ) ) # ( \mem~71_combout\ & ( !\mem~70_combout\ & ( (!\address[1]~input_o\ & 
-- (((\mem~69_combout\ & !\address[0]~input_o\)))) # (\address[1]~input_o\ & (((!\address[0]~input_o\)) # (\mem~72_combout\))) ) ) ) # ( !\mem~71_combout\ & ( !\mem~70_combout\ & ( (!\address[1]~input_o\ & (((\mem~69_combout\ & !\address[0]~input_o\)))) # 
-- (\address[1]~input_o\ & (\mem~72_combout\ & ((\address[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[1]~input_o\,
	datab => \ALT_INV_mem~72_combout\,
	datac => \ALT_INV_mem~69_combout\,
	datad => \ALT_INV_address[0]~input_o\,
	datae => \ALT_INV_mem~71_combout\,
	dataf => \ALT_INV_mem~70_combout\,
	combout => \mem~73_combout\);

-- Location: MLABCELL_X82_Y35_N54
\data_out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- data_out(1) = ( \mem~73_combout\ & ( (data_out(1)) # (\RD~input_o\) ) ) # ( !\mem~73_combout\ & ( (!\RD~input_o\ & data_out(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RD~input_o\,
	datad => ALT_INV_data_out(1),
	dataf => \ALT_INV_mem~73_combout\,
	combout => data_out(1));

-- Location: IOIBUF_X89_Y35_N78
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(2),
	o => \data[2]~input_o\);

-- Location: MLABCELL_X84_Y35_N27
\mem~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~34_combout\ = ( \mem~34_combout\ & ( (!\rtl~8_combout\) # (\data[2]~input_o\) ) ) # ( !\mem~34_combout\ & ( (\data[2]~input_o\ & \rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[2]~input_o\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \ALT_INV_mem~34_combout\,
	combout => \mem~34_combout\);

-- Location: MLABCELL_X84_Y35_N12
\mem~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~38_combout\ = ( \mem~38_combout\ & ( (!\rtl~9_combout\) # (\data[2]~input_o\) ) ) # ( !\mem~38_combout\ & ( (\data[2]~input_o\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[2]~input_o\,
	datac => \ALT_INV_rtl~9_combout\,
	dataf => \ALT_INV_mem~38_combout\,
	combout => \mem~38_combout\);

-- Location: MLABCELL_X84_Y35_N9
\mem~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~46_combout\ = ( \rtl~11_combout\ & ( \data[2]~input_o\ ) ) # ( !\rtl~11_combout\ & ( \mem~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[2]~input_o\,
	datac => \ALT_INV_mem~46_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \mem~46_combout\);

-- Location: MLABCELL_X84_Y35_N6
\mem~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~42_combout\ = ( \rtl~10_combout\ & ( \data[2]~input_o\ ) ) # ( !\rtl~10_combout\ & ( \mem~42_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[2]~input_o\,
	datab => \ALT_INV_mem~42_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \mem~42_combout\);

-- Location: MLABCELL_X84_Y35_N0
\mem~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~76_combout\ = ( \address[1]~input_o\ & ( \mem~42_combout\ & ( (!\address[0]~input_o\) # (\mem~46_combout\) ) ) ) # ( !\address[1]~input_o\ & ( \mem~42_combout\ & ( (!\address[0]~input_o\ & (\mem~34_combout\)) # (\address[0]~input_o\ & 
-- ((\mem~38_combout\))) ) ) ) # ( \address[1]~input_o\ & ( !\mem~42_combout\ & ( (\address[0]~input_o\ & \mem~46_combout\) ) ) ) # ( !\address[1]~input_o\ & ( !\mem~42_combout\ & ( (!\address[0]~input_o\ & (\mem~34_combout\)) # (\address[0]~input_o\ & 
-- ((\mem~38_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~34_combout\,
	datab => \ALT_INV_mem~38_combout\,
	datac => \ALT_INV_address[0]~input_o\,
	datad => \ALT_INV_mem~46_combout\,
	datae => \ALT_INV_address[1]~input_o\,
	dataf => \ALT_INV_mem~42_combout\,
	combout => \mem~76_combout\);

-- Location: LABCELL_X83_Y35_N57
\mem~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~18_combout\ = ( \mem~18_combout\ & ( (!\rtl~4_combout\) # (\data[2]~input_o\) ) ) # ( !\mem~18_combout\ & ( (\data[2]~input_o\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[2]~input_o\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \ALT_INV_mem~18_combout\,
	combout => \mem~18_combout\);

-- Location: LABCELL_X83_Y35_N33
\mem~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~22_combout\ = ( \mem~22_combout\ & ( (!\rtl~5_combout\) # (\data[2]~input_o\) ) ) # ( !\mem~22_combout\ & ( (\rtl~5_combout\ & \data[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~5_combout\,
	datad => \ALT_INV_data[2]~input_o\,
	dataf => \ALT_INV_mem~22_combout\,
	combout => \mem~22_combout\);

-- Location: LABCELL_X83_Y35_N42
\mem~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~30_combout\ = ( \rtl~7_combout\ & ( \data[2]~input_o\ ) ) # ( !\rtl~7_combout\ & ( \mem~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[2]~input_o\,
	datad => \ALT_INV_mem~30_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \mem~30_combout\);

-- Location: MLABCELL_X84_Y35_N57
\mem~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~26_combout\ = ( \rtl~6_combout\ & ( \data[2]~input_o\ ) ) # ( !\rtl~6_combout\ & ( \mem~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[2]~input_o\,
	datad => \ALT_INV_mem~26_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \mem~26_combout\);

-- Location: MLABCELL_X84_Y35_N30
\mem~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~75_combout\ = ( \mem~30_combout\ & ( \mem~26_combout\ & ( ((!\address[0]~input_o\ & (\mem~18_combout\)) # (\address[0]~input_o\ & ((\mem~22_combout\)))) # (\address[1]~input_o\) ) ) ) # ( !\mem~30_combout\ & ( \mem~26_combout\ & ( 
-- (!\address[0]~input_o\ & (((\address[1]~input_o\)) # (\mem~18_combout\))) # (\address[0]~input_o\ & (((!\address[1]~input_o\ & \mem~22_combout\)))) ) ) ) # ( \mem~30_combout\ & ( !\mem~26_combout\ & ( (!\address[0]~input_o\ & (\mem~18_combout\ & 
-- (!\address[1]~input_o\))) # (\address[0]~input_o\ & (((\mem~22_combout\) # (\address[1]~input_o\)))) ) ) ) # ( !\mem~30_combout\ & ( !\mem~26_combout\ & ( (!\address[1]~input_o\ & ((!\address[0]~input_o\ & (\mem~18_combout\)) # (\address[0]~input_o\ & 
-- ((\mem~22_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001001010111010100101010011110100010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_mem~18_combout\,
	datac => \ALT_INV_address[1]~input_o\,
	datad => \ALT_INV_mem~22_combout\,
	datae => \ALT_INV_mem~30_combout\,
	dataf => \ALT_INV_mem~26_combout\,
	combout => \mem~75_combout\);

-- Location: MLABCELL_X84_Y35_N48
\mem~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~50_combout\ = ( \mem~50_combout\ & ( (!\rtl~12_combout\) # (\data[2]~input_o\) ) ) # ( !\mem~50_combout\ & ( (\data[2]~input_o\ & \rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[2]~input_o\,
	datac => \ALT_INV_rtl~12_combout\,
	dataf => \ALT_INV_mem~50_combout\,
	combout => \mem~50_combout\);

-- Location: MLABCELL_X84_Y35_N42
\mem~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~54_combout\ = ( \rtl~13_combout\ & ( \data[2]~input_o\ ) ) # ( !\rtl~13_combout\ & ( \mem~54_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[2]~input_o\,
	datad => \ALT_INV_mem~54_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \mem~54_combout\);

-- Location: MLABCELL_X84_Y35_N24
\mem~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~62_combout\ = ( \rtl~15_combout\ & ( \data[2]~input_o\ ) ) # ( !\rtl~15_combout\ & ( \mem~62_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[2]~input_o\,
	datac => \ALT_INV_mem~62_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \mem~62_combout\);

-- Location: MLABCELL_X84_Y35_N15
\mem~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~58_combout\ = ( \rtl~14_combout\ & ( \data[2]~input_o\ ) ) # ( !\rtl~14_combout\ & ( \mem~58_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[2]~input_o\,
	datac => \ALT_INV_mem~58_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \mem~58_combout\);

-- Location: MLABCELL_X84_Y35_N36
\mem~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~77_combout\ = ( \mem~62_combout\ & ( \mem~58_combout\ & ( ((!\address[0]~input_o\ & (\mem~50_combout\)) # (\address[0]~input_o\ & ((\mem~54_combout\)))) # (\address[1]~input_o\) ) ) ) # ( !\mem~62_combout\ & ( \mem~58_combout\ & ( 
-- (!\address[0]~input_o\ & (((\address[1]~input_o\)) # (\mem~50_combout\))) # (\address[0]~input_o\ & (((\mem~54_combout\ & !\address[1]~input_o\)))) ) ) ) # ( \mem~62_combout\ & ( !\mem~58_combout\ & ( (!\address[0]~input_o\ & (\mem~50_combout\ & 
-- ((!\address[1]~input_o\)))) # (\address[0]~input_o\ & (((\address[1]~input_o\) # (\mem~54_combout\)))) ) ) ) # ( !\mem~62_combout\ & ( !\mem~58_combout\ & ( (!\address[1]~input_o\ & ((!\address[0]~input_o\ & (\mem~50_combout\)) # (\address[0]~input_o\ & 
-- ((\mem~54_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~50_combout\,
	datab => \ALT_INV_mem~54_combout\,
	datac => \ALT_INV_address[0]~input_o\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_mem~62_combout\,
	dataf => \ALT_INV_mem~58_combout\,
	combout => \mem~77_combout\);

-- Location: LABCELL_X83_Y36_N21
\mem~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~2_combout\ = ( \mem~2_combout\ & ( (!\rtl~0_combout\) # (\data[2]~input_o\) ) ) # ( !\mem~2_combout\ & ( (\data[2]~input_o\ & \rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[2]~input_o\,
	datad => \ALT_INV_rtl~0_combout\,
	dataf => \ALT_INV_mem~2_combout\,
	combout => \mem~2_combout\);

-- Location: LABCELL_X83_Y36_N42
\mem~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~10_combout\ = ( \mem~10_combout\ & ( (!\rtl~2_combout\) # (\data[2]~input_o\) ) ) # ( !\mem~10_combout\ & ( (\data[2]~input_o\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[2]~input_o\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \ALT_INV_mem~10_combout\,
	combout => \mem~10_combout\);

-- Location: LABCELL_X83_Y36_N45
\mem~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~14_combout\ = ( \rtl~3_combout\ & ( \data[2]~input_o\ ) ) # ( !\rtl~3_combout\ & ( \mem~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[2]~input_o\,
	datad => \ALT_INV_mem~14_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \mem~14_combout\);

-- Location: LABCELL_X83_Y36_N27
\mem~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~6_combout\ = ( \rtl~1_combout\ & ( \data[2]~input_o\ ) ) # ( !\rtl~1_combout\ & ( \mem~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[2]~input_o\,
	datad => \ALT_INV_mem~6_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \mem~6_combout\);

-- Location: LABCELL_X83_Y36_N48
\mem~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~74_combout\ = ( \mem~14_combout\ & ( \mem~6_combout\ & ( ((!\address[1]~input_o\ & (\mem~2_combout\)) # (\address[1]~input_o\ & ((\mem~10_combout\)))) # (\address[0]~input_o\) ) ) ) # ( !\mem~14_combout\ & ( \mem~6_combout\ & ( (!\address[1]~input_o\ 
-- & (((\mem~2_combout\)) # (\address[0]~input_o\))) # (\address[1]~input_o\ & (!\address[0]~input_o\ & ((\mem~10_combout\)))) ) ) ) # ( \mem~14_combout\ & ( !\mem~6_combout\ & ( (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~2_combout\))) # 
-- (\address[1]~input_o\ & (((\mem~10_combout\)) # (\address[0]~input_o\))) ) ) ) # ( !\mem~14_combout\ & ( !\mem~6_combout\ & ( (!\address[0]~input_o\ & ((!\address[1]~input_o\ & (\mem~2_combout\)) # (\address[1]~input_o\ & ((\mem~10_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[1]~input_o\,
	datab => \ALT_INV_address[0]~input_o\,
	datac => \ALT_INV_mem~2_combout\,
	datad => \ALT_INV_mem~10_combout\,
	datae => \ALT_INV_mem~14_combout\,
	dataf => \ALT_INV_mem~6_combout\,
	combout => \mem~74_combout\);

-- Location: MLABCELL_X84_Y35_N18
\mem~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~78_combout\ = ( \mem~77_combout\ & ( \mem~74_combout\ & ( (!\address[2]~input_o\ & (((!\address[3]~input_o\)) # (\mem~76_combout\))) # (\address[2]~input_o\ & (((\address[3]~input_o\) # (\mem~75_combout\)))) ) ) ) # ( !\mem~77_combout\ & ( 
-- \mem~74_combout\ & ( (!\address[2]~input_o\ & (((!\address[3]~input_o\)) # (\mem~76_combout\))) # (\address[2]~input_o\ & (((\mem~75_combout\ & !\address[3]~input_o\)))) ) ) ) # ( \mem~77_combout\ & ( !\mem~74_combout\ & ( (!\address[2]~input_o\ & 
-- (\mem~76_combout\ & ((\address[3]~input_o\)))) # (\address[2]~input_o\ & (((\address[3]~input_o\) # (\mem~75_combout\)))) ) ) ) # ( !\mem~77_combout\ & ( !\mem~74_combout\ & ( (!\address[2]~input_o\ & (\mem~76_combout\ & ((\address[3]~input_o\)))) # 
-- (\address[2]~input_o\ & (((\mem~75_combout\ & !\address[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101111111110011010100001111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~76_combout\,
	datab => \ALT_INV_mem~75_combout\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_mem~77_combout\,
	dataf => \ALT_INV_mem~74_combout\,
	combout => \mem~78_combout\);

-- Location: MLABCELL_X84_Y35_N54
\data_out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- data_out(2) = ( \mem~78_combout\ & ( (\RD~input_o\) # (data_out(2)) ) ) # ( !\mem~78_combout\ & ( (data_out(2) & !\RD~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_data_out(2),
	datad => \ALT_INV_RD~input_o\,
	dataf => \ALT_INV_mem~78_combout\,
	combout => data_out(2));

-- Location: IOIBUF_X89_Y36_N21
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(3),
	o => \data[3]~input_o\);

-- Location: MLABCELL_X84_Y36_N27
\mem~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~23_combout\ = ( \rtl~5_combout\ & ( \data[3]~input_o\ ) ) # ( !\rtl~5_combout\ & ( \mem~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datad => \ALT_INV_mem~23_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \mem~23_combout\);

-- Location: MLABCELL_X84_Y36_N30
\mem~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~39_combout\ = ( \mem~39_combout\ & ( (!\rtl~9_combout\) # (\data[3]~input_o\) ) ) # ( !\mem~39_combout\ & ( (\data[3]~input_o\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \ALT_INV_mem~39_combout\,
	combout => \mem~39_combout\);

-- Location: LABCELL_X83_Y36_N18
\mem~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~7_combout\ = ( \rtl~1_combout\ & ( \data[3]~input_o\ ) ) # ( !\rtl~1_combout\ & ( \mem~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datac => \ALT_INV_mem~7_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \mem~7_combout\);

-- Location: MLABCELL_X84_Y36_N54
\mem~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~55_combout\ = ( \mem~55_combout\ & ( (!\rtl~13_combout\) # (\data[3]~input_o\) ) ) # ( !\mem~55_combout\ & ( (\data[3]~input_o\ & \rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \ALT_INV_mem~55_combout\,
	combout => \mem~55_combout\);

-- Location: MLABCELL_X84_Y36_N48
\mem~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~80_combout\ = ( \mem~7_combout\ & ( \mem~55_combout\ & ( (!\address[3]~input_o\ & (((!\address[2]~input_o\)) # (\mem~23_combout\))) # (\address[3]~input_o\ & (((\mem~39_combout\) # (\address[2]~input_o\)))) ) ) ) # ( !\mem~7_combout\ & ( 
-- \mem~55_combout\ & ( (!\address[3]~input_o\ & (\mem~23_combout\ & (\address[2]~input_o\))) # (\address[3]~input_o\ & (((\mem~39_combout\) # (\address[2]~input_o\)))) ) ) ) # ( \mem~7_combout\ & ( !\mem~55_combout\ & ( (!\address[3]~input_o\ & 
-- (((!\address[2]~input_o\)) # (\mem~23_combout\))) # (\address[3]~input_o\ & (((!\address[2]~input_o\ & \mem~39_combout\)))) ) ) ) # ( !\mem~7_combout\ & ( !\mem~55_combout\ & ( (!\address[3]~input_o\ & (\mem~23_combout\ & (\address[2]~input_o\))) # 
-- (\address[3]~input_o\ & (((!\address[2]~input_o\ & \mem~39_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[3]~input_o\,
	datab => \ALT_INV_mem~23_combout\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_mem~39_combout\,
	datae => \ALT_INV_mem~7_combout\,
	dataf => \ALT_INV_mem~55_combout\,
	combout => \mem~80_combout\);

-- Location: MLABCELL_X84_Y36_N3
\mem~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~59_combout\ = ( \rtl~14_combout\ & ( \data[3]~input_o\ ) ) # ( !\rtl~14_combout\ & ( \mem~59_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datad => \ALT_INV_mem~59_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \mem~59_combout\);

-- Location: MLABCELL_X84_Y36_N57
\mem~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~43_combout\ = ( \rtl~10_combout\ & ( \data[3]~input_o\ ) ) # ( !\rtl~10_combout\ & ( \mem~43_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datad => \ALT_INV_mem~43_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \mem~43_combout\);

-- Location: MLABCELL_X84_Y36_N33
\mem~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~11_combout\ = ( \mem~11_combout\ & ( (!\rtl~2_combout\) # (\data[3]~input_o\) ) ) # ( !\mem~11_combout\ & ( (\data[3]~input_o\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datac => \ALT_INV_rtl~2_combout\,
	dataf => \ALT_INV_mem~11_combout\,
	combout => \mem~11_combout\);

-- Location: MLABCELL_X84_Y36_N24
\mem~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~27_combout\ = ( \mem~27_combout\ & ( (!\rtl~6_combout\) # (\data[3]~input_o\) ) ) # ( !\mem~27_combout\ & ( (\data[3]~input_o\ & \rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \ALT_INV_mem~27_combout\,
	combout => \mem~27_combout\);

-- Location: MLABCELL_X84_Y36_N36
\mem~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~81_combout\ = ( \mem~11_combout\ & ( \mem~27_combout\ & ( (!\address[3]~input_o\) # ((!\address[2]~input_o\ & ((\mem~43_combout\))) # (\address[2]~input_o\ & (\mem~59_combout\))) ) ) ) # ( !\mem~11_combout\ & ( \mem~27_combout\ & ( 
-- (!\address[2]~input_o\ & (((\mem~43_combout\ & \address[3]~input_o\)))) # (\address[2]~input_o\ & (((!\address[3]~input_o\)) # (\mem~59_combout\))) ) ) ) # ( \mem~11_combout\ & ( !\mem~27_combout\ & ( (!\address[2]~input_o\ & (((!\address[3]~input_o\) # 
-- (\mem~43_combout\)))) # (\address[2]~input_o\ & (\mem~59_combout\ & ((\address[3]~input_o\)))) ) ) ) # ( !\mem~11_combout\ & ( !\mem~27_combout\ & ( (\address[3]~input_o\ & ((!\address[2]~input_o\ & ((\mem~43_combout\))) # (\address[2]~input_o\ & 
-- (\mem~59_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~59_combout\,
	datab => \ALT_INV_mem~43_combout\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_mem~11_combout\,
	dataf => \ALT_INV_mem~27_combout\,
	combout => \mem~81_combout\);

-- Location: MLABCELL_X84_Y36_N9
\mem~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~31_combout\ = ( \mem~31_combout\ & ( (!\rtl~7_combout\) # (\data[3]~input_o\) ) ) # ( !\mem~31_combout\ & ( (\data[3]~input_o\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datac => \ALT_INV_rtl~7_combout\,
	dataf => \ALT_INV_mem~31_combout\,
	combout => \mem~31_combout\);

-- Location: MLABCELL_X84_Y36_N15
\mem~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~15_combout\ = ( \rtl~3_combout\ & ( \data[3]~input_o\ ) ) # ( !\rtl~3_combout\ & ( \mem~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datac => \ALT_INV_mem~15_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \mem~15_combout\);

-- Location: MLABCELL_X84_Y36_N6
\mem~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~63_combout\ = ( \mem~63_combout\ & ( (!\rtl~15_combout\) # (\data[3]~input_o\) ) ) # ( !\mem~63_combout\ & ( (\data[3]~input_o\ & \rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datac => \ALT_INV_rtl~15_combout\,
	dataf => \ALT_INV_mem~63_combout\,
	combout => \mem~63_combout\);

-- Location: MLABCELL_X84_Y36_N12
\mem~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~47_combout\ = ( \mem~47_combout\ & ( (!\rtl~11_combout\) # (\data[3]~input_o\) ) ) # ( !\mem~47_combout\ & ( (\data[3]~input_o\ & \rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	datab => \ALT_INV_rtl~11_combout\,
	dataf => \ALT_INV_mem~47_combout\,
	combout => \mem~47_combout\);

-- Location: MLABCELL_X84_Y36_N42
\mem~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~82_combout\ = ( \address[3]~input_o\ & ( \mem~47_combout\ & ( (!\address[2]~input_o\) # (\mem~63_combout\) ) ) ) # ( !\address[3]~input_o\ & ( \mem~47_combout\ & ( (!\address[2]~input_o\ & ((\mem~15_combout\))) # (\address[2]~input_o\ & 
-- (\mem~31_combout\)) ) ) ) # ( \address[3]~input_o\ & ( !\mem~47_combout\ & ( (\address[2]~input_o\ & \mem~63_combout\) ) ) ) # ( !\address[3]~input_o\ & ( !\mem~47_combout\ & ( (!\address[2]~input_o\ & ((\mem~15_combout\))) # (\address[2]~input_o\ & 
-- (\mem~31_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~31_combout\,
	datab => \ALT_INV_mem~15_combout\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_mem~63_combout\,
	datae => \ALT_INV_address[3]~input_o\,
	dataf => \ALT_INV_mem~47_combout\,
	combout => \mem~82_combout\);

-- Location: MLABCELL_X84_Y35_N51
\mem~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~35_combout\ = ( \mem~35_combout\ & ( (!\rtl~8_combout\) # (\data[3]~input_o\) ) ) # ( !\mem~35_combout\ & ( (\data[3]~input_o\ & \rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[3]~input_o\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \ALT_INV_mem~35_combout\,
	combout => \mem~35_combout\);

-- Location: LABCELL_X83_Y35_N0
\mem~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~19_combout\ = ( \mem~19_combout\ & ( (!\rtl~4_combout\) # (\data[3]~input_o\) ) ) # ( !\mem~19_combout\ & ( (\data[3]~input_o\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[3]~input_o\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \ALT_INV_mem~19_combout\,
	combout => \mem~19_combout\);

-- Location: LABCELL_X83_Y35_N15
\mem~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~51_combout\ = ( \mem~51_combout\ & ( (!\rtl~12_combout\) # (\data[3]~input_o\) ) ) # ( !\mem~51_combout\ & ( (\data[3]~input_o\ & \rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[3]~input_o\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \ALT_INV_mem~51_combout\,
	combout => \mem~51_combout\);

-- Location: LABCELL_X83_Y35_N18
\mem~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~3_combout\ = ( \rtl~0_combout\ & ( \data[3]~input_o\ ) ) # ( !\rtl~0_combout\ & ( \mem~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mem~3_combout\,
	datad => \ALT_INV_data[3]~input_o\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \mem~3_combout\);

-- Location: LABCELL_X83_Y35_N24
\mem~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~79_combout\ = ( \mem~51_combout\ & ( \mem~3_combout\ & ( (!\address[3]~input_o\ & (((!\address[2]~input_o\) # (\mem~19_combout\)))) # (\address[3]~input_o\ & (((\address[2]~input_o\)) # (\mem~35_combout\))) ) ) ) # ( !\mem~51_combout\ & ( 
-- \mem~3_combout\ & ( (!\address[3]~input_o\ & (((!\address[2]~input_o\) # (\mem~19_combout\)))) # (\address[3]~input_o\ & (\mem~35_combout\ & ((!\address[2]~input_o\)))) ) ) ) # ( \mem~51_combout\ & ( !\mem~3_combout\ & ( (!\address[3]~input_o\ & 
-- (((\mem~19_combout\ & \address[2]~input_o\)))) # (\address[3]~input_o\ & (((\address[2]~input_o\)) # (\mem~35_combout\))) ) ) ) # ( !\mem~51_combout\ & ( !\mem~3_combout\ & ( (!\address[3]~input_o\ & (((\mem~19_combout\ & \address[2]~input_o\)))) # 
-- (\address[3]~input_o\ & (\mem~35_combout\ & ((!\address[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~35_combout\,
	datab => \ALT_INV_mem~19_combout\,
	datac => \ALT_INV_address[3]~input_o\,
	datad => \ALT_INV_address[2]~input_o\,
	datae => \ALT_INV_mem~51_combout\,
	dataf => \ALT_INV_mem~3_combout\,
	combout => \mem~79_combout\);

-- Location: MLABCELL_X84_Y36_N18
\mem~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~83_combout\ = ( \mem~82_combout\ & ( \mem~79_combout\ & ( (!\address[0]~input_o\ & (((!\address[1]~input_o\) # (\mem~81_combout\)))) # (\address[0]~input_o\ & (((\address[1]~input_o\)) # (\mem~80_combout\))) ) ) ) # ( !\mem~82_combout\ & ( 
-- \mem~79_combout\ & ( (!\address[0]~input_o\ & (((!\address[1]~input_o\) # (\mem~81_combout\)))) # (\address[0]~input_o\ & (\mem~80_combout\ & ((!\address[1]~input_o\)))) ) ) ) # ( \mem~82_combout\ & ( !\mem~79_combout\ & ( (!\address[0]~input_o\ & 
-- (((\mem~81_combout\ & \address[1]~input_o\)))) # (\address[0]~input_o\ & (((\address[1]~input_o\)) # (\mem~80_combout\))) ) ) ) # ( !\mem~82_combout\ & ( !\mem~79_combout\ & ( (!\address[0]~input_o\ & (((\mem~81_combout\ & \address[1]~input_o\)))) # 
-- (\address[0]~input_o\ & (\mem~80_combout\ & ((!\address[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~80_combout\,
	datab => \ALT_INV_address[0]~input_o\,
	datac => \ALT_INV_mem~81_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_mem~82_combout\,
	dataf => \ALT_INV_mem~79_combout\,
	combout => \mem~83_combout\);

-- Location: MLABCELL_X84_Y36_N0
\data_out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- data_out(3) = ( \mem~83_combout\ & ( (\RD~input_o\) # (data_out(3)) ) ) # ( !\mem~83_combout\ & ( (data_out(3) & !\RD~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_data_out(3),
	datad => \ALT_INV_RD~input_o\,
	dataf => \ALT_INV_mem~83_combout\,
	combout => data_out(3));

-- Location: LABCELL_X81_Y38_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


