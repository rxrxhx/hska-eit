library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity count4bit is
 port(
	LED: out std_logic_vector(3 downto 0); -- LEDs
	RES: in std_logic;
	CLK: in std_logic
  );
  end entity count4bit;
	
architecture behaviour of count4bit is
signal count4bit: std_logic_vector(3 downto 0) := "0000";
 begin
 main: process is
 begin
		if RES = '1' then
				count4Bit <= "0000"; 
		else
			if (rising_edge(CLK)) then
				count4Bit <= std_logic_vector (unsigned (count4Bit) + 1);
			end if;
		end if;
		
		LED <= count4Bit;
 end process Main;


end architecture behaviour;