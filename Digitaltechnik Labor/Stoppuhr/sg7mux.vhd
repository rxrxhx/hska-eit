library ieee;
use ieee.std_logic_1164.all;

entity mux4 is
 port (
	D1: in std_logic_vector(3 downto 0);
	D2: in std_logic_vector(3 downto 0);
	D3: in std_logic_vector(3 downto 0);
	D4: in std_logic_vector(3 downto 0);
	Clk: in std_logic;
	
	Q: out std_logic_vector(3 downto 0);
	DP: out std_logic;
	Seg7: out std_logic_vector(3 downto 0) 
	);
end entity mux4;

architecture behavior of mux4 is
begin
	dec: process (D1, D2, D3, D4, Clk) is
	variable cnt: integer := 0;
	begin
	
	if (rising_edge(Clk)) then
		if(cnt < 3) then
			cnt := cnt + 1;
		else
			cnt := 0;
		end if;
	end if;
	
	case cnt is
		when 0=> Q <= D1; Seg7 <= "1000"; DP <= '0';
		when 1=> Q <= D2; Seg7 <= "0100"; DP <= '0';
		when 2=> Q <= D3; Seg7 <= "0010"; DP <= '1';
		when 3=> Q <= D4; Seg7 <= "0001"; DP <= '0';
		when others => null;
	end case;
	
 end process dec;
end architecture behavior; 