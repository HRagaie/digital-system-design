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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/07/2019 15:17:27"
                                                            
-- Vhdl Test Bench template for design  :  clk_generator
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clk_generator_vhd_tst IS
END clk_generator_vhd_tst;
ARCHITECTURE clk_generator_arch OF clk_generator_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk1 : STD_LOGIC;
SIGNAL newclock : STD_LOGIC;
SIGNAL pause : STD_LOGIC;
COMPONENT clk_generator
	PORT (
	clk1 : IN STD_LOGIC;
	newclock : OUT STD_LOGIC;
	pause : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clk_generator
	PORT MAP (
-- list connections between master ports and signals
	clk1 => clk1,
	newclock => newclock,
	pause => pause
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END clk_generator_arch;
