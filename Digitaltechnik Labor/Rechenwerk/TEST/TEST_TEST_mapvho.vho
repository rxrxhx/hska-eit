-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.1.0.96
-- ldbanno -n VHDL -o TEST_TEST_mapvho.vho -w -neg -gui TEST_TEST_map.ncd 
-- Netlist created on Fri May 11 01:07:54 2018
-- Netlist written on Fri May 11 01:07:59 2018
-- Design is for device LCMXO2-256HC
-- Design is for package TQFP100
-- Design is for performance grade 4

-- entity alu2_mult
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity alu2_mult is
    port (A0: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
          B1: in Std_logic; CI: in Std_logic; S0: out Std_logic; 
          S1: out Std_logic; CO1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF alu2_mult : ENTITY IS TRUE;

  end alu2_mult;

  architecture Structure of alu2_mult is
  begin
    INST01: FADD2B
      port map (A0=>A0, A1=>A1, B0=>B0, B1=>B1, CI=>CI, COUT=>CO1, S0=>S0, 
                S1=>S1);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_0");

    port (FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal FCO_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component alu2_mult
      port (A0: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            B1: in Std_logic; CI: in Std_logic; S0: out Std_logic; 
            S1: out Std_logic; CO1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    mult_3s_3s_0_cin_lr_add_0: alu2_mult
      port map (A0=>GNDI, A1=>GNDI, B0=>GNDI, B1=>GNDI, CI=>'X', S0=>open, 
                S1=>open, CO1=>FCO_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (FCO_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FCO 	<= FCO_out;


    END PROCESS;

  end Structure;

-- entity SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_1";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; FCI: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_1 : ENTITY IS TRUE;

  end SLICE_1;

  architecture Structure of SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    component alu2_mult
      port (A0: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            B1: in Std_logic; CI: in Std_logic; S0: out Std_logic; 
            S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    t_mult_3s_3s_0_add_0_2: alu2_mult
      port map (A0=>A0_ipd, A1=>A1_ipd, B0=>B0_ipd, B1=>B1_ipd, CI=>FCI_ipd, 
                S0=>F0_out, S1=>F1_out, CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, B0_ipd, A0_ipd, FCI_ipd, F0_out, 
      F1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_FCO,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_2";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; F1: out Std_logic; 
          FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_2 : ENTITY IS TRUE;

  end SLICE_2;

  architecture Structure of SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component alu2_mult
      port (A0: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            B1: in Std_logic; CI: in Std_logic; S0: out Std_logic; 
            S1: out Std_logic; CO1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Cadd_t_mult_3s_3s_0_0_1: alu2_mult
      port map (A0=>GNDI, A1=>A1_ipd, B0=>GNDI, B1=>B1_ipd, CI=>'X', S0=>open, 
                S1=>F1_out, CO1=>FCO_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, F1_out, FCO_out)
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F1_zd 	:= F1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity vcc
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vcc is
    port (PWR1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vcc : ENTITY IS TRUE;

  end vcc;

  architecture Structure of vcc is
  begin
    INST1: VHI
      port map (Z=>PWR1);
  end Structure;

-- entity SLICE_3
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_3";

      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (FCI: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_3 : ENTITY IS TRUE;

  end SLICE_3;

  architecture Structure of SLICE_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component alu2_mult
      port (A0: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            B1: in Std_logic; CI: in Std_logic; S0: out Std_logic; 
            S1: out Std_logic; CO1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    t_mult_3s_3s_0_add_0_3: alu2_mult
      port map (A0=>GNDI, A1=>GNDI, B0=>VCCI, B1=>GNDI, CI=>FCI_ipd, 
                S0=>F0_out, S1=>open, CO1=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    VitalBehavior : PROCESS (FCI_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity alu2_mult0001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity alu2_mult0001 is
    port (A0: in Std_logic; A1: in Std_logic; C0: in Std_logic; 
          C1: in Std_logic; B0: in Std_logic; B1: in Std_logic; 
          D0: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
          S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF alu2_mult0001 : ENTITY IS TRUE;

  end alu2_mult0001;

  architecture Structure of alu2_mult0001 is
  begin
    INST01: MULT2
      port map (A0=>A0, A1=>C0, A2=>A1, A3=>C1, B0=>B0, B1=>D0, B2=>B1, B3=>D1, 
                CI=>CI, P0=>S0, P1=>S1, CO=>CO1);
  end Structure;

-- entity SLICE_4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_4 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_4";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; F1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_4 : ENTITY IS TRUE;

  end SLICE_4;

  architecture Structure of SLICE_4 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    component alu2_mult0001
      port (A0: in Std_logic; A1: in Std_logic; C0: in Std_logic; 
            C1: in Std_logic; B0: in Std_logic; B1: in Std_logic; 
            D0: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    mult_3s_3s_0_mult_0_0: alu2_mult0001
      port map (A0=>A0_ipd, A1=>A1_ipd, C0=>C0_ipd, C1=>C1_ipd, B0=>B0_ipd, 
                B1=>B1_ipd, D0=>D0_ipd, D1=>D1_ipd, CI=>FCI_ipd, S0=>F0_out, 
                S1=>F1_out, CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, FCI_ipd, F0_out, F1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F1,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F1,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F1,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_FCO,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_FCO,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_FCO,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_FCO,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_5
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_5 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_5";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; B1: in Std_logic; D0: in Std_logic; 
          C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          FCI: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_5 : ENTITY IS TRUE;

  end SLICE_5;

  architecture Structure of SLICE_5 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component alu2_mult0001
      port (A0: in Std_logic; A1: in Std_logic; C0: in Std_logic; 
            C1: in Std_logic; B0: in Std_logic; B1: in Std_logic; 
            D0: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    mult_3s_3s_0_mult_0_1: alu2_mult0001
      port map (A0=>A0_ipd, A1=>GNDI, C0=>C0_ipd, C1=>GNDI, B0=>B0_ipd, 
                B1=>B1_ipd, D0=>D0_ipd, D1=>D1_ipd, CI=>FCI_ipd, S0=>F0_out, 
                S1=>F1_out, CO1=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, B1_ipd, D0_ipd, C0_ipd, B0_ipd, A0_ipd, 
      FCI_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F1,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F1,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"CCC8")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40002
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40002 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40002 : ENTITY IS TRUE;

  end lut40002;

  architecture Structure of lut40002 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"EEEE")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_6
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_6 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_6";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_6 : ENTITY IS TRUE;

  end SLICE_6;

  architecture Structure of SLICE_6 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i1_4_lut: lut4
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    i1_2_lut: lut40002
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, B0_ipd, A0_ipd, 
      F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40003
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40003 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40003 : ENTITY IS TRUE;

  end lut40003;

  architecture Structure of lut40003 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"8888")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40004
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40004 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40004 : ENTITY IS TRUE;

  end lut40004;

  architecture Structure of lut40004 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"8F0E")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_7
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_7 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_7";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; D0: in Std_logic; 
          C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_7 : ENTITY IS TRUE;

  end SLICE_7;

  architecture Structure of SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    AND2_t5: lut40003
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    R_0_bdd_4_lut: lut40004
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, A0_ipd, 
      F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40005
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40005 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40005 : ENTITY IS TRUE;

  end lut40005;

  architecture Structure of lut40005 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"B332")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_8
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_8 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_8";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_8 : ENTITY IS TRUE;

  end SLICE_8;

  architecture Structure of SLICE_8 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    R_1_bdd_4_lut: lut40004
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    R_2_bdd_4_lut: lut40005
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40006
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40006 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40006 : ENTITY IS TRUE;

  end lut40006;

  architecture Structure of lut40006 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7777")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_9
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_9 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_9";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_9 : ENTITY IS TRUE;

  end SLICE_9;

  architecture Structure of SLICE_9 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    ND2_t1: lut40006
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    AND2_t0: lut40003
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_10
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_10 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_10";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_10 : ENTITY IS TRUE;

  end SLICE_10;

  architecture Structure of SLICE_10 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    ND2_t4: lut40006
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    ND2_t3: lut40006
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40007
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40007 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40007 : ENTITY IS TRUE;

  end lut40007;

  architecture Structure of lut40007 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FFFF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_11
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_11 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_11";

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_11 : ENTITY IS TRUE;

  end SLICE_11;

  architecture Structure of SLICE_11 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40007
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i2: lut40007
      port map (A=>GNDI, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i1_2_lut_adj_1: lut40002
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1 	<= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_12
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_12 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_12";

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_12 : ENTITY IS TRUE;

  end SLICE_12;

  architecture Structure of SLICE_12 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    ND2_t2: lut40006
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity Z_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Z_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Z_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Z2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Z2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Z_2_B : ENTITY IS TRUE;

  end Z_2_B;

  architecture Structure of Z_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Z2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Z_pad_2: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Z2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Z2_out)
    VARIABLE Z2_zd         	: std_logic := 'X';
    VARIABLE Z2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Z2_zd 	:= Z2_out;

    VitalPathDelay01 (
      OutSignal => Z2, OutSignalName => "Z2", OutTemp => Z2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Z2,
                           PathCondition => TRUE)),
      GlitchData => Z2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Z_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Z_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Z_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Z3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Z3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Z_3_B : ENTITY IS TRUE;

  end Z_3_B;

  architecture Structure of Z_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Z3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Z_pad_3: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Z3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Z3_out)
    VARIABLE Z3_zd         	: std_logic := 'X';
    VARIABLE Z3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Z3_zd 	:= Z3_out;

    VitalPathDelay01 (
      OutSignal => Z3, OutSignalName => "Z3", OutTemp => Z3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Z3,
                           PathCondition => TRUE)),
      GlitchData => Z3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Z_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Z_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Z_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Z1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Z1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Z_1_B : ENTITY IS TRUE;

  end Z_1_B;

  architecture Structure of Z_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Z1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Z_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Z1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Z1_out)
    VARIABLE Z1_zd         	: std_logic := 'X';
    VARIABLE Z1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Z1_zd 	:= Z1_out;

    VitalPathDelay01 (
      OutSignal => Z1, OutSignalName => "Z1", OutTemp => Z1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Z1,
                           PathCondition => TRUE)),
      GlitchData => Z1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Z_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Z_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Z_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Z0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Z0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Z_0_B : ENTITY IS TRUE;

  end Z_0_B;

  architecture Structure of Z_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Z0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Z_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Z0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Z0_out)
    VARIABLE Z0_zd         	: std_logic := 'X';
    VARIABLE Z0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Z0_zd 	:= Z0_out;

    VitalPathDelay01 (
      OutSignal => Z0, OutSignalName => "Z0", OutTemp => Z0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Z0,
                           PathCondition => TRUE)),
      GlitchData => Z0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0008
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0008 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0008 : ENTITY IS TRUE;

  end xo2iobuf0008;

  architecture Structure of xo2iobuf0008 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity A_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity A_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "A_2_B";

      tipd_A2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_A2 	: VitalDelayType := 0 ns;
      tpw_A2_posedge	: VitalDelayType := 0 ns;
      tpw_A2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; A2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF A_2_B : ENTITY IS TRUE;

  end A_2_B;

  architecture Structure of A_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal A2_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    A_pad_2: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>A2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A2_ipd, A2, tipd_A2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, A2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_A2_A2          	: x01 := '0';
    VARIABLE periodcheckinfo_A2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => A2_ipd,
        TestSignalName => "A2",
        Period => tperiod_A2,
        PulseWidthHigh => tpw_A2_posedge,
        PulseWidthLow => tpw_A2_negedge,
        PeriodData => periodcheckinfo_A2,
        Violation => tviol_A2_A2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => A2_ipd'last_event,
                           PathDelay => tpd_A2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity A_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity A_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "A_1_B";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_A1 	: VitalDelayType := 0 ns;
      tpw_A1_posedge	: VitalDelayType := 0 ns;
      tpw_A1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; A1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF A_1_B : ENTITY IS TRUE;

  end A_1_B;

  architecture Structure of A_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    A_pad_1: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>A1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, A1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_A1_A1          	: x01 := '0';
    VARIABLE periodcheckinfo_A1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => A1_ipd,
        TestSignalName => "A1",
        Period => tperiod_A1,
        PulseWidthHigh => tpw_A1_posedge,
        PulseWidthLow => tpw_A1_negedge,
        PeriodData => periodcheckinfo_A1,
        Violation => tviol_A1_A1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity A_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity A_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "A_0_B";

      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_A0 	: VitalDelayType := 0 ns;
      tpw_A0_posedge	: VitalDelayType := 0 ns;
      tpw_A0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; A0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF A_0_B : ENTITY IS TRUE;

  end A_0_B;

  architecture Structure of A_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    A_pad_0: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>A0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, A0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_A0_A0          	: x01 := '0';
    VARIABLE periodcheckinfo_A0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => A0_ipd,
        TestSignalName => "A0",
        Period => tperiod_A0,
        PulseWidthHigh => tpw_A0_posedge,
        PulseWidthLow => tpw_A0_negedge,
        PeriodData => periodcheckinfo_A0,
        Violation => tviol_A0_A0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity B_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity B_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "B_2_B";

      tipd_B2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_B2 	: VitalDelayType := 0 ns;
      tpw_B2_posedge	: VitalDelayType := 0 ns;
      tpw_B2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; B2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF B_2_B : ENTITY IS TRUE;

  end B_2_B;

  architecture Structure of B_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal B2_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    B_pad_2: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>B2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B2_ipd, B2, tipd_B2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, B2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_B2_B2          	: x01 := '0';
    VARIABLE periodcheckinfo_B2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => B2_ipd,
        TestSignalName => "B2",
        Period => tperiod_B2,
        PulseWidthHigh => tpw_B2_posedge,
        PulseWidthLow => tpw_B2_negedge,
        PeriodData => periodcheckinfo_B2,
        Violation => tviol_B2_B2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => B2_ipd'last_event,
                           PathDelay => tpd_B2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity B_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity B_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "B_1_B";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_B1 	: VitalDelayType := 0 ns;
      tpw_B1_posedge	: VitalDelayType := 0 ns;
      tpw_B1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; B1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF B_1_B : ENTITY IS TRUE;

  end B_1_B;

  architecture Structure of B_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    B_pad_1: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>B1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, B1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_B1_B1          	: x01 := '0';
    VARIABLE periodcheckinfo_B1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => B1_ipd,
        TestSignalName => "B1",
        Period => tperiod_B1,
        PulseWidthHigh => tpw_B1_posedge,
        PulseWidthLow => tpw_B1_negedge,
        PeriodData => periodcheckinfo_B1,
        Violation => tviol_B1_B1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity B_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity B_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "B_0_B";

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_B0 	: VitalDelayType := 0 ns;
      tpw_B0_posedge	: VitalDelayType := 0 ns;
      tpw_B0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; B0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF B_0_B : ENTITY IS TRUE;

  end B_0_B;

  architecture Structure of B_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    B_pad_0: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>B0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, B0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_B0_B0          	: x01 := '0';
    VARIABLE periodcheckinfo_B0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => B0_ipd,
        TestSignalName => "B0",
        Period => tperiod_B0,
        PulseWidthHigh => tpw_B0_posedge,
        PulseWidthLow => tpw_B0_negedge,
        PeriodData => periodcheckinfo_B0,
        Violation => tviol_B0_B0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity mult
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity mult is
    port (A: in Std_logic_vector (2 downto 0); 
          B: in Std_logic_vector (2 downto 0); 
          Z: out Std_logic_vector (3 downto 0));



  end mult;

  architecture Structure of mult is
    signal mult_3s_3s_0_cin_lr_0: Std_logic;
    signal mult_3s_3s_0_pp_1_4: Std_logic;
    signal mult_3s_3s_0_pp_0_4: Std_logic;
    signal mult_3s_3s_0_pp_1_3: Std_logic;
    signal mult_3s_3s_0_pp_0_3: Std_logic;
    signal co_t_mult_3s_3s_0_0_1: Std_logic;
    signal R_3: Std_logic;
    signal R_4: Std_logic;
    signal co_t_mult_3s_3s_0_0_2: Std_logic;
    signal mult_3s_3s_0_pp_1_2: Std_logic;
    signal mult_3s_3s_0_pp_0_2: Std_logic;
    signal R_2: Std_logic;
    signal R_5: Std_logic;
    signal VCC_net: Std_logic;
    signal mult_3s_3s_0_mult_0_0_n3: Std_logic;
    signal B_c_1: Std_logic;
    signal A_c_1: Std_logic;
    signal B_c_0: Std_logic;
    signal A_c_0: Std_logic;
    signal R_1: Std_logic;
    signal mco: Std_logic;
    signal mult_3s_3s_0_mult_0_1_n0: Std_logic;
    signal n30: Std_logic;
    signal R_0: Std_logic;
    signal n5: Std_logic;
    signal n144: Std_logic;
    signal Z_c: Std_logic;
    signal n145: Std_logic;
    signal n146: Std_logic;
    signal B_c_2: Std_logic;
    signal A_c_2: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (FCO: out Std_logic);
    end component;
    component SLICE_1
      port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; FCI: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic; FCO: out Std_logic);
    end component;
    component SLICE_2
      port (B1: in Std_logic; A1: in Std_logic; F1: out Std_logic; 
            FCO: out Std_logic);
    end component;
    component SLICE_3
      port (FCI: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_4
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic; FCO: out Std_logic);
    end component;
    component SLICE_5
      port (D1: in Std_logic; B1: in Std_logic; D0: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            FCI: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_6
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_7
      port (B1: in Std_logic; A1: in Std_logic; D0: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_8
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_9
      port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_10
      port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_11
      port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_12
      port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);
    end component;
    component Z_2_B
      port (PADDO: in Std_logic; Z2: out Std_logic);
    end component;
    component Z_3_B
      port (PADDO: in Std_logic; Z3: out Std_logic);
    end component;
    component Z_1_B
      port (PADDO: in Std_logic; Z1: out Std_logic);
    end component;
    component Z_0_B
      port (PADDO: in Std_logic; Z0: out Std_logic);
    end component;
    component A_2_B
      port (PADDI: out Std_logic; A2: in Std_logic);
    end component;
    component A_1_B
      port (PADDI: out Std_logic; A1: in Std_logic);
    end component;
    component A_0_B
      port (PADDI: out Std_logic; A0: in Std_logic);
    end component;
    component B_2_B
      port (PADDI: out Std_logic; B2: in Std_logic);
    end component;
    component B_1_B
      port (PADDI: out Std_logic; B1: in Std_logic);
    end component;
    component B_0_B
      port (PADDI: out Std_logic; B0: in Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (FCO=>mult_3s_3s_0_cin_lr_0);
    SLICE_1I: SLICE_1
      port map (B1=>mult_3s_3s_0_pp_1_4, A1=>mult_3s_3s_0_pp_0_4, 
                B0=>mult_3s_3s_0_pp_1_3, A0=>mult_3s_3s_0_pp_0_3, 
                FCI=>co_t_mult_3s_3s_0_0_1, F0=>R_3, F1=>R_4, 
                FCO=>co_t_mult_3s_3s_0_0_2);
    SLICE_2I: SLICE_2
      port map (B1=>mult_3s_3s_0_pp_1_2, A1=>mult_3s_3s_0_pp_0_2, F1=>R_2, 
                FCO=>co_t_mult_3s_3s_0_0_1);
    SLICE_3I: SLICE_3
      port map (FCI=>co_t_mult_3s_3s_0_0_2, F0=>R_5);
    SLICE_4I: SLICE_4
      port map (D1=>VCC_net, C1=>mult_3s_3s_0_mult_0_0_n3, B1=>B_c_1, 
                A1=>A_c_1, D0=>B_c_0, C0=>A_c_1, B0=>B_c_1, A0=>A_c_0, 
                FCI=>mult_3s_3s_0_cin_lr_0, F0=>R_1, F1=>mult_3s_3s_0_pp_0_2, 
                FCO=>mco);
    SLICE_5I: SLICE_5
      port map (D1=>B_c_0, B1=>B_c_1, D0=>VCC_net, C0=>VCC_net, B0=>VCC_net, 
                A0=>mult_3s_3s_0_mult_0_1_n0, FCI=>mco, 
                F0=>mult_3s_3s_0_pp_0_3, F1=>mult_3s_3s_0_pp_0_4);
    SLICE_6I: SLICE_6
      port map (D1=>n30, C1=>R_0, B1=>R_5, A1=>n5, B0=>R_2, A0=>R_1, F0=>n5, 
                F1=>n144);
    SLICE_7I: SLICE_7
      port map (B1=>B_c_0, A1=>A_c_0, D0=>R_3, C0=>R_5, B0=>R_4, A0=>R_0, 
                F0=>Z_c, F1=>R_0);
    SLICE_8I: SLICE_8
      port map (D1=>R_3, C1=>R_5, B1=>R_4, A1=>R_1, D0=>R_3, C0=>R_4, B0=>R_5, 
                A0=>R_2, F0=>n145, F1=>n146);
    SLICE_9I: SLICE_9
      port map (B1=>B_c_2, A1=>A_c_1, B0=>B_c_2, A0=>A_c_2, 
                F0=>mult_3s_3s_0_pp_1_4, F1=>mult_3s_3s_0_pp_1_3);
    SLICE_10I: SLICE_10
      port map (B1=>B_c_0, A1=>A_c_2, B0=>B_c_1, A0=>A_c_2, 
                F0=>mult_3s_3s_0_mult_0_1_n0, F1=>mult_3s_3s_0_mult_0_0_n3);
    SLICE_11I: SLICE_11
      port map (B0=>R_4, A0=>R_3, F0=>n30, F1=>VCC_net);
    SLICE_12I: SLICE_12
      port map (B0=>B_c_2, A0=>A_c_0, F0=>mult_3s_3s_0_pp_1_2);
    Z_2_I: Z_2_B
      port map (PADDO=>n145, Z2=>Z(2));
    Z_3_I: Z_3_B
      port map (PADDO=>n144, Z3=>Z(3));
    Z_1_I: Z_1_B
      port map (PADDO=>n146, Z1=>Z(1));
    Z_0_I: Z_0_B
      port map (PADDO=>Z_c, Z0=>Z(0));
    A_2_I: A_2_B
      port map (PADDI=>A_c_2, A2=>A(2));
    A_1_I: A_1_B
      port map (PADDI=>A_c_1, A1=>A(1));
    A_0_I: A_0_B
      port map (PADDI=>A_c_0, A0=>A(0));
    B_2_I: B_2_B
      port map (PADDI=>B_c_2, B2=>B(2));
    B_1_I: B_1_B
      port map (PADDI=>B_c_1, B1=>B(1));
    B_0_I: B_0_B
      port map (PADDI=>B_c_0, B0=>B(0));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCC_net);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of mult is
    for Structure
    end for;
  end Structure_CON;


