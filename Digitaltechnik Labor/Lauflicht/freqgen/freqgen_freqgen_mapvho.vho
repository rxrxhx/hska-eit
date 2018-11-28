-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.1.0.96

-- ldbanno -n VHDL -o freqgen_freqgen_mapvho.vho -w -neg -gui freqgen_freqgen_map.ncd 
-- Netlist created on Thu Sep 20 00:21:55 2018
-- Netlist written on Thu Sep 20 00:22:03 2018
-- Design is for device LCMXO3L-6900C
-- Design is for package CABGA256
-- Design is for performance grade 6

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO3L;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO3L.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO3L;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO3L.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity oB0
  library IEEE, vital2000, MACHXO3L;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO3L.COMPONENTS.ALL;

  entity oB0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "oB0";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_oS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; oS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF oB0 : ENTITY IS TRUE;

  end oB0;

  architecture Structure of oB0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal oS_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    o_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>oS_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, oS_out)
    VARIABLE oS_zd         	: std_logic := 'X';
    VARIABLE oS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    oS_zd 	:= oS_out;

    VitalPathDelay01 (
      OutSignal => oS, OutSignalName => "oS", OutTemp => oS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_oS,
                           PathCondition => TRUE)),
      GlitchData => oS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity OSCHB
  library IEEE, vital2000, MACHXO3L;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO3L.COMPONENTS.ALL;

  entity OSCHB is
    port (STDBY: in Std_logic; OSC: out Std_logic; SEDSTDBY: out Std_logic);

    ATTRIBUTE Vital_Level0 OF OSCHB : ENTITY IS TRUE;

  end OSCHB;

  architecture Structure of OSCHB is
  begin
    INST10: OSCH
      generic map (NOM_FREQ => "2.08")
      port map (STDBY=>STDBY, SEDSTDBY=>SEDSTDBY, OSC=>OSC);
  end Structure;

-- entity I1
  library IEEE, vital2000, MACHXO3L;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO3L.COMPONENTS.ALL;

  entity I1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I1");

    port (OSC: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I1 : ENTITY IS TRUE;

  end I1;

  architecture Structure of I1 is
    signal OSC_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component OSCHB
      port (STDBY: in Std_logic; OSC: out Std_logic; SEDSTDBY: out Std_logic);
    end component;
  begin
    I1_OSCH: OSCHB
      port map (STDBY=>GNDI, OSC=>OSC_out, SEDSTDBY=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (OSC_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OSC 	<= OSC_out;


    END PROCESS;

  end Structure;

-- entity freqgen
  library IEEE, vital2000, MACHXO3L;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO3L.COMPONENTS.ALL;

  entity freqgen is
    port (o: out Std_logic);



  end freqgen;

  architecture Structure of freqgen is
    signal o_c: Std_logic;
    signal VCCI: Std_logic;
    component oB0
      port (PADDO: in Std_logic; oS: out Std_logic);
    end component;
    component I1
      port (OSC: out Std_logic);
    end component;
  begin
    oI: oB0
      port map (PADDO=>o_c, oS=>o);
    I1I: I1
      port map (OSC=>o_c);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO3L;
  configuration Structure_CON of freqgen is
    for Structure
    end for;
  end Structure_CON;


