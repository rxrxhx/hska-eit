library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity lauflicht is
	port (
		LED: out std_logic_vector(7 downto 0); -- LEDs
		DIR, INV: in std_logic;
		MLEFT: in std_logic_vector(1 downto 0);
		MRIGHT: in std_logic_vector(1 downto 0);
		TLEFT: in std_logic;
		TRIGHT: in std_logic;
		D14, D15: out std_logic				-- LED fuer ClkGen
);
		
	end entity lauflicht;

architecture behaviour of lauflicht is
		signal ClkLeft, ClkRight, Clk100Hz, ClkOsc: std_logic; --Singale für ClkGen
		signal ModeLeft, ModeRight: std_logic_vector (1 downto 0);
		signal regi: std_logic_vector(7 downto 0) := "10000000";
	begin
			Clock: entity work.ClkGen(behavior)
			port map(
			ClkModeLeft => ModeLeft, 
			ClkModeRight => ModeRight, 
			PulseLeft => TLEFT, 
			PulseRight => TRIGHT, 
			SignalLeft => D14, 
			SignalRight => D15, 
			ClkLeft => ClkLeft, 
			ClkRight => ClkRight,
			Clk100Hz => Clk100Hz,
			ClkOsc => ClkOsc);			
			
		main: process is
		begin
			if (rising_edge(ClkLeft)) then
				if DIR = '0' then
					regi <= std_logic_vector(rotate_left(unsigned(regi), 1));
				else
					regi <= std_logic_vector(rotate_right(unsigned(regi), 1));
				end if;
			end if;

		if INV = '1' then
			LED <= not (regi);
		else
			LED <= regi;
		end if;
	end process Main;
	
	ClockMode: process (MLEFT, MRIGHT) is
	begin
	ModeLeft <= MLEFT;
	ModeRight <= MRIGHT;
	end process ClockMode;
	end architecture behaviour;
