library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity counter is
	port (
		D: out std_logic_vector(3 downto 0);
		F : out std_logic;
		Clkright : in std_logic;
		RES,EN: in std_logic
		);
		
	end entity counter;

architecture behaviour of counter is
	    signal count4bit: std_logic_vector(3 downto 0) := "0000";
	begin
			
			
		main: process is

	    begin
		if RES = '1' then
				count4Bit <= "0000"; 
		else
			if EN = '1' then
				if (rising_edge(Clkright)) then
					count4Bit <= std_logic_vector (unsigned (count4Bit) + 1);
				end if;
			end if;
		end if;

		
		if count4Bit = "1010" then
			F <= '1';
			count4Bit <= "0000";
		end if;
		if count4Bit = "0000" then
		F <= '0';
		end if;
		D <= count4Bit;
	end process Main;
	end architecture behaviour;
