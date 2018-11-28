library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity lauflicht is
	port (
		LED: out std_logic_vector(3 downto 0); -- LEDs
		
		MLEFT: in std_logic_vector(1 downto 0);
		MRIGHT: in std_logic_vector(1 downto 0);
		TLEFT: in std_logic;
		TRIGHT: in std_logic;
		RES, DIR: in std_logic;
		D14, D15: out std_logic				-- LED fuer ClkGen
);
		
	end entity lauflicht;

architecture behaviour of lauflicht is
		signal ClkLeft, ClkRight, Clk100Hz, ClkOsc: std_logic; --Singale für ClkGen
		signal ModeLeft, ModeRight: std_logic_vector (1 downto 0);
	    signal count4bit: std_logic_vector(3 downto 0) := "0000";
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
		if RES = '1' then
				count4Bit <= "0000"; 
		else
			if (rising_edge(clkleft)) then
				if DIR = '0' then
					count4Bit <= std_logic_vector (unsigned (count4Bit) + 1);
				else
					count4Bit <= std_logic_vector (unsigned (count4Bit) - 1);
				end if;
			end if;
		end if;
		
		LED <= count4Bit;

	end process Main;
	
	ClockMode: process (MLEFT, MRIGHT) is
	begin
	ModeLeft <= MLEFT;
	ModeRight <= MRIGHT;
	end process ClockMode;
	end architecture behaviour;
