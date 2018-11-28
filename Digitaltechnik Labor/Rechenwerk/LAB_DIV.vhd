library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity div4 is
	port (
		A, B: in std_logic_vector (2 downto 0);
		Z: out std_logic_vector (3 downto 0)
		);
end entity div4;

architecture task of div4 is
begin
	diver: process(A, B) is	
	begin
	if (B = "000") then
		Z<= "0111" ;
	else 
		Z<= std_logic_vector (signed(A(2)&A) / signed (B(2)&B));
	end if;
	end process diver;
end architecture task;


