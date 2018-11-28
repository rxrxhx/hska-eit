library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add4 is
	port (
		A, B: in std_logic_vector (2 downto 0);
		Z: out std_logic_vector (3 downto 0)
		);
end entity add4;

architecture task of add4 is

begin
	adder: process(A, B) is
	constant M: std_logic := '0';
	begin
	Z <= std_logic_vector ((A(2)&(unsigned (A))) + (B(2)&(unsigned (B))));
	end process adder;
end architecture task;


