library ieee;
use ieee.std_logic_1164.all;
entity smokedetect is
port ( sm : IN STD_LOGIC;
     alarm : OUT STD_LOGIC
);
end smokedetect;
architecture behavioral of smokedetect is

TYPE statetype IS (opened, closed);
SIGNAL currentstate,nextstate : statetype;
BEGIN
PROCESS(currentstate)
BEGIN
CASE currentstate is
WHEN closed => 
						  alarm <= '0';
                    IF sm = '1' THEN nextstate <= opened; END IF;
WHEN opened => 
						  alarm <= '1';
                    IF sm = '0' THEN nextstate <= closed; END IF;
                    
END CASE;
END PROCESS;

currentstate <= nextstate;
END behavioral;