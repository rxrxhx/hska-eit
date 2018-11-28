library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity Ampel is
 port(
  --Taster: in std_logic;
  FA: out std_logic_vector(1 downto 0);
  KFZA: out std_logic_vector(2 downto 0);
  D14, D15 : out std_logic;
  SCLK: in std_logic_vector(11 to 12);
  PULSER: in std_logic;
  ANF: in std_logic;
  MAN: in std_logic
		
  );
  end entity Ampel;
		
	
	
architecture behaviour of Ampel is
		
 signal ClkLeft, ClkRight, Clk100Hz, ClkOsc: std_logic; 
 signal ModeLeft: std_logic_vector (1 downto 0);
 signal ModeRight: std_logic_vector (1 downto 0);
 signal alreadyPressed: std_logic := '0';
		
 begin
  Clock: entity work.ClkGen(behavior)
  port map(ClkModeLeft => ModeLeft, ClkModeRight => ModeRight, PulseLeft => SCLK(11), 
  PulseRight => PULSER, SignalLeft => D14, SignalRight => D15, 
  ClkLeft => ClkLeft, ClkRight => ClkRight, Clk100Hz => Clk100Hz, ClkOsc => ClkOsc);
			
 main: process is
	variable counter: integer := 0;
 begin
	ModeLeft <= "00";
	ModeRight <= "01";

 
	if (rising_edge(ClkRight)) then
		if (alreadyPressed = '1') then
			counter := counter + 1;
		end if;
	end if;
		
	if(ANF = '1') then
		if (alreadyPressed = '0') then
			alreadyPressed <= '1';
			counter := 0;	
		end if;
	end if;
	
	if (counter = 0) then -- KFZ GRUEN -- FG ROT
		KFZA <= "001";
		FA <= "10";
	end if; 
	
	if (counter = 1 or counter = 2) then -- KFZ GELB -- FG ROT
		KFZA <= "010";
		FA <= "10";
	end if; 
	
	if (counter = 3 or counter = 4) then -- KFZ ROT -- FG ROT
		KFZA <= "100";
		FA <= "10";
	end if; 
	
	if (counter > 4 and counter < 10) then -- KFZ ROT --FG GRUEN
		KFZA <= "100";
		FA <= "01";
	end if; 
	
	if (counter = 10 or counter = 11) then --KFZ ROT --FG ROT
		KFZA <= "100";
		FA <= "10";
		alreadyPressed <= '0';

	end if; 
 
	if (counter = 12 or counter = 13) then --KFZ ROT GELB --FG ROT
		KFZA <= "110";
		FA <= "10";
	end if; 
	
	if (counter = 14) then 
		alreadyPressed <= '0';
		counter := 0;	
	end if; 
	
									
 end process Main;


end architecture behaviour;