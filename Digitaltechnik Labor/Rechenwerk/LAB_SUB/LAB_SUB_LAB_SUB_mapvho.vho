-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.1.0.96

-- ldbanno -n VHDL -o LAB_SUB_LAB_SUB_mapvho.vho -w -neg -gui LAB_SUB_LAB_SUB_map.ncd 
-- Netlist created on Thu May 10 15:26:28 2018
-- Netlist written on Thu May 10 15:26:31 2018
-- Design is for device LCMXO2-256HC
-- Design is for package TQFP100
-- Design is for performance grade 4

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
      generic map (initval => X"BF0B")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40001 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40001 : ENTITY IS TRUE;

  end lut40001;

  architecture Structure of lut40001 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"2B2B")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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
      InstancePath  	: string := "SLICE_0";

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

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
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
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    i22_3_lut_4_lut: lut4
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    i177_3_lut: lut40001
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
      generic map (initval => X"6666")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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
      generic map (initval => X"4BB4")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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

    ATTRIBUTE Vital_Level0 OF SLICE_1 : ENTITY IS TRUE;

  end SLICE_1;

  architecture Structure of SLICE_1 is
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
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i1_2_lut: lut40002
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i2_3_lut_4_lut: lut40003
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
      generic map (initval => X"6969")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_2 : ENTITY IS TRUE;

  end SLICE_2;

  architecture Structure of SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i2_3_lut: lut40004
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (C0_ipd, B0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

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

-- entity xo2iobuf0005
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0005 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0005 : ENTITY IS TRUE;

  end xo2iobuf0005;

  architecture Structure of xo2iobuf0005 is
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

    component xo2iobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    A_pad_2: xo2iobuf0005
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

    component xo2iobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    A_pad_1: xo2iobuf0005
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

    component xo2iobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    A_pad_0: xo2iobuf0005
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

    component xo2iobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    B_pad_2: xo2iobuf0005
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

    component xo2iobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    B_pad_1: xo2iobuf0005
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

    component xo2iobuf0005
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    B_pad_0: xo2iobuf0005
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

-- entity sub4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sub4 is
    port (A: in Std_logic_vector (2 downto 0); 
          B: in Std_logic_vector (2 downto 0); 
          Z: out Std_logic_vector (3 downto 0));



  end sub4;

  architecture Structure of sub4 is
    signal A_c_1: Std_logic;
    signal B_c_1: Std_logic;
    signal B_c_0: Std_logic;
    signal A_c_0: Std_logic;
    signal n4: Std_logic;
    signal B_c_2: Std_logic;
    signal A_c_2: Std_logic;
    signal n48: Std_logic;
    signal n50: Std_logic;
    signal Z_c: Std_logic;
    signal n49: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_1
      port (B1: in Std_logic; A1: in Std_logic; D0: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_2
      port (C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic);
    end component;
    component Z_3_B
      port (PADDO: in Std_logic; Z3: out Std_logic);
    end component;
    component Z_1_B
      port (PADDO: in Std_logic; Z1: out Std_logic);
    end component;
    component Z_2_B
      port (PADDO: in Std_logic; Z2: out Std_logic);
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
      port map (D1=>A_c_1, C1=>B_c_1, B1=>B_c_0, A1=>A_c_0, C0=>n4, B0=>B_c_2, 
                A0=>A_c_2, F0=>n48, F1=>n4);
    SLICE_1I: SLICE_1
      port map (B1=>B_c_0, A1=>A_c_0, D0=>B_c_1, C0=>A_c_1, B0=>B_c_0, 
                A0=>A_c_0, F0=>n50, F1=>Z_c);
    SLICE_2I: SLICE_2
      port map (C0=>B_c_2, B0=>n4, A0=>A_c_2, F0=>n49);
    Z_3_I: Z_3_B
      port map (PADDO=>n48, Z3=>Z(3));
    Z_1_I: Z_1_B
      port map (PADDO=>n50, Z1=>Z(1));
    Z_2_I: Z_2_B
      port map (PADDO=>n49, Z2=>Z(2));
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
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of sub4 is
    for Structure
    end for;
  end Structure_CON;


