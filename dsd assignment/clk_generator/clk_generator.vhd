library ieee;
use ieee.std_logic_1164.all;
ENTITY clk_generator is
	port(
			clk1: in std_logic;
			newclock : out std_logic);
END clk_generator;

ARCHITECTURE behavioral of clk_generator is
	signal counter : Integer := 0;
	signal clk : std_logic := '0'; 
	BEGIN
	PROCESS(clk1)
	BEGIN 
		IF(clk1'event and clk1 = '1')
			THEN counter <= counter +1;
				IF(counter = 24999999)
				THEN
					clk <= not clk; --reset clk back to 0Hz to be able to calculate 1Hz from beginning
					counter <= 0;	
					
				END IF;
			END IF;
		newclock <=clk;
		END PROCESS;

END behavioral;