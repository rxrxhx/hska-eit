library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sub4 is
	port (
		A, B: in std_logic_vector (2 downto 0);
		Z: out std_logic_vector (3 downto 0)
		);
end entity sub4;

architecture task of sub4 is

begin
	subber: process(A, B) is
	constant M: std_logic := '0';
	begin
	Z <= std_logic_vector ((A(2)&(unsigned (A))) - (B(2)&(unsigned (B))));
	end process subber;
end architecture task;


