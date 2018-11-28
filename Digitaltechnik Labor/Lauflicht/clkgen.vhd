-- **************************
-- Projekt:      ClkGen
-- Autor:        Stoeckle
-- Datum:        9.6.2013
-- Beschreibung: 
-- 
-- Definition des Moduls ClkGen
-- 
-- ClkGen erzeugt alle Taktsignale. Taktquelle ist der interne Oszillator,
-- der 2,08 MHz abgibt. Der EFB Timer/Counter reduziert die Frequenz auf 200 Hz.
-- Von ClkGen darf nur eine Instanz erzeugt werden, da der interne Oszillator-- und der EFB Timer/Counter nur einmal vorhanden sind.
--
-- Eingaenge:
-- ClkModeLeft: Auswahl der Frequenz 
-- 00: Pulse
-- 01: 0,3 Hz (Left)
-- 10: 1 Hz (Left)
-- 11: 3 Hz (Left)
-- ClkModeRight
-- 00: Pulse
-- 01: 1 Hz
-- 10: 3 Hz
-- 11: 100 Hz
-- PulseLeft, PulseRight: Tastersignal
--
-- Ausgaenge:
-- ClkLeft, ClkRight: Taktsignale
-- SignalLeft, SignalRight: Signalisierung über D14 (Left) und D15 (Right)
-- Clk100Hz: 100 Hz
-- Clk200Hz: 200 Hz
-- ClkOsc: 2,08 MHz
-- 
-- Historie:
--
-- 23.3.2013  Stoeckle  1. Entwurf
-- 28.3.2013  1. Entwurf passt nicht in das PLD. Die Erzeugung von
--            Clk03Hz, Clk3Hz und Clk1Hz jeweils aus ClkOsc erfordert eine
--            zu hohe Registerbreite. Deshalb Aenderung so, dass Clk3Hz aus
--            100 Hz erzeugt wird. Clk1Hz, Clk3Hz, Clk03Hz ebenso.
-- 9.6.2013   Clk200Hz eingefuegt. Zeitbasis ist nun Clk200Hz. Aus Clk200Hz wird
--            CLK100Hz erzeugt. Aus Clk100Hz die restlichen Frequenzen.
--
-- **************************
--

library ieee;
use ieee.std_logic_1164.all;
use work.all;
library machxo2;
use machxo2.components.all;

entity ClkGen is
   port(
      ClkModeLeft: in std_logic_vector (1 downto 0);
	  ClkModeRight: in std_logic_vector (1 downto 0);
	  PulseLeft: in std_logic;
	  PulseRight: in std_logic;
	  ClkLeft: out std_logic;
	  ClkRight: out std_logic;
	  SignalLeft: out std_logic;
	  SignalRight: out std_logic;
	  Clk100Hz: out std_logic;
	  Clk200Hz: out std_logic;
	  ClkOsc: out std_logic
	  );
end entity ClkGen;

architecture behavior of ClkGen is

     signal SigClkOsc: std_logic;
     signal SigClk100Hz: std_logic;
	 signal SigClk200Hz: std_logic;
   
   component OSCH is
      generic (NOM_FREQ: string);
	  port (
	     STDBY: in std_logic;
		 OSC: out std_logic;
		 SEDSTDBY: out std_logic
		 );
   end component OSCH;
   
begin
 
    OscInst0: component OSCH                    -- Interner Oszillator mit 2,08 MHz
	   generic map (NOM_FREQ => "2.08")
	   port map (STDBY => '0', OSC => SigClkOsc);
	
	CTInst0: entity work.CT(Structure)          -- Interner Counter/Timer
	   port map (tc_clki => SigClkOsc, tc_rstn => '1', tc_oc => SigClk200Hz);
	   
	Counter: process (PulseLeft, PulseRight, SigClk200Hz, SigClkOsc) is	

    type int_range_34 is range 0 to 34;
	type int_range_100 is range 0 to 100;
	type int_range_334 is range 0 to 334;
	variable Counter03Hz: int_range_334;
	variable Counter3Hz: int_range_34;
	variable Counter1Hz: int_range_100;
	variable Clk3Hz: std_logic;
	variable Clk1Hz: std_logic;
	variable Clk03Hz: std_logic;
	
    begin
	
	   -- Erzeugung der Frequenzen
	   if SigClk200Hz'event and SigClk200Hz = '1' then 
	      if Counter3Hz < 34 then                             -- 3 Hz
		     Counter3Hz := Counter3Hz + 1;
		  else
		     Counter3Hz := 0;
			 Clk3Hz := not Clk3Hz;
		  end if;
	      if Counter1Hz < 100 then                            -- 1 Hz
		     Counter1Hz := Counter1Hz + 1;
		  else
		     Counter1Hz := 0;
			 Clk1Hz := not Clk1Hz;
		  end if;
	      if Counter03Hz < 334 then                           -- 0,3 Hz
		     Counter03Hz := Counter03Hz + 1;
		  else
		     Counter03Hz := 0;
			 Clk03Hz := not Clk03Hz;
		  end if;	
          SigClk100Hz <= not (SigClk100Hz);                  -- 100 Hz		  
	   end if;

       -- Erzeugung der Signale fuer Generator Left
	   case ClkModeLeft is
	      when "00" =>                         -- Pulse
		     ClkLeft <= PulseLeft;
			 SignalLeft <= PulseLeft;
		  when "01" =>                         -- 0,3 Hz
		     ClkLeft <= Clk03Hz;
			 SignalLeft <= Clk03Hz;
		  when "10" =>                         -- 1 Hz
		     ClkLeft <= Clk1Hz;
			 SignalLeft <= Clk1Hz;
		  when "11" =>                         -- 3 Hz
		     ClkLeft <= Clk3Hz;
			 SignalLeft <= Clk3Hz;
		  when others =>
		     ClkLeft <= PulseLeft;
			 SignalLeft <= PulseLeft;
	   end case;
		     
       -- Erzeugung der Signale fuer Generator Right
	   case ClkModeRight is
	      when "00" =>
		     ClkRight <= PulseRight;          -- Pulse
			 SignalRight <= PulseRight;
		  when "01" =>                        -- 1 Hz
		     ClkRight <= Clk1Hz;
			 SignalRight <= Clk1Hz;
		  when "10" =>                        -- 3 Hz
		     ClkRight <= Clk3Hz;
			 SignalRight <= Clk3Hz;
		  when "11" =>                        -- 100 Hz
		     ClkRight <= SigClk100Hz;
			 SignalRight <= SigClk100Hz;
		  when others =>
		     ClkRight <= PulseRight;
			 SignalRight <= PulseRight;
	   end case;
	   
	   -- Erzeugung der restlichen Signale
	   Clk100Hz <= SigClk100Hz;
	   ClkOsc <= SigClkOsc;
	   Clk200Hz <= SigClk200Hz;
 	
 	end process Counter;
	
end architecture behavior;