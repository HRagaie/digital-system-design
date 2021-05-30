Library ieee;
use ieee.std_logic_1164.all;

ENTITY servomotor IS
PORT( door,clk: IN STD_LOGIC;
		pos: OUT STD_LOGIC_VECTOR(6 downto 0)
);
END servomotor;
ARCHITECTURE behavioral OF servomotor IS
BEGIN
	process(clk)
	BEGIN
		
			IF (clk'EVENT AND clk = '1') THEN 
				IF(door = '1') THEN pos <= "1111111";
					ELSE pos <= "0000000";
		END IF;		
	END IF;
	END process;
END behavioral;