
-- VHDL Test Bench Created from source file mult.vhd -- Fri May 11 01:08:12 2018

--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Lattice recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "source->import"
-- menu in the ispLEVER Project Navigator to import the testbench.
-- Then edit the user defined section below, adding code to generate the 
-- stimulus for your design.
-- 3) VHDL simulations will produce errors if there are Lattice FPGA library 
-- elements in your design that require the instantiation of GSR, PUR, and
-- TSALL and they are not present in the testbench. For more information see
-- the How To section of online help.  
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT mult
	PORT(
		A : IN std_logic_vector(2 downto 0);
		B : IN std_logic_vector(2 downto 0);          
		Z : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	SIGNAL A :  std_logic_vector(2 downto 0);
	SIGNAL B :  std_logic_vector(2 downto 0);
	SIGNAL Z :  std_logic_vector(3 downto 0);

BEGIN

-- Please check and add your generic clause manually
	uut: mult PORT MAP(
		A => A,
		B => B,
		Z => Z
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      A <= "101";
   B <= "111";
   wait for 100 ns; 
   A <= "001";
   B <= "001";
   wait for 100 ns;
   A <= "100";
   B <= "111";
   wait for 100 ns;
   A <= "011";
   B <= "010";
   wait for 100 ns;
   A <= "101";
   B <= "110";
   wait;
   END PROCESS;

-- *** End Test Bench - User Defined Section ***

END;
