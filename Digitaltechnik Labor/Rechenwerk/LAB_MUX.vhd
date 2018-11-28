library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity mux4 is
	port (
	A, B: in std_logic_vector(2 downto 0);
	C: in std_logic_vector(1 downto 0);
	Q: out std_logic_vector(3 downto 0)
	);
end entity mux4;

architecture struct of mux4 is
signal Q0: std_logic_vector(3 downto 0);
signal Q1: std_logic_vector(3 downto 0);
signal Q2: std_logic_vector(3 downto 0);
signal Q3: std_logic_vector(3 downto 0);
begin
	add: entity work.add4(task) port map(
		A => A,
		B => B,
		Z => Q0);
	sub: entity work.sub4(task) port map(
		A => A,
		B => B,
		Z => Q1);
	mul: entity work.mult4(task) port map(
		A => A,
		B => B,
		Z => Q2);
	div: entity work.div4(task) port map(
		A => A,
		B => B,
		Z => Q3);
	
	Main: process(C) is
	begin
		case C is
			when "00" => Q <= Q0;
			when "01" => Q <= Q1;
			when "10" => Q <= Q2;
			when "11" => Q <= Q3;
			when others => null;
		end case;
	end process Main;
end architecture struct;
 		