library ieee;
use ieee.std_logic_1164.all;
entity stopwatch is
port (
		clk,reset,pause: IN std_logic;
		b,b1: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));

end stopwatch;
architecture structural of stopwatch is
signal newclock: std_logic;
signal x : Integer;
signal x1 : Integer;
signal x2 : Integer;

COMPONENT clk_generator
PORT (clk1 :IN STD_LOGIC; newclock: OUT STD_LOGIC);
END COMPONENT;


COMPONENT sixty_counter
PORT (clk,reset,pause : IN STD_LOGIC; x: OUT Integer);
END COMPONENT;

COMPONENT seven_seg_dec
PORT (bcd: IN	Integer; disp : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END COMPONENT;

BEGIN
x12: clk_generator PORT MAP (clk, newclock);
y1: sixty_counter PORT MAP (newclock, reset, pause, x); 
x1 <= x/10;
x2 <= x mod 10;
a1: seven_seg_dec PORT MAP (x1, b1); 
c1: seven_seg_dec PORT MAP (x2, b); 


END structural;