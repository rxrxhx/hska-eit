-- **************************
-- Projekt:      DEC7S
-- Autor:        Stoeckle
-- Datum:        14.3.2013
-- Beschreibung: 
-- 
-- Decoder fuer 7-Segment-Anzeigen
-- A3, ... , A0: Input (dual)
-- DP: Dezimalpunkt
-- y1, ... , y8: Output (Segmente A, B, ... , G, DP)
--
-- Historie:
--
-- 14.3.2013  Stoeckle  1. Entwurf
--
-- **************************
--

library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity dec7s is
   port(
      A: in std_logic_vector (3 downto 0); 
	  DP: in std_logic; 
	  y: out std_logic_vector (1 to 8)
	  );
end entity dec7s;

architecture behavior of dec7s is
begin
    dec: process (A, DP) is  
	variable help: std_logic_vector (1 to 8);
	begin
       case A is
	      when "0000" => help := "11111100"; -- 0
		  when "0001" => help := "01100000"; -- 1
		  when "0010" => help := "11011010"; -- 2
	      when "0011" => help := "11110010"; -- 3
		  when "0100" => help := "01100110"; -- 4
		  when "0101" => help := "10110110"; -- 5	
	      when "0110" => help := "10111110"; -- 6
		  when "0111" => help := "11100000"; -- 7
		  when "1000" => help := "11111110"; -- 8
	      when "1001" => help := "11110110"; -- 9
		  when "1010" => help := "11101110"; -- A
		  when "1011" => help := "00111110"; -- B	
	      when "1100" => help := "10011100"; -- C
		  when "1101" => help := "01111010"; -- D
		  when "1110" => help := "10011110"; -- E
	      when "1111" => help := "10001110"; -- F
		  when others => help := "00000000";
	   end case;
	   if DP = '1' then 
	      y <= help or "00000001";
	   else
	      y <= help;
	   end if;
	end process dec;
end architecture behavior;