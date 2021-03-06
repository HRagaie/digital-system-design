library ieee;
use ieee.std_logic_1164.all;
entity lightsensor is
port ( ls : IN STD_LOGIC;
     light : OUT STD_LOGIC
);
end lightsensor;
architecture behavioral of lightsensor is

TYPE statetype IS (day, night);
SIGNAL currentstate,nextstate : statetype;
BEGIN
PROCESS(currentstate)
BEGIN
CASE currentstate is
WHEN day => 
						  light <= '0';
                    IF ls = '1' THEN nextstate <= night; END IF;
WHEN night => 
						  light <= '1';
                    IF ls = '0' THEN nextstate <= day; END IF;
                    
END CASE;
END PROCESS;

currentstate <= nextstate;
END behavioral;