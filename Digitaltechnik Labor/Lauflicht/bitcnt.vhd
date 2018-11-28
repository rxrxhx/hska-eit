library ieee;
use ieee.std_logic_1164.all;
use work.all;
entity Count4Hex is
 port (
 RD: in std_logic;
 SCLK: in std_logic_vector (11 to 16); -- Schalter fuer ClkGen
 D14, D15: out std_logic; -- LEDs fuer ClkGen
 D: out std_logic_vector (1 to 4);
 SEL: out std_logic_vector (1 to 4);
 SEG: out std_logic_vector (1 to 8)
 );
end entity Count4Hex;
architecture structure of Count4Hex is
 signal Qint: std_logic_vector (3 downto 0);
 signal ClkLeft, ClkRight, Clk100Hz, ClkOsc: std_logic; -- Signale fuer ClkGen
 signal ModeLeft, ModeRight: std_logic_vector (1 downto 0);
begin
 Counter: entity work.Count4 (behavior)
 port map (CLK => ClkLeft, RD => RD, Q => Qint);
 Decoder: entity work.Dec7S (behavior)
 port map (A => D, DP => '0', y => SEG);
 Clock: entity work.ClkGen (behavior)
 port map (ClkModeLeft => ModeLeft, ClkModeRight => ModeRight, PulseLeft => SCLK(11),
 PulseRight => SCLK(12), SignalLeft => D14, SignalRight => D15,
 ClkLeft => ClkLeft, ClkRight => ClkRight, Clk100Hz => Clk100Hz,
 ClkOsc => ClkOsc);
 Main: process (Qint) is
 begin
 SEL(1) <= '1'; -- Aktivieren der Digits
 SEL(2) <= '0';
 SEL(3) <= '0';
 SEL(4) <= '0';
 D(1) <= Qint(3); -- Duale Anzeige
 D(2) <= Qint(2);
 D(3) <= Qint(1);
 D(4) <= Qint(0);
 end process Main;
 ClockMode: process (SCLK) is
 begin
 ModeLeft <= SCLK(13) & SCLK(14);
 ModeRight <= SCLK(15) & SCLK(16);
 end process ClockMode;
end architecture structure; 