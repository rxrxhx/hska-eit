library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity Ampel is
 port(
	I: in std_logic_vector(3 downto 0);
	KFZA: out std_logic_vector(2 downto 0);
	FA: out std_logic_vector(1 downto 0);
	RES: out std_logic
  );
  end entity Ampel;
	
architecture behaviour of Ampel is
		
 begin
 main: process is
 begin
	if (I = "0000") then -- KFZ GRUEN -- FG ROT
		KFZA <= "001";
		FA <= "10";
	end if; 
	
	if (I = "0001" or I = "0010") then -- KFZ GELB -- FG ROT
		KFZA <= "010";
		FA <= "10";
	end if; 
	
	if (I = "0011" or I = "0100") then -- KFZ ROT -- FG ROT
		KFZA <= "100";
		FA <= "10";
	end if; 
	
	if (I > "0100" and I < "1010") then -- KFZ ROT --FG GRUEN
		KFZA <= "100";
		FA <= "01";
	end if; 
	
	if (I = "1010" or I = "1011") then --KFZ ROT --FG ROT
		KFZA <= "100";
		FA <= "10";
	end if; 
 
	if (I = "1100" or I = "1101") then --KFZ ROT GELB --FG ROT
		KFZA <= "110";
		FA <= "10";
	end if; 
	
	if (I = "1110") then
		RES <= '1';
	else
		RES <= '0';
	end if;
									
 end process Main;


end architecture behaviour;