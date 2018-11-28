library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity equal is
port(
	A,B: in std_logic_vector(3 downto 0);
	GR,EQ,LE: out std_logic
);
end entity;

architecture behaviour of equal is
begin
verg: process (A, B) is
type int24 is range -8 to 15;
variable a_int: int24; 
variable b_int: int24;
variable i: int24;
variable sum: int24;
begin

sum := 0;

for i in 3 downto 0 loop
	if A(i) = '0' then
		sum := sum * 2;
	else
		sum := sum * 2 + 1;
	end if;
end loop;
if A(3) = '0' then
	a_int := sum;
else
	a_int := sum – 16;
end if;

end process verg; 
end architecture behaviour;
