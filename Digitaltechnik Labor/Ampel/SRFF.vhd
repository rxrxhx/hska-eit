library ieee;
use ieee.std_logic_1164.all;

entity SRFF is
 port (
	S: in std_logic;
	R: in std_logic;
	D: out std_logic
	);
end entity SRFF;

architecture behavior of SRFF isbegin
dec: process (S, R) is
	variable v: std_logic := '0';
	begin
	if (rising_edge(S)) then
		v := '1';
	end if;
	
	if (R = '1') then
		v := '0';
	end if;
	
	D <= v;
	
 end process dec;
end architecture behavior; 