library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult is
port(
     A: in std_logic_vector(2 downto 0);
	 B: in std_logic_vector(2 downto 0);
	 Z: out std_logic_vector(3 downto 0)
	 );
	 end entity;
	 
architecture behaviour of mult is
  begin
  process(A,B) is 

   variable R :signed( 5 downto 0);
   variable K :unsigned(5 downto 0);
    
	begin
	R := signed(A)*signed(B);
	 if R(5) ='1' then
	 
	 K := unsigned(not R +"000001") ;
	   if (K(4)='1') or( K(3) ='1') then
	   Z<="1000";
	   
	   else
	   Z<= std_logic_vector(not K(3 downto 0)+ "0001");
	    end if;
 else
	if (R(4)='1') or (R(3)='1') then
	Z<= "0111";
	 else 
	 Z<= std_logic_vector(R(3 downto 0));
	 
   
         end if;
		 
		end if; 
	 
	 end process ;

end architecture;