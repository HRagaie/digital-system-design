LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY testingMotor IS
PORT(
	reset,clk,ir1,ir2,ls,sm : IN STD_LOGIC;
	alarm,light,servo : OUT STD_LOGIC
);
END testingMotor;

ARCHITECTURE behav OF testingMotor IS
COMPONENT clk64kHz
        PORT(
            clk    : in  STD_LOGIC;
            reset  : in  STD_LOGIC;
            clk_out: out STD_LOGIC
        );
		  
end COMPONENT;
COMPONENT servomotor
	 PORT( door,clk : IN STD_LOGIC;pos: OUT STD_LOGIC_VECTOR(6 downto 0));
	 END COMPONENT;
	 
	 COMPONENT servo_pwm
        PORT (
				clk   : IN  STD_LOGIC;
            reset : IN  STD_LOGIC;
            pos   : IN  STD_LOGIC_VECTOR(6 downto 0);
            servo : OUT STD_LOGIC
        );
    END COMPONENT;
	 COMPONENT lightsensor
	PORT( ls : IN STD_LOGIC;light : OUT STD_LOGIC);
	END COMPONENT;	
	
	COMPONENT smokedetect
	PORT(sm : IN STD_LOGIC; alarm : OUT STD_LOGIC);
   END COMPONENT;
	 
signal clk_out : STD_LOGIC := '0';
signal motor: STD_LOGIC;
signal pos: STD_LOGIC_VECTOR(6 downto 0);
signal button: STD_LOGIC := '0';
BEGIN
process(ir1,ir2)
begin
if(ir1='1' and ir2='1') then button <= '0';
else button <='1';
end if;
end process;
clk64kHz_map: clk64kHz PORT MAP(clk, reset, clk_out);
motor_map: servomotor PORT MAP(button,clk_out,pos); 
servo_pwm_map: servo_pwm PORT MAP(clk_out, reset, pos, servo);
lightsensor_map: lightsensor PORT MAP(ls, light);
smokedetect_map: smokedetect PORT MAP(sm, alarm);
	


END behav;