library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.ALL;

entity Dek1Z is
 port (
	Clk: in std_logic;
	EN: in std_logic;
	RES: in std_logic;
	
	Q: out std_logic_vector(3 downto 0);
	Cout: out std_logic
	);
end entity Dek1Z;

architecture behavior of Dek1Z is
signal cnt: unsigned(3 downto 0);
begin
	dec: process (Clk, EN, RES) is
	begin				
	if(RES = '1') then
		cnt <= "0000";
		Q <= "0000";
	else
		if (EN = '1') then
			if (rising_edge(Clk)) then
				if (cnt < "1001") then
					cnt <= cnt + 1;
					Cout <= '0';
				else
					Cout <= '1';
					cnt <= "0000";
				end if;
			end if;
		end if;
		Q <= std_logic_vector(cnt);
	end if;
 end process dec;
end architecture behavior; 