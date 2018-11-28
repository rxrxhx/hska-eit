library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult4 is
	port (
		A, B: in std_logic_vector (2 downto 0);
		Z: out std_logic_vector (3 downto 0)
		);
end entity mult4;

architecture task of mult4 is
begin
	multer: process(A, B) is	
	variable R :signed( 5 downto 0); --Größer als Zahlenbereich um Rechnung in jedem Fall durchzuführen zu können
	variable K :unsigned(5 downto 0);
	begin
	R := signed(A) * signed(B);
	if R(5) = '1' then -- wenn negative Zahl dann:
		K := unsigned(not R + 1) ;
		if (K(4)='1') or( K(3) ='1') then -- wenn kleiner als darstellbar
			Z<="1000"; -- Maximal darstellbare Zahl im ZK 4Bit Negativ
	    else
			Z<= std_logic_vector(unsigned (not K(3 downto 0))+ 1); -- andere negative Zahlen müssen ins zk gewandelt werden
		end if;
	else
		if R(4)='1' or R(3)='1' then -- wenn groeßer als darstellbar
			Z<= "0111"; -- Maximal darstellbare Zahl im ZK 4Bit Positiv
		else 
			Z<= std_logic_vector(R(3 downto 0)); -- andere Positive Zahlen
		end if;	 
	end if; 
	end process multer;
end architecture task;


