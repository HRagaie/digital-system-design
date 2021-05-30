library ieee;
use ieee.std_logic_1164.all;
entity sixty_counter is
	port
			(clk, reset,pause: IN STD_LOGIC;
			x: OUT Integer);
			
end sixty_counter;

architecture behavioral of sixty_counter is
SIGNAL tmp :INTEGER := 0;
begin
PROCESS(clk,reset,pause)
BEGIN
	IF(reset = '0') THEN
		tmp<=0;
	ELSIF(clk'event AND clk= '1' AND pause = '1')THEN
			tmp <= tmp +1;
			if(tmp = 59) then tmp <= 0;
			END IF;
		END IF;

END PROCESS;
x<=tmp;
END behavioral;

