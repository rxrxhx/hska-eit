-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.1.0.96

-- ldbanno -n VHDL -o LAB_MUX_LAB_MUX_mapvho.vho -w -neg -gui LAB_MUX_LAB_MUX_map.ncd 
-- Netlist created on Fri May 11 02:24:07 2018
-- Netlist written on Fri May 11 02:24:11 2018
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
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; F1: out Std_logic; 
          FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_1 : ENTITY IS TRUE;

  end SLICE_1;

  architecture Structure of SLICE_1 is
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

    ATTRIBUTE Vital_Level0 OF SLICE_2 : ENTITY IS TRUE;

  end SLICE_2;

  architecture Structure of SLICE_2 is
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
      generic map (initval => X"65A5")
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
      generic map (initval => X"CACA")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity selmux2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity selmux2 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF selmux2 : ENTITY IS TRUE;

  end selmux2;

  architecture Structure of selmux2 is
  begin
    INST1: MUX21
      port map (D0=>D0, D1=>D1, SD=>SD, Z=>Z);
  end Structure;

-- entity i311_SLICE_6
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity i311_SLICE_6 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "i311_SLICE_6";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; M0: in Std_logic; OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF i311_SLICE_6 : ENTITY IS TRUE;

  end i311_SLICE_6;

  architecture Structure of i311_SLICE_6 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal i311_SLICE_6_i311_SLICE_6_K1_H1: Std_logic;
    signal GNDI: Std_logic;
    signal i311_SLICE_6_i311_GATE_H0: Std_logic;
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
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i311_SLICE_6_K1: lut4
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>i311_SLICE_6_i311_SLICE_6_K1_H1);
    i311_GATE: lut40002
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, 
                Z=>i311_SLICE_6_i311_GATE_H0);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i311_SLICE_6_K0K1MUX: selmux2
      port map (D0=>i311_SLICE_6_i311_GATE_H0, 
                D1=>i311_SLICE_6_i311_SLICE_6_K1_H1, SD=>M0_ipd, Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, 
      A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
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
      generic map (initval => X"708F")
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
      generic map (initval => X"3AAA")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity i313_SLICE_7
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity i313_SLICE_7 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "i313_SLICE_7";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF i313_SLICE_7 : ENTITY IS TRUE;

  end i313_SLICE_7;

  architecture Structure of i313_SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal i313_SLICE_7_i313_SLICE_7_K1_H1: Std_logic;
    signal i313_SLICE_7_i313_GATE_H0: Std_logic;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
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
    i313_SLICE_7_K1: lut40003
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>i313_SLICE_7_i313_SLICE_7_K1_H1);
    i313_GATE: lut40004
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>i313_SLICE_7_i313_GATE_H0);
    i313_SLICE_7_K0K1MUX: selmux2
      port map (D0=>i313_SLICE_7_i313_GATE_H0, 
                D1=>i313_SLICE_7_i313_SLICE_7_K1_H1, SD=>M0_ipd, Z=>OFX0_out);

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
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
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
      generic map (initval => X"06F9")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity i315_SLICE_8
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity i315_SLICE_8 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "i315_SLICE_8";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF i315_SLICE_8 : ENTITY IS TRUE;

  end i315_SLICE_8;

  architecture Structure of i315_SLICE_8 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal i315_SLICE_8_i315_SLICE_8_K1_H1: Std_logic;
    signal i315_SLICE_8_i315_GATE_H0: Std_logic;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i315_SLICE_8_K1: lut40005
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>i315_SLICE_8_i315_SLICE_8_K1_H1);
    i315_GATE: lut40004
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>i315_SLICE_8_i315_GATE_H0);
    i315_SLICE_8_K0K1MUX: selmux2
      port map (D0=>i315_SLICE_8_i315_GATE_H0, 
                D1=>i315_SLICE_8_i315_SLICE_8_K1_H1, SD=>M0_ipd, Z=>OFX0_out);

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
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
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
      generic map (initval => X"66F0")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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
      generic map (initval => X"6996")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity i1858_SLICE_9
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity i1858_SLICE_9 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "i1858_SLICE_9";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF i1858_SLICE_9 : ENTITY IS TRUE;

  end i1858_SLICE_9;

  architecture Structure of i1858_SLICE_9 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal i1858_SLICE_9_i1858_SLICE_9_K1_H1: Std_logic;
    signal i1858_SLICE_9_i1858_GATE_H0: Std_logic;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40007
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i1858_SLICE_9_K1: lut40006
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>i1858_SLICE_9_i1858_SLICE_9_K1_H1);
    i1858_GATE: lut40007
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>i1858_SLICE_9_i1858_GATE_H0);
    i1858_SLICE_9_K0K1MUX: selmux2
      port map (D0=>i1858_SLICE_9_i1858_GATE_H0, 
                D1=>i1858_SLICE_9_i1858_SLICE_9_K1_H1, SD=>M0_ipd, Z=>OFX0_out);

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
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity i1856_SLICE_10
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity i1856_SLICE_10 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "i1856_SLICE_10";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF i1856_SLICE_10 : ENTITY IS TRUE;

  end i1856_SLICE_10;

  architecture Structure of i1856_SLICE_10 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal i1856_SLICE_10_i1856_SLICE_10_K1_H1: Std_logic;
    signal i1856_SLICE_10_i1856_GATE_H0: Std_logic;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40007
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i1856_SLICE_10_K1: lut40006
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>i1856_SLICE_10_i1856_SLICE_10_K1_H1);
    i1856_GATE: lut40007
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>i1856_SLICE_10_i1856_GATE_H0);
    i1856_SLICE_10_K0K1MUX: selmux2
      port map (D0=>i1856_SLICE_10_i1856_GATE_H0, 
                D1=>i1856_SLICE_10_i1856_SLICE_10_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

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
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40008
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40008 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40008 : ENTITY IS TRUE;

  end lut40008;

  architecture Structure of lut40008 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"277F")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40009
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40009 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40009 : ENTITY IS TRUE;

  end lut40009;

  architecture Structure of lut40009 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"2F22")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity div_i1854_SLICE_11
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity div_i1854_SLICE_11 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "div_i1854_SLICE_11";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF div_i1854_SLICE_11 : ENTITY IS TRUE;

  end div_i1854_SLICE_11;

  architecture Structure of div_i1854_SLICE_11 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal div_i1854_SLICE_11_div_i1854_SLICE_11_K1_H1: Std_logic;
    signal div_i1854_SLICE_11_div_i1854_GATE_H0: Std_logic;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40008
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40009
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    div_i1854_SLICE_11_K1: lut40008
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>div_i1854_SLICE_11_div_i1854_SLICE_11_K1_H1);
    div_i1854_GATE: lut40009
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>div_i1854_SLICE_11_div_i1854_GATE_H0);
    div_i1854_SLICE_11_K0K1MUX: selmux2
      port map (D0=>div_i1854_SLICE_11_div_i1854_GATE_H0, 
                D1=>div_i1854_SLICE_11_div_i1854_SLICE_11_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

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
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40010
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40010 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40010 : ENTITY IS TRUE;

  end lut40010;

  architecture Structure of lut40010 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"3535")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40011
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40011 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40011 : ENTITY IS TRUE;

  end lut40011;

  architecture Structure of lut40011 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"C5CA")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity i309_SLICE_12
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity i309_SLICE_12 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "i309_SLICE_12";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; M0: in Std_logic; OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF i309_SLICE_12 : ENTITY IS TRUE;

  end i309_SLICE_12;

  architecture Structure of i309_SLICE_12 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal i309_SLICE_12_i309_SLICE_12_K1_H1: Std_logic;
    signal i309_SLICE_12_i309_GATE_H0: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40010
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40011
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i309_SLICE_12_K1: lut40010
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, 
                Z=>i309_SLICE_12_i309_SLICE_12_K1_H1);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i309_GATE: lut40011
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>i309_SLICE_12_i309_GATE_H0);
    i309_SLICE_12_K0K1MUX: selmux2
      port map (D0=>i309_SLICE_12_i309_GATE_H0, 
                D1=>i309_SLICE_12_i309_SLICE_12_K1_H1, SD=>M0_ipd, Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40012
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40012 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40012 : ENTITY IS TRUE;

  end lut40012;

  architecture Structure of lut40012 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0101")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40013
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40013 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40013 : ENTITY IS TRUE;

  end lut40013;

  architecture Structure of lut40013 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7EFA")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity i29_SLICE_13
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity i29_SLICE_13 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "i29_SLICE_13";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; M0: in Std_logic; OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF i29_SLICE_13 : ENTITY IS TRUE;

  end i29_SLICE_13;

  architecture Structure of i29_SLICE_13 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal i29_SLICE_13_i29_SLICE_13_K1_H1: Std_logic;
    signal i29_SLICE_13_i29_GATE_H0: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40012
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40013
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i29_SLICE_13_K1: lut40012
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, 
                Z=>i29_SLICE_13_i29_SLICE_13_K1_H1);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i29_GATE: lut40013
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>i29_SLICE_13_i29_GATE_H0);
    i29_SLICE_13_K0K1MUX: selmux2
      port map (D0=>i29_SLICE_13_i29_GATE_H0, 
                D1=>i29_SLICE_13_i29_SLICE_13_K1_H1, SD=>M0_ipd, Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40014
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40014 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40014 : ENTITY IS TRUE;

  end lut40014;

  architecture Structure of lut40014 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7A00")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40015
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40015 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40015 : ENTITY IS TRUE;

  end lut40015;

  architecture Structure of lut40015 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"EAEE")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_14
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_14 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_14";

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

    ATTRIBUTE Vital_Level0 OF SLICE_14 : ENTITY IS TRUE;

  end SLICE_14;

  architecture Structure of SLICE_14 is
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

    component lut40014
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40015
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i126_2_lut_4_lut: lut40014
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    i1_4_lut: lut40015
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

-- entity lut40016
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40016 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40016 : ENTITY IS TRUE;

  end lut40016;

  architecture Structure of lut40016 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FFFE")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40017
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40017 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40017 : ENTITY IS TRUE;

  end lut40017;

  architecture Structure of lut40017 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"3A3A")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_15
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_15 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_15";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_15 : ENTITY IS TRUE;

  end SLICE_15;

  architecture Structure of SLICE_15 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40016
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40017
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i3_4_lut: lut40016
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    i64_3_lut_rep_23: lut40017
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, 
      A0_ipd, F0_out, F1_out)
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
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
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

-- entity lut40018
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40018 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40018 : ENTITY IS TRUE;

  end lut40018;

  architecture Structure of lut40018 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"EAEA")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40019
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40019 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40019 : ENTITY IS TRUE;

  end lut40019;

  architecture Structure of lut40019 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"A080")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_16
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_16 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_16";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_16 : ENTITY IS TRUE;

  end SLICE_16;

  architecture Structure of SLICE_16 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
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
    component lut40018
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40019
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i1825_2_lut_3_lut: lut40018
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i2_4_lut: lut40019
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      A0_ipd, F0_out, F1_out)
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
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40020
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40020 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40020 : ENTITY IS TRUE;

  end lut40020;

  architecture Structure of lut40020 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"857A")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40021
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40021 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40021 : ENTITY IS TRUE;

  end lut40021;

  architecture Structure of lut40021 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"C5FA")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_17
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_17 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_17";

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

    ATTRIBUTE Vital_Level0 OF SLICE_17 : ENTITY IS TRUE;

  end SLICE_17;

  architecture Structure of SLICE_17 is
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

    component lut40020
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40021
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i1_2_lut_4_lut: lut40020
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    mux_80_i1_3_lut_4_lut: lut40021
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

-- entity lut40022
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40022 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40022 : ENTITY IS TRUE;

  end lut40022;

  architecture Structure of lut40022 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FCFE")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40023
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40023 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40023 : ENTITY IS TRUE;

  end lut40023;

  architecture Structure of lut40023 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"1010")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_18
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_18 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_18";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_18 : ENTITY IS TRUE;

  end SLICE_18;

  architecture Structure of SLICE_18 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40022
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40023
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    div_i1_4_lut_rep_28: lut40022
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    i240_2_lut_rep_27_3_lut: lut40023
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, 
      A0_ipd, F0_out, F1_out)
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
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
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

-- entity lut40024
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40024 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40024 : ENTITY IS TRUE;

  end lut40024;

  architecture Structure of lut40024 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0C8E")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40025
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40025 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40025 : ENTITY IS TRUE;

  end lut40025;

  architecture Structure of lut40025 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"A6A6")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity div_SLICE_19
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity div_SLICE_19 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "div_SLICE_19";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF div_SLICE_19 : ENTITY IS TRUE;

  end div_SLICE_19;

  architecture Structure of div_SLICE_19 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40024
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40025
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    div_div_4_LessThan_70_i4_4_lut: lut40024
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    div_div_4_i69_3_lut: lut40025
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, 
      A0_ipd, F0_out, F1_out)
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
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
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

-- entity lut40026
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40026 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40026 : ENTITY IS TRUE;

  end lut40026;

  architecture Structure of lut40026 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"8E00")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40027
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40027 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40027 : ENTITY IS TRUE;

  end lut40027;

  architecture Structure of lut40027 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"A6A9")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity div_SLICE_20
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity div_SLICE_20 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "div_SLICE_20";

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

    ATTRIBUTE Vital_Level0 OF div_SLICE_20 : ENTITY IS TRUE;

  end div_SLICE_20;

  architecture Structure of div_SLICE_20 is
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

    component lut40026
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40027
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    div_i1545_2_lut_rep_18_4_lut: lut40026
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    div_div_4_i68_4_lut: lut40027
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

-- entity lut40028
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40028 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40028 : ENTITY IS TRUE;

  end lut40028;

  architecture Structure of lut40028 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FD00")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40029
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40029 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40029 : ENTITY IS TRUE;

  end lut40029;

  architecture Structure of lut40029 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"6A6A")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity div_SLICE_21
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity div_SLICE_21 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "div_SLICE_21";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF div_SLICE_21 : ENTITY IS TRUE;

  end div_SLICE_21;

  architecture Structure of div_SLICE_21 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40028
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40029
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    div_div_4_i55_3_lut_4_lut: lut40028
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    div_div_4_mux_5_i2_3_lut_rep_29: lut40029
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, 
      A0_ipd, F0_out, F1_out)
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
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
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

-- entity lut40030
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40030 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40030 : ENTITY IS TRUE;

  end lut40030;

  architecture Structure of lut40030 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"8888")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40031
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40031 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40031 : ENTITY IS TRUE;

  end lut40031;

  architecture Structure of lut40031 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0F1E")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_22
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_22 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_22";

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

    ATTRIBUTE Vital_Level0 OF SLICE_22 : ENTITY IS TRUE;

  end SLICE_22;

  architecture Structure of SLICE_22 is
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
    component lut40030
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40031
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    AND2_t5: lut40030
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    mul_i1_2_lut_3_lut_4_lut: lut40031
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

-- entity lut40032
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40032 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40032 : ENTITY IS TRUE;

  end lut40032;

  architecture Structure of lut40032 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"F8F8")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40033
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40033 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40033 : ENTITY IS TRUE;

  end lut40033;

  architecture Structure of lut40033 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"1FFE")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity mul_SLICE_23
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity mul_SLICE_23 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "mul_SLICE_23";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF mul_SLICE_23 : ENTITY IS TRUE;

  end mul_SLICE_23;

  architecture Structure of mul_SLICE_23 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
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
    component lut40032
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40033
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    mul_i961_2_lut_rep_26: lut40032
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    mul_i1_4_lut_3_lut_rep_24_4_lut: lut40033
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      A0_ipd, F0_out, F1_out)
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
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40034
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40034 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40034 : ENTITY IS TRUE;

  end lut40034;

  architecture Structure of lut40034 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"E8E8")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_24
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_24 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_24";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_24 : ENTITY IS TRUE;

  end SLICE_24;

  architecture Structure of SLICE_24 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40034
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i137_4_lut_3_lut_rep_17: lut40034
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i144_4_lut_3_lut: lut40034
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, A0_ipd, 
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
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40035
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40035 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40035 : ENTITY IS TRUE;

  end lut40035;

  architecture Structure of lut40035 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"A566")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_25
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_25 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_25";

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

    ATTRIBUTE Vital_Level0 OF SLICE_25 : ENTITY IS TRUE;

  end SLICE_25;

  architecture Structure of SLICE_25 is
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
    component lut40030
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40035
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i1_4_lut_adj_2: lut40035
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    i250_2_lut_rep_21_2_lut: lut40030
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

-- entity lut40036
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40036 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40036 : ENTITY IS TRUE;

  end lut40036;

  architecture Structure of lut40036 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"4F04")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40037
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40037 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40037 : ENTITY IS TRUE;

  end lut40037;

  architecture Structure of lut40037 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"EEEE")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_26
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_26 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_26";

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

    ATTRIBUTE Vital_Level0 OF SLICE_26 : ENTITY IS TRUE;

  end SLICE_26;

  architecture Structure of SLICE_26 is
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
    component lut40036
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40037
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    div_i1813_4_lut_rep_19_4_lut: lut40036
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    i1_2_lut_rep_31: lut40037
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

-- entity lut40038
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40038 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40038 : ENTITY IS TRUE;

  end lut40038;

  architecture Structure of lut40038 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"C5CA")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40039
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40039 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40039 : ENTITY IS TRUE;

  end lut40039;

  architecture Structure of lut40039 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"2222")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_27
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_27 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_27";

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

    ATTRIBUTE Vital_Level0 OF SLICE_27 : ENTITY IS TRUE;

  end SLICE_27;

  architecture Structure of SLICE_27 is
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
    component lut40038
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40039
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    mux_55_i4_4_lut: lut40038
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    i244_2_lut: lut40039
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

-- entity lut40040
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40040 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40040 : ENTITY IS TRUE;

  end lut40040;

  architecture Structure of lut40040 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"053A")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_28
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_28 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_28";

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

    ATTRIBUTE Vital_Level0 OF SLICE_28 : ENTITY IS TRUE;

  end SLICE_28;

  architecture Structure of SLICE_28 is
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

    component lut40040
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    mux_80_i4_3_lut_rep_20_4_lut: lut40040
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    mux_80_i2_3_lut_rep_22_4_lut: lut40040
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

-- entity lut40041
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40041 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40041 : ENTITY IS TRUE;

  end lut40041;

  architecture Structure of lut40041 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0202")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40042
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40042 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40042 : ENTITY IS TRUE;

  end lut40042;

  architecture Structure of lut40042 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"6AFF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity div_SLICE_29
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity div_SLICE_29 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "div_SLICE_29";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF div_SLICE_29 : ENTITY IS TRUE;

  end div_SLICE_29;

  architecture Structure of div_SLICE_29 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
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
    component lut40041
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40042
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    div_i1_3_lut: lut40041
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    div_i1515_2_lut_4_lut: lut40042
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      A0_ipd, F0_out, F1_out)
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
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40043
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40043 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40043 : ENTITY IS TRUE;

  end lut40043;

  architecture Structure of lut40043 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"6666")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_30
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_30 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_30";

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

    ATTRIBUTE Vital_Level0 OF SLICE_30 : ENTITY IS TRUE;

  end SLICE_30;

  architecture Structure of SLICE_30 is
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
    component lut40030
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40043
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    AND2_t0: lut40030
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    div_div_4_i82_2_lut_rep_30: lut40043
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

-- entity lut40044
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40044 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40044 : ENTITY IS TRUE;

  end lut40044;

  architecture Structure of lut40044 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0800")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_31
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_31 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_31";

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

    ATTRIBUTE Vital_Level0 OF SLICE_31 : ENTITY IS TRUE;

  end SLICE_31;

  architecture Structure of SLICE_31 is
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
    component lut40030
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40044
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i1_2_lut: lut40030
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i2_4_lut_adj_1: lut40044
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

-- entity lut40045
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40045 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40045 : ENTITY IS TRUE;

  end lut40045;

  architecture Structure of lut40045 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FFF8")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40046
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40046 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40046 : ENTITY IS TRUE;

  end lut40046;

  architecture Structure of lut40046 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FEFE")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_32
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_32 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_32";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_32 : ENTITY IS TRUE;

  end SLICE_32;

  architecture Structure of SLICE_32 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40045
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40046
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    mul_i973_2_lut_rep_25_3_lut: lut40045
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    i2_3_lut_4_lut_4_lut_3_lut: lut40046
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, 
      A0_ipd, F0_out, F1_out)
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
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
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

-- entity lut40047
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40047 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40047 : ENTITY IS TRUE;

  end lut40047;

  architecture Structure of lut40047 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7777")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40048
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40048 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40048 : ENTITY IS TRUE;

  end lut40048;

  architecture Structure of lut40048 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"CA3A")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_33
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_33 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_33";

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

    ATTRIBUTE Vital_Level0 OF SLICE_33 : ENTITY IS TRUE;

  end SLICE_33;

  architecture Structure of SLICE_33 is
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
    component lut40047
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40048
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    ND2_t3: lut40047
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i255_4_lut: lut40048
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

-- entity SLICE_34
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_34 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_34";

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

    ATTRIBUTE Vital_Level0 OF SLICE_34 : ENTITY IS TRUE;

  end SLICE_34;

  architecture Structure of SLICE_34 is
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
    component lut40047
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40048
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    ND2_t1: lut40047
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i257_4_lut: lut40048
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

-- entity SLICE_35
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_35 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_35";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_35 : ENTITY IS TRUE;

  end SLICE_35;

  architecture Structure of SLICE_35 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40029
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40047
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    ND2_t2: lut40047
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    div_div_4_mux_3_i2_3_lut_rep_32: lut40029
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, C0_ipd, B0_ipd, A0_ipd, F0_out, 
      F1_out)
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
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
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

-- entity lut40049
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40049 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40049 : ENTITY IS TRUE;

  end lut40049;

  architecture Structure of lut40049 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FFFF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_36
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_36 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_36";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_36 : ENTITY IS TRUE;

  end SLICE_36;

  architecture Structure of SLICE_36 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40047
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40049
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    ND2_t4: lut40047
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i6: lut40049
      port map (A=>GNDI, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, F0_out, F1_out)
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0 	<= F0_out;
    F1_zd 	:= F1_out;

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

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
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

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    B_pad_1: xo2iobuf
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

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    B_pad_2: xo2iobuf
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

-- entity C_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity C_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "C_0_B";

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_C0 	: VitalDelayType := 0 ns;
      tpw_C0_posedge	: VitalDelayType := 0 ns;
      tpw_C0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; C0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF C_0_B : ENTITY IS TRUE;

  end C_0_B;

  architecture Structure of C_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    C_pad_0: xo2iobuf
      port map (Z=>PADDI_out, PAD=>C0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, C0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_C0_C0          	: x01 := '0';
    VARIABLE periodcheckinfo_C0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => C0_ipd,
        TestSignalName => "C0",
        Period => tperiod_C0,
        PulseWidthHigh => tpw_C0_posedge,
        PulseWidthLow => tpw_C0_negedge,
        PeriodData => periodcheckinfo_C0,
        Violation => tviol_C0_C0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity C_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity C_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "C_1_B";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_C1 	: VitalDelayType := 0 ns;
      tpw_C1_posedge	: VitalDelayType := 0 ns;
      tpw_C1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; C1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF C_1_B : ENTITY IS TRUE;

  end C_1_B;

  architecture Structure of C_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    C_pad_1: xo2iobuf
      port map (Z=>PADDI_out, PAD=>C1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, C1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_C1_C1          	: x01 := '0';
    VARIABLE periodcheckinfo_C1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => C1_ipd,
        TestSignalName => "C1",
        Period => tperiod_C1,
        PulseWidthHigh => tpw_C1_posedge,
        PulseWidthLow => tpw_C1_negedge,
        PeriodData => periodcheckinfo_C1,
        Violation => tviol_C1_C1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_PADDI,
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

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    B_pad_0: xo2iobuf
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

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    A_pad_0: xo2iobuf
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

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    A_pad_1: xo2iobuf
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

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    A_pad_2: xo2iobuf
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

-- entity xo2iobuf0050
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0050 is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0050 : ENTITY IS TRUE;

  end xo2iobuf0050;

  architecture Structure of xo2iobuf0050 is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity Q_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Q_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Q_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Q0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Q0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Q_0_B : ENTITY IS TRUE;

  end Q_0_B;

  architecture Structure of Q_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0050
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Q_pad_0: xo2iobuf0050
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Q0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Q0_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Q0_zd 	:= Q0_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Q_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Q_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Q_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Q1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Q_1_B : ENTITY IS TRUE;

  end Q_1_B;

  architecture Structure of Q_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0050
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Q_pad_1: xo2iobuf0050
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Q1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Q1_out)
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Q_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Q_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Q_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Q2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Q2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Q_2_B : ENTITY IS TRUE;

  end Q_2_B;

  architecture Structure of Q_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Q2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0050
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Q_pad_2: xo2iobuf0050
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Q2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Q2_out)
    VARIABLE Q2_zd         	: std_logic := 'X';
    VARIABLE Q2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Q2_zd 	:= Q2_out;

    VitalPathDelay01 (
      OutSignal => Q2, OutSignalName => "Q2", OutTemp => Q2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Q2,
                           PathCondition => TRUE)),
      GlitchData => Q2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Q_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Q_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Q_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Q3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Q3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Q_3_B : ENTITY IS TRUE;

  end Q_3_B;

  architecture Structure of Q_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Q3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0050
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Q_pad_3: xo2iobuf0050
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Q3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Q3_out)
    VARIABLE Q3_zd         	: std_logic := 'X';
    VARIABLE Q3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Q3_zd 	:= Q3_out;

    VitalPathDelay01 (
      OutSignal => Q3, OutSignalName => "Q3", OutTemp => Q3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Q3,
                           PathCondition => TRUE)),
      GlitchData => Q3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity mux4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity mux4 is
    port (A: in Std_logic_vector (2 downto 0); 
          B: in Std_logic_vector (2 downto 0); 
          C: in Std_logic_vector (1 downto 0); 
          Q: out Std_logic_vector (3 downto 0));



  end mux4;

  architecture Structure of mux4 is
    signal mult_3s_3s_0_cin_lr_0: Std_logic;
    signal mult_3s_3s_0_pp_1_2: Std_logic;
    signal mult_3s_3s_0_pp_0_2: Std_logic;
    signal multer_R_2: Std_logic;
    signal co_t_mult_3s_3s_0_0_1: Std_logic;
    signal mult_3s_3s_0_pp_1_4: Std_logic;
    signal mult_3s_3s_0_pp_0_4: Std_logic;
    signal mult_3s_3s_0_pp_1_3: Std_logic;
    signal mult_3s_3s_0_pp_0_3: Std_logic;
    signal multer_R_3: Std_logic;
    signal multer_R_4: Std_logic;
    signal co_t_mult_3s_3s_0_0_2: Std_logic;
    signal multer_R_5: Std_logic;
    signal VCC_net: Std_logic;
    signal mult_3s_3s_0_mult_0_0_n3: Std_logic;
    signal B_c_1: Std_logic;
    signal A_c_1: Std_logic;
    signal B_c_0: Std_logic;
    signal A_c_0: Std_logic;
    signal multer_R_1: Std_logic;
    signal mco: Std_logic;
    signal mult_3s_3s_0_mult_0_1_n0: Std_logic;
    signal div_n2010: Std_logic;
    signal div_n2022: Std_logic;
    signal div_n2020: Std_logic;
    signal n2072: Std_logic;
    signal n417: Std_logic;
    signal n95: Std_logic;
    signal n130: Std_logic;
    signal n101: Std_logic;
    signal n252: Std_logic;
    signal n2011: Std_logic;
    signal div_n95: Std_logic;
    signal n16: Std_logic;
    signal C_c_1: Std_logic;
    signal n2033: Std_logic;
    signal n253: Std_logic;
    signal B_c_2: Std_logic;
    signal A_c_2: Std_logic;
    signal n2030: Std_logic;
    signal n254: Std_logic;
    signal n1759: Std_logic;
    signal n168: Std_logic;
    signal n2009: Std_logic;
    signal C_c_0: Std_logic;
    signal n169: Std_logic;
    signal n2: Std_logic;
    signal div_n71: Std_logic;
    signal div_n2024: Std_logic;
    signal n4_adj_2: Std_logic;
    signal n164: Std_logic;
    signal multer_R_0: Std_logic;
    signal n2015: Std_logic;
    signal n1943: Std_logic;
    signal Q_c: Std_logic;
    signal mul_n2017: Std_logic;
    signal n175: Std_logic;
    signal n2013: Std_logic;
    signal n221: Std_logic;
    signal n2023: Std_logic;
    signal div_n2021: Std_logic;
    signal n2019: Std_logic;
    signal div_n111: Std_logic;
    signal div_n4_adj_1: Std_logic;
    signal div_n110: Std_logic;
    signal div_n4: Std_logic;
    signal div_n92: Std_logic;
    signal n1771: Std_logic;
    signal n2018: Std_logic;
    signal n2016: Std_logic;
    signal n2014: Std_logic;
    signal n2012: Std_logic;
    signal n6: Std_logic;
    signal n2071: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (FCO: out Std_logic);
    end component;
    component SLICE_1
      port (B1: in Std_logic; A1: in Std_logic; F1: out Std_logic; 
            FCO: out Std_logic);
    end component;
    component SLICE_2
      port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; FCI: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic; FCO: out Std_logic);
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
    component i311_SLICE_6
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; M0: in Std_logic; OFX0: out Std_logic);
    end component;
    component i313_SLICE_7
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component i315_SLICE_8
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component i1858_SLICE_9
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component i1856_SLICE_10
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component div_i1854_SLICE_11
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component i309_SLICE_12
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; M0: in Std_logic; OFX0: out Std_logic);
    end component;
    component i29_SLICE_13
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; M0: in Std_logic; OFX0: out Std_logic);
    end component;
    component SLICE_14
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_15
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_16
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_17
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_18
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component div_SLICE_19
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component div_SLICE_20
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component div_SLICE_21
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_22
      port (B1: in Std_logic; A1: in Std_logic; D0: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component mul_SLICE_23
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_24
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_25
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_26
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_27
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_28
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component div_SLICE_29
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_30
      port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_31
      port (B1: in Std_logic; A1: in Std_logic; D0: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_32
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_33
      port (B1: in Std_logic; A1: in Std_logic; D0: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_34
      port (B1: in Std_logic; A1: in Std_logic; D0: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_35
      port (B1: in Std_logic; A1: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_36
      port (B1: in Std_logic; A1: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component B_1_B
      port (PADDI: out Std_logic; B1: in Std_logic);
    end component;
    component B_2_B
      port (PADDI: out Std_logic; B2: in Std_logic);
    end component;
    component C_0_B
      port (PADDI: out Std_logic; C0: in Std_logic);
    end component;
    component C_1_B
      port (PADDI: out Std_logic; C1: in Std_logic);
    end component;
    component B_0_B
      port (PADDI: out Std_logic; B0: in Std_logic);
    end component;
    component A_0_B
      port (PADDI: out Std_logic; A0: in Std_logic);
    end component;
    component A_1_B
      port (PADDI: out Std_logic; A1: in Std_logic);
    end component;
    component A_2_B
      port (PADDI: out Std_logic; A2: in Std_logic);
    end component;
    component Q_0_B
      port (PADDO: in Std_logic; Q0: out Std_logic);
    end component;
    component Q_1_B
      port (PADDO: in Std_logic; Q1: out Std_logic);
    end component;
    component Q_2_B
      port (PADDO: in Std_logic; Q2: out Std_logic);
    end component;
    component Q_3_B
      port (PADDO: in Std_logic; Q3: out Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (FCO=>mult_3s_3s_0_cin_lr_0);
    SLICE_1I: SLICE_1
      port map (B1=>mult_3s_3s_0_pp_1_2, A1=>mult_3s_3s_0_pp_0_2, 
                F1=>multer_R_2, FCO=>co_t_mult_3s_3s_0_0_1);
    SLICE_2I: SLICE_2
      port map (B1=>mult_3s_3s_0_pp_1_4, A1=>mult_3s_3s_0_pp_0_4, 
                B0=>mult_3s_3s_0_pp_1_3, A0=>mult_3s_3s_0_pp_0_3, 
                FCI=>co_t_mult_3s_3s_0_0_1, F0=>multer_R_3, F1=>multer_R_4, 
                FCO=>co_t_mult_3s_3s_0_0_2);
    SLICE_3I: SLICE_3
      port map (FCI=>co_t_mult_3s_3s_0_0_2, F0=>multer_R_5);
    SLICE_4I: SLICE_4
      port map (D1=>VCC_net, C1=>mult_3s_3s_0_mult_0_0_n3, B1=>B_c_1, 
                A1=>A_c_1, D0=>B_c_0, C0=>A_c_1, B0=>B_c_1, A0=>A_c_0, 
                FCI=>mult_3s_3s_0_cin_lr_0, F0=>multer_R_1, 
                F1=>mult_3s_3s_0_pp_0_2, FCO=>mco);
    SLICE_5I: SLICE_5
      port map (D1=>B_c_0, B1=>B_c_1, D0=>VCC_net, C0=>VCC_net, B0=>VCC_net, 
                A0=>mult_3s_3s_0_mult_0_1_n0, FCI=>mco, 
                F0=>mult_3s_3s_0_pp_0_3, F1=>mult_3s_3s_0_pp_0_4);
    i311_SLICE_6I: i311_SLICE_6
      port map (D1=>div_n2010, C1=>div_n2022, B1=>div_n2020, A1=>n2072, 
                C0=>n417, B0=>n95, A0=>n130, M0=>n101, OFX0=>n252);
    i313_SLICE_7I: i313_SLICE_7
      port map (D1=>div_n2020, C1=>div_n2022, B1=>n2011, A1=>div_n95, D0=>n16, 
                C0=>C_c_1, B0=>n95, A0=>n2033, M0=>n101, OFX0=>n253);
    i315_SLICE_8I: i315_SLICE_8
      port map (D1=>div_n95, C1=>n2011, B1=>B_c_2, A1=>A_c_2, D0=>n16, 
                C0=>C_c_1, B0=>n95, A0=>n2030, M0=>n101, OFX0=>n254);
    i1858_SLICE_9I: i1858_SLICE_9
      port map (D1=>n1759, C1=>multer_R_2, B1=>n168, A1=>n2009, D0=>C_c_0, 
                C0=>B_c_2, B0=>n168, A0=>n2009, M0=>C_c_1, OFX0=>n2033);
    i1856_SLICE_10I: i1856_SLICE_10
      port map (D1=>n1759, C1=>multer_R_1, B1=>n169, A1=>n2, D0=>C_c_0, 
                C0=>B_c_1, B0=>n169, A0=>n2, M0=>C_c_1, OFX0=>n2030);
    div_i1854_SLICE_11I: div_i1854_SLICE_11
      port map (D1=>B_c_1, C1=>div_n71, B1=>div_n2024, A1=>B_c_0, D0=>B_c_1, 
                C0=>div_n71, B0=>div_n2024, A0=>B_c_0, M0=>B_c_2, 
                OFX0=>div_n95);
    i309_SLICE_12I: i309_SLICE_12
      port map (C1=>n101, B1=>n2011, A1=>n95, D0=>n4_adj_2, C0=>n164, 
                B0=>multer_R_0, A0=>n2015, M0=>n1943, OFX0=>Q_c);
    i29_SLICE_13I: i29_SLICE_13
      port map (C1=>B_c_0, B1=>B_c_1, A1=>B_c_2, D0=>multer_R_5, 
                C0=>multer_R_4, B0=>mul_n2017, A0=>multer_R_3, M0=>C_c_0, 
                OFX0=>n16);
    SLICE_14I: SLICE_14
      port map (D1=>n175, C1=>n2013, B1=>B_c_0, A1=>A_c_0, D0=>B_c_0, 
                C0=>A_c_0, B0=>n2015, A0=>n221, F0=>n2, F1=>n221);
    SLICE_15I: SLICE_15
      port map (D1=>multer_R_3, C1=>multer_R_4, B1=>multer_R_5, A1=>C_c_0, 
                C0=>C_c_1, B0=>n1759, A0=>C_c_0, F0=>n2015, F1=>n1759);
    SLICE_16I: SLICE_16
      port map (C1=>n16, B1=>C_c_1, A1=>n101, D0=>n2023, C0=>C_c_1, B0=>B_c_2, 
                A0=>C_c_0, F0=>n101, F1=>n1943);
    SLICE_17I: SLICE_17
      port map (D1=>n175, C1=>n2013, B1=>B_c_0, A1=>A_c_0, D0=>B_c_0, 
                C0=>C_c_1, B0=>n1759, A0=>C_c_0, F0=>n175, F1=>n4_adj_2);
    SLICE_18I: SLICE_18
      port map (D1=>div_n71, C1=>div_n2021, B1=>n2019, A1=>B_c_0, C0=>B_c_2, 
                B0=>B_c_0, A0=>B_c_1, F0=>n2019, F1=>div_n2020);
    div_SLICE_19I: div_SLICE_19
      port map (D1=>A_c_0, C1=>div_n111, B1=>div_n2021, A1=>B_c_0, C0=>div_n95, 
                B0=>B_c_0, A0=>div_n2024, F0=>div_n111, F1=>div_n4_adj_1);
    div_SLICE_20I: div_SLICE_20
      port map (D1=>div_n95, C1=>div_n110, B1=>n2019, A1=>div_n4_adj_1, 
                D0=>div_n4, C0=>div_n95, B0=>div_n2021, A0=>div_n92, 
                F0=>div_n110, F1=>div_n2010);
    div_SLICE_21I: div_SLICE_21
      port map (D1=>div_n71, C1=>div_n2021, B1=>n2019, A1=>B_c_0, C0=>B_c_2, 
                B0=>B_c_0, A0=>B_c_1, F0=>div_n2021, F1=>div_n92);
    SLICE_22I: SLICE_22
      port map (B1=>B_c_0, A1=>A_c_0, D0=>multer_R_2, C0=>multer_R_3, 
                B0=>multer_R_0, A0=>multer_R_1, F0=>n1771, F1=>multer_R_0);
    mul_SLICE_23I: mul_SLICE_23
      port map (C1=>multer_R_1, B1=>B_c_0, A1=>A_c_0, D0=>multer_R_3, 
                C0=>multer_R_4, B0=>n2018, A0=>multer_R_2, F0=>n2016, 
                F1=>n2018);
    SLICE_24I: SLICE_24
      port map (C1=>n169, B1=>n2, A1=>n2014, C0=>n168, B0=>n2009, A0=>n2012, 
                F0=>n6, F1=>n2009);
    SLICE_25I: SLICE_25
      port map (D1=>n2013, C1=>n1771, B1=>A_c_2, A1=>n2012, B0=>C_c_1, 
                A0=>n1759, F0=>n2013, F1=>n2071);
    SLICE_26I: SLICE_26
      port map (D1=>div_n4_adj_1, C1=>div_n110, B1=>B_c_2, A1=>n2023, 
                B0=>B_c_0, A0=>B_c_1, F0=>n2023, F1=>n2011);
    SLICE_27I: SLICE_27
      port map (D1=>n2071, C1=>n164, B1=>multer_R_3, A1=>n6, B0=>n1759, 
                A0=>C_c_1, F0=>n164, F1=>n130);
    SLICE_28I: SLICE_28
      port map (D1=>B_c_2, C1=>C_c_1, B1=>n1759, A1=>C_c_0, D0=>B_c_1, 
                C0=>C_c_1, B0=>n1759, A0=>C_c_0, F0=>n2014, F1=>n2012);
    div_SLICE_29I: div_SLICE_29
      port map (C1=>A_c_0, B1=>A_c_1, A1=>A_c_2, D0=>B_c_0, C0=>A_c_2, 
                B0=>A_c_0, A0=>A_c_1, F0=>div_n4, F1=>div_n71);
    SLICE_30I: SLICE_30
      port map (B1=>B_c_2, A1=>A_c_2, B0=>B_c_2, A0=>A_c_2, F0=>div_n2022, 
                F1=>mult_3s_3s_0_pp_1_4);
    SLICE_31I: SLICE_31
      port map (B1=>n16, A1=>C_c_1, D0=>multer_R_5, C0=>C_c_0, B0=>C_c_1, 
                A0=>n2016, F0=>n95, F1=>n417);
    SLICE_32I: SLICE_32
      port map (D1=>multer_R_2, C1=>multer_R_1, B1=>B_c_0, A1=>A_c_0, 
                C0=>B_c_2, B0=>B_c_0, A0=>B_c_1, F0=>n2072, F1=>mul_n2017);
    SLICE_33I: SLICE_33
      port map (B1=>B_c_1, A1=>A_c_2, D0=>n2018, C0=>n2013, B0=>multer_R_2, 
                A0=>A_c_2, F0=>n168, F1=>mult_3s_3s_0_mult_0_1_n0);
    SLICE_34I: SLICE_34
      port map (B1=>B_c_2, A1=>A_c_1, D0=>multer_R_0, C0=>n2013, 
                B0=>multer_R_1, A0=>A_c_1, F0=>n169, F1=>mult_3s_3s_0_pp_1_3);
    SLICE_35I: SLICE_35
      port map (B1=>B_c_2, A1=>A_c_0, C0=>A_c_2, B0=>A_c_0, A0=>A_c_1, 
                F0=>div_n2024, F1=>mult_3s_3s_0_pp_1_2);
    SLICE_36I: SLICE_36
      port map (B1=>B_c_0, A1=>A_c_2, F0=>VCC_net, 
                F1=>mult_3s_3s_0_mult_0_0_n3);
    B_1_I: B_1_B
      port map (PADDI=>B_c_1, B1=>B(1));
    B_2_I: B_2_B
      port map (PADDI=>B_c_2, B2=>B(2));
    C_0_I: C_0_B
      port map (PADDI=>C_c_0, C0=>C(0));
    C_1_I: C_1_B
      port map (PADDI=>C_c_1, C1=>C(1));
    B_0_I: B_0_B
      port map (PADDI=>B_c_0, B0=>B(0));
    A_0_I: A_0_B
      port map (PADDI=>A_c_0, A0=>A(0));
    A_1_I: A_1_B
      port map (PADDI=>A_c_1, A1=>A(1));
    A_2_I: A_2_B
      port map (PADDI=>A_c_2, A2=>A(2));
    Q_0_I: Q_0_B
      port map (PADDO=>Q_c, Q0=>Q(0));
    Q_1_I: Q_1_B
      port map (PADDO=>n254, Q1=>Q(1));
    Q_2_I: Q_2_B
      port map (PADDO=>n253, Q2=>Q(2));
    Q_3_I: Q_3_B
      port map (PADDO=>n252, Q3=>Q(3));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCC_net);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of mux4 is
    for Structure
    end for;
  end Structure_CON;


