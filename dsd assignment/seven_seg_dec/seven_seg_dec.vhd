LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY seven_seg_dec IS
	PORT(
		bcd:	IN	Integer;		--number to display in BCD
		disp:	OUT STD_LOGIC_VECTOR(6 DOWNTO 0));	--outputs to seven segment display
END seven_seg_dec;

ARCHITECTURE logic OF seven_seg_dec IS
BEGIN
	--map bcd input to desired output segments
	WITH bcd SELECT
		disp <= 	"1000000" WHEN 0,	--0
								"1111001" WHEN 1,	--1
								"0100100" WHEN 2,	--2
								"0110000" WHEN 3,	--3
								"0011001" WHEN 4,	--4
								"0010010" WHEN 5,	--5
								"0000010" WHEN 6,	--6
								"1111000" WHEN 7,	--7
								"0000000" WHEN 8,	--8
								"0010000" WHEN 9,	--9
								"1111111" WHEN OTHERS;	--blank when not a digit
	
END logic;