-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.1.0.96

-- ldbanno -n VHDL -o Ampelsteuerung_Ampelsteuerung_mapvho.vho -w -neg -gui Ampelsteuerung_Ampelsteuerung_map.ncd 
-- Netlist created on Fri Jun 15 13:44:30 2018
-- Netlist written on Fri Jun 15 13:44:36 2018
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
      generic map (initval => X"7F7F")
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
      generic map (initval => X"302C")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity vmuxregsre
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre : ENTITY IS TRUE;

  end vmuxregsre;

  architecture Structure of vmuxregsre is
    signal Q_INT: Std_logic;
    signal D_INT: Std_logic;
    signal LSRB: Std_logic;
    signal L_IN: Std_logic;
  begin
    INST10: MUX41
      port map (D0=>Q_INT, D1=>Q_INT, D2=>D0, D3=>D1, SD1=>SD, SD2=>SP, 
                Z=>D_INT);
    INST20: INV
      port map (A=>LSR, Z=>LSRB);
    INST30: AND2
      port map (A=>LSRB, B=>D_INT, Z=>L_IN);
    INST50: FD1S1A
      generic map (GSR => "DISABLED")
      port map (D=>L_IN, CK=>CK, Q=>Q_INT);
    INST80: BUFBA
      port map (A=>Q_INT, Z=>Q);
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

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_LSR  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_LSR_CLK	: VitalDelayType := 0 ns;
      tsetup_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_LSR 	: VitalDelayType := 0 ns;
      tpw_LSR_posedge	: VitalDelayType := 0 ns;
      tpw_LSR_negedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; DI0: in Std_logic; LSR: in Std_logic; 
          CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal LSR_ipd 	: std_logic := 'X';
    signal LSR_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    I10_i725_2_lut_rep_1_3_lut: lut4
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I10_i400_1_lut_4_lut: lut40001
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    i354: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

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
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(LSR_ipd, LSR, tipd_LSR);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(LSR_dly, LSR_ipd, tisd_LSR_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      A0_ipd, DI0_dly, LSR_dly, CLK_dly, F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_CLK       	: x01 := '0';
    VARIABLE LSR_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_LSR          	: x01 := '0';
    VARIABLE periodcheckinfo_LSR	: VitalPeriodDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => LSR_dly,
        TestSignalName => "LSR",
        TestDelay => tisd_LSR_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_LSR_CLK_noedge_posedge,
        SetupLow => tsetup_LSR_CLK_noedge_posedge,
        HoldHigh => thold_LSR_CLK_noedge_posedge,
        HoldLow => thold_LSR_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => LSR_CLK_TimingDatash,
        Violation => tviol_LSR_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => LSR_ipd,
        TestSignalName => "LSR",
        Period => tperiod_LSR,
        PulseWidthHigh => tpw_LSR_posedge,
        PulseWidthLow => tpw_LSR_negedge,
        PeriodData => periodcheckinfo_LSR,
        Violation => tviol_LSR_LSR,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
      generic map (initval => X"5555")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity vmuxregsre0004
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre0004 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre0004 : ENTITY IS TRUE;

  end vmuxregsre0004;

  architecture Structure of vmuxregsre0004 is
  begin
    INST01: FL1P3DX
      generic map (GSR => "ENABLED")
      port map (D0=>D0, D1=>D1, SP=>SP, CK=>CK, SD=>SD, CD=>LSR, Q=>Q);
  end Structure;

-- entity I10_SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I10_SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I10_SLICE_1";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (B1: in Std_logic; A1: in Std_logic; A0: in Std_logic; 
          DI1: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I10_SLICE_1 : ENTITY IS TRUE;

  end I10_SLICE_1;

  architecture Structure of I10_SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0004
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    I10_i11_2_lut_rep_3: lut40002
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I10_i621_1_lut: lut40003
      port map (A=>A0_ipd, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F0_out);
    I10_count4bit_104_i1: vmuxregsre0004
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I10_count4bit_104_i0: vmuxregsre0004
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
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
      generic map (initval => X"7F80")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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
      generic map (initval => X"7878")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity I10_SLICE_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I10_SLICE_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I10_SLICE_2";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; DI1: in Std_logic; DI0: in Std_logic; 
          CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
          F1: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I10_SLICE_2 : ENTITY IS TRUE;

  end I10_SLICE_2;

  architecture Structure of I10_SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component vmuxregsre0004
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I10_i637_3_lut_4_lut: lut40005
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I10_i630_2_lut_3_lut: lut40006
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I10_count4bit_104_i3: vmuxregsre0004
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I10_count4bit_104_i2: vmuxregsre0004
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

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
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, 
      A0_ipd, DI1_dly, DI0_dly, CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity vmuxregsre0007
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre0007 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre0007 : ENTITY IS TRUE;

  end vmuxregsre0007;

  architecture Structure of vmuxregsre0007 is
  begin
    INST01: FL1P3DX
      generic map (GSR => "DISABLED")
      port map (D0=>D0, D1=>D1, SP=>SP, CK=>CK, SD=>SD, CD=>LSR, Q=>Q);
  end Structure;

-- entity I5_SLICE_3
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_SLICE_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_SLICE_3";

      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A0: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I5_SLICE_3 : ENTITY IS TRUE;

  end I5_SLICE_3;

  architecture Structure of I5_SLICE_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0007
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    I5_i19_1_lut: lut40003
      port map (A=>A0_ipd, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I5_SigClk100Hz_37: vmuxregsre0007
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A0_ipd, DI0_dly, CLK_dly, F0_out, Q0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
      generic map (initval => X"FFFF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (B0: in Std_logic; A0: in Std_logic; DI0: in Std_logic; 
          CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_4 : ENTITY IS TRUE;

  end SLICE_4;

  architecture Structure of SLICE_4 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0007
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40008
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i2: lut40008
      port map (A=>GNDI, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I5_i1_2_lut_adj_2: lut40002
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    I5_Counter_Clk1Hz_34: vmuxregsre0007
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (B0_ipd, A0_ipd, DI0_dly, CLK_dly, F0_out, Q0_out, 
      F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
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
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

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
      generic map (initval => X"CCC8")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity I5_SLICE_5
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_SLICE_5 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_SLICE_5";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
          Q0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I5_SLICE_5 : ENTITY IS TRUE;

  end I5_SLICE_5;

  architecture Structure of I5_SLICE_5 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0007
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40009
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I5_i507_4_lut: lut40009
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I5_i1_2_lut_adj_1: lut40002
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I5_Counter_Clk3Hz_32: vmuxregsre0007
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, B0_ipd, A0_ipd, 
      DI0_dly, CLK_dly, F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
      generic map (initval => X"78F0")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity vmuxregsre0011
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre0011 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre0011 : ENTITY IS TRUE;

  end vmuxregsre0011;

  architecture Structure of vmuxregsre0011 is
  begin
    INST01: FL1P3IY
      generic map (GSR => "DISABLED")
      port map (D0=>D0, D1=>D1, SP=>SP, CK=>CK, SD=>SD, CD=>LSR, Q=>Q);
  end Structure;

-- entity I5_SLICE_6
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_SLICE_6 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_SLICE_6";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_LSR  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_LSR_CLK	: VitalDelayType := 0 ns;
      tsetup_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_LSR 	: VitalDelayType := 0 ns;
      tpw_LSR_posedge	: VitalDelayType := 0 ns;
      tpw_LSR_negedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; DI1: in Std_logic; DI0: in Std_logic; 
          LSR: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
          Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I5_SLICE_6 : ENTITY IS TRUE;

  end I5_SLICE_6;

  architecture Structure of I5_SLICE_6 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal LSR_ipd 	: std_logic := 'X';
    signal LSR_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40010
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0011
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    I5_i666_2_lut_3_lut_4_lut: lut40010
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I5_i659_2_lut_3_lut: lut40006
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I5_Counter_Counter1Hz_108_i3: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I5_Counter_Counter1Hz_108_i2: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q0_out);

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
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(LSR_ipd, LSR, tipd_LSR);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(LSR_dly, LSR_ipd, tisd_LSR_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, 
      A0_ipd, DI1_dly, DI0_dly, LSR_dly, CLK_dly, F0_out, Q0_out, F1_out, 
      Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_CLK       	: x01 := '0';
    VARIABLE LSR_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_LSR          	: x01 := '0';
    VARIABLE periodcheckinfo_LSR	: VitalPeriodDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => LSR_dly,
        TestSignalName => "LSR",
        TestDelay => tisd_LSR_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_LSR_CLK_noedge_posedge,
        SetupLow => tsetup_LSR_CLK_noedge_posedge,
        HoldHigh => thold_LSR_CLK_noedge_posedge,
        HoldLow => thold_LSR_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => LSR_CLK_TimingDatash,
        Violation => tviol_LSR_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => LSR_ipd,
        TestSignalName => "LSR",
        Period => tperiod_LSR,
        PulseWidthHigh => tpw_LSR_posedge,
        PulseWidthLow => tpw_LSR_negedge,
        PeriodData => periodcheckinfo_LSR,
        Violation => tviol_LSR_LSR,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity I5_SLICE_7
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_SLICE_7 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_SLICE_7";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_LSR  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_LSR_CLK	: VitalDelayType := 0 ns;
      tsetup_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_LSR 	: VitalDelayType := 0 ns;
      tpw_LSR_posedge	: VitalDelayType := 0 ns;
      tpw_LSR_negedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (B1: in Std_logic; A1: in Std_logic; D0: in Std_logic; 
          C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          DI1: in Std_logic; DI0: in Std_logic; LSR: in Std_logic; 
          CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
          F1: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I5_SLICE_7 : ENTITY IS TRUE;

  end I5_SLICE_7;

  architecture Structure of I5_SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal LSR_ipd 	: std_logic := 'X';
    signal LSR_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0011
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    I5_i680_2_lut: lut40002
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I5_i673_2_lut_4_lut: lut40005
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    I5_Counter_Counter1Hz_108_i5: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I5_Counter_Counter1Hz_108_i4: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(LSR_ipd, LSR, tipd_LSR);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(LSR_dly, LSR_ipd, tisd_LSR_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, A0_ipd, 
      DI1_dly, DI0_dly, LSR_dly, CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_CLK       	: x01 := '0';
    VARIABLE LSR_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_LSR          	: x01 := '0';
    VARIABLE periodcheckinfo_LSR	: VitalPeriodDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => LSR_dly,
        TestSignalName => "LSR",
        TestDelay => tisd_LSR_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_LSR_CLK_noedge_posedge,
        SetupLow => tsetup_LSR_CLK_noedge_posedge,
        HoldHigh => thold_LSR_CLK_noedge_posedge,
        HoldLow => thold_LSR_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => LSR_CLK_TimingDatash,
        Violation => tviol_LSR_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => LSR_ipd,
        TestSignalName => "LSR",
        Period => tperiod_LSR,
        PulseWidthHigh => tpw_LSR_posedge,
        PulseWidthLow => tpw_LSR_negedge,
        PeriodData => periodcheckinfo_LSR,
        Violation => tviol_LSR_LSR,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
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
      generic map (initval => X"2020")
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
      generic map (initval => X"6A6A")
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

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_LSR  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_LSR_CLK	: VitalDelayType := 0 ns;
      tsetup_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_LSR 	: VitalDelayType := 0 ns;
      tpw_LSR_posedge	: VitalDelayType := 0 ns;
      tpw_LSR_negedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          DI0: in Std_logic; LSR: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_8 : ENTITY IS TRUE;

  end SLICE_8;

  architecture Structure of SLICE_8 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal LSR_ipd 	: std_logic := 'X';
    signal LSR_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component vmuxregsre0011
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
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
    I10_i1_2_lut_3_lut: lut40012
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I5_i687_3_lut: lut40013
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    I5_Counter_Counter1Hz_108_i6: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(LSR_ipd, LSR, tipd_LSR);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(LSR_dly, LSR_ipd, tisd_LSR_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, A0_ipd, 
      DI0_dly, LSR_dly, CLK_dly, F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_CLK       	: x01 := '0';
    VARIABLE LSR_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_LSR          	: x01 := '0';
    VARIABLE periodcheckinfo_LSR	: VitalPeriodDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => LSR_dly,
        TestSignalName => "LSR",
        TestDelay => tisd_LSR_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_LSR_CLK_noedge_posedge,
        SetupLow => tsetup_LSR_CLK_noedge_posedge,
        HoldHigh => thold_LSR_CLK_noedge_posedge,
        HoldLow => thold_LSR_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => LSR_CLK_TimingDatash,
        Violation => tviol_LSR_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => LSR_ipd,
        TestSignalName => "LSR",
        Period => tperiod_LSR,
        PulseWidthHigh => tpw_LSR_posedge,
        PulseWidthLow => tpw_LSR_negedge,
        PeriodData => periodcheckinfo_LSR,
        Violation => tviol_LSR_LSR,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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

-- entity I5_SLICE_9
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_SLICE_9 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_SLICE_9";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_LSR  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_LSR_CLK	: VitalDelayType := 0 ns;
      tsetup_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_LSR 	: VitalDelayType := 0 ns;
      tpw_LSR_posedge	: VitalDelayType := 0 ns;
      tpw_LSR_negedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; LSR: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I5_SLICE_9 : ENTITY IS TRUE;

  end I5_SLICE_9;

  architecture Structure of I5_SLICE_9 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal LSR_ipd 	: std_logic := 'X';
    signal LSR_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0011
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    I5_i587_2_lut_3_lut: lut40006
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I5_i580_2_lut: lut40002
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    I5_Counter_Counter3Hz_106_i2: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I5_Counter_Counter3Hz_106_i1: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(LSR_ipd, LSR, tipd_LSR);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(LSR_dly, LSR_ipd, tisd_LSR_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, B0_ipd, A0_ipd, DI1_dly, 
      DI0_dly, LSR_dly, CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_CLK       	: x01 := '0';
    VARIABLE LSR_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_LSR          	: x01 := '0';
    VARIABLE periodcheckinfo_LSR	: VitalPeriodDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => LSR_dly,
        TestSignalName => "LSR",
        TestDelay => tisd_LSR_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_LSR_CLK_noedge_posedge,
        SetupLow => tsetup_LSR_CLK_noedge_posedge,
        HoldHigh => thold_LSR_CLK_noedge_posedge,
        HoldLow => thold_LSR_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => LSR_CLK_TimingDatash,
        Violation => tviol_LSR_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => LSR_ipd,
        TestSignalName => "LSR",
        Period => tperiod_LSR,
        PulseWidthHigh => tpw_LSR_posedge,
        PulseWidthLow => tpw_LSR_negedge,
        PeriodData => periodcheckinfo_LSR,
        Violation => tviol_LSR_LSR,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity I5_SLICE_10
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_SLICE_10 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_SLICE_10";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_LSR  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_LSR_CLK	: VitalDelayType := 0 ns;
      tsetup_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_LSR 	: VitalDelayType := 0 ns;
      tpw_LSR_posedge	: VitalDelayType := 0 ns;
      tpw_LSR_negedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; LSR: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I5_SLICE_10 : ENTITY IS TRUE;

  end I5_SLICE_10;

  architecture Structure of I5_SLICE_10 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal LSR_ipd 	: std_logic := 'X';
    signal LSR_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40010
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0011
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    I5_i601_2_lut_3_lut_4_lut: lut40010
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I5_i594_2_lut_3_lut_4_lut: lut40010
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    I5_Counter_Counter3Hz_106_i4: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I5_Counter_Counter3Hz_106_i3: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q0_out);

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
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(LSR_ipd, LSR, tipd_LSR);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(LSR_dly, LSR_ipd, tisd_LSR_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, DI1_dly, DI0_dly, LSR_dly, CLK_dly, F0_out, Q0_out, 
      F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_CLK       	: x01 := '0';
    VARIABLE LSR_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_LSR          	: x01 := '0';
    VARIABLE periodcheckinfo_LSR	: VitalPeriodDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => LSR_dly,
        TestSignalName => "LSR",
        TestDelay => tisd_LSR_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_LSR_CLK_noedge_posedge,
        SetupLow => tsetup_LSR_CLK_noedge_posedge,
        HoldHigh => thold_LSR_CLK_noedge_posedge,
        HoldLow => thold_LSR_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => LSR_CLK_TimingDatash,
        Violation => tviol_LSR_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => LSR_ipd,
        TestSignalName => "LSR",
        Period => tperiod_LSR,
        PulseWidthHigh => tpw_LSR_posedge,
        PulseWidthLow => tpw_LSR_negedge,
        PeriodData => periodcheckinfo_LSR,
        Violation => tviol_LSR_LSR,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
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
      generic map (initval => X"8080")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity I5_SLICE_11
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_SLICE_11 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_SLICE_11";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_LSR  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_LSR_CLK	: VitalDelayType := 0 ns;
      tsetup_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_LSR 	: VitalDelayType := 0 ns;
      tpw_LSR_posedge	: VitalDelayType := 0 ns;
      tpw_LSR_negedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; DI0: in Std_logic; LSR: in Std_logic; 
          CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I5_SLICE_11 : ENTITY IS TRUE;

  end I5_SLICE_11;

  architecture Structure of I5_SLICE_11 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal LSR_ipd 	: std_logic := 'X';
    signal LSR_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0011
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40014
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I5_i590_2_lut_rep_2_3_lut: lut40014
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I5_i608_3_lut_4_lut: lut40005
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    I5_Counter_Counter3Hz_106_i5: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

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
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(LSR_ipd, LSR, tipd_LSR);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(LSR_dly, LSR_ipd, tisd_LSR_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      A0_ipd, DI0_dly, LSR_dly, CLK_dly, F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_CLK       	: x01 := '0';
    VARIABLE LSR_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_LSR          	: x01 := '0';
    VARIABLE periodcheckinfo_LSR	: VitalPeriodDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => LSR_dly,
        TestSignalName => "LSR",
        TestDelay => tisd_LSR_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_LSR_CLK_noedge_posedge,
        SetupLow => tsetup_LSR_CLK_noedge_posedge,
        HoldHigh => thold_LSR_CLK_noedge_posedge,
        HoldLow => thold_LSR_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => LSR_CLK_TimingDatash,
        Violation => tviol_LSR_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => LSR_ipd,
        TestSignalName => "LSR",
        Period => tperiod_LSR,
        PulseWidthHigh => tpw_LSR_posedge,
        PulseWidthLow => tpw_LSR_negedge,
        PeriodData => periodcheckinfo_LSR,
        Violation => tviol_LSR_LSR,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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

-- entity I5_SLICE_12
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_SLICE_12 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_SLICE_12";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_LSR  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_LSR_CLK	: VitalDelayType := 0 ns;
      tsetup_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_LSR 	: VitalDelayType := 0 ns;
      tpw_LSR_posedge	: VitalDelayType := 0 ns;
      tpw_LSR_negedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          DI1: in Std_logic; DI0: in Std_logic; LSR: in Std_logic; 
          CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
          F1: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I5_SLICE_12 : ENTITY IS TRUE;

  end I5_SLICE_12;

  architecture Structure of I5_SLICE_12 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal LSR_ipd 	: std_logic := 'X';
    signal LSR_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0011
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    I5_i650_1_lut: lut40003
      port map (A=>A1_ipd, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I5_i652_2_lut: lut40002
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    I5_Counter_Counter1Hz_108_i0: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I5_Counter_Counter1Hz_108_i1: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(LSR_ipd, LSR, tipd_LSR);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(LSR_dly, LSR_ipd, tisd_LSR_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, B0_ipd, A0_ipd, DI1_dly, DI0_dly, LSR_dly, 
      CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_CLK       	: x01 := '0';
    VARIABLE LSR_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_LSR          	: x01 := '0';
    VARIABLE periodcheckinfo_LSR	: VitalPeriodDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => LSR_dly,
        TestSignalName => "LSR",
        TestDelay => tisd_LSR_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_LSR_CLK_noedge_posedge,
        SetupLow => tsetup_LSR_CLK_noedge_posedge,
        HoldHigh => thold_LSR_CLK_noedge_posedge,
        HoldLow => thold_LSR_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => LSR_CLK_TimingDatash,
        Violation => tviol_LSR_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => LSR_ipd,
        TestSignalName => "LSR",
        Period => tperiod_LSR,
        PulseWidthHigh => tpw_LSR_posedge,
        PulseWidthLow => tpw_LSR_negedge,
        PeriodData => periodcheckinfo_LSR,
        Violation => tviol_LSR_LSR,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

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
      generic map (initval => X"8888")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity I5_SLICE_13
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_SLICE_13 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_SLICE_13";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_LSR  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_LSR_CLK	: VitalDelayType := 0 ns;
      tsetup_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_LSR 	: VitalDelayType := 0 ns;
      tpw_LSR_posedge	: VitalDelayType := 0 ns;
      tpw_LSR_negedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (B1: in Std_logic; A1: in Std_logic; A0: in Std_logic; 
          DI0: in Std_logic; LSR: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I5_SLICE_13 : ENTITY IS TRUE;

  end I5_SLICE_13;

  architecture Structure of I5_SLICE_13 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal LSR_ipd 	: std_logic := 'X';
    signal LSR_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0011
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40015
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I5_i583_2_lut_rep_4: lut40015
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I5_i578_1_lut: lut40003
      port map (A=>A0_ipd, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F0_out);
    I5_Counter_Counter3Hz_106_i0: vmuxregsre0011
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(LSR_ipd, LSR, tipd_LSR);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(LSR_dly, LSR_ipd, tisd_LSR_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, A0_ipd, DI0_dly, LSR_dly, CLK_dly, 
      F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_CLK       	: x01 := '0';
    VARIABLE LSR_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_LSR          	: x01 := '0';
    VARIABLE periodcheckinfo_LSR	: VitalPeriodDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => LSR_dly,
        TestSignalName => "LSR",
        TestDelay => tisd_LSR_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_LSR_CLK_noedge_posedge,
        SetupLow => tsetup_LSR_CLK_noedge_posedge,
        HoldHigh => thold_LSR_CLK_noedge_posedge,
        HoldLow => thold_LSR_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => LSR_CLK_TimingDatash,
        Violation => tviol_LSR_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => LSR_ipd,
        TestSignalName => "LSR",
        Period => tperiod_LSR,
        PulseWidthHigh => tpw_LSR_posedge,
        PulseWidthLow => tpw_LSR_negedge,
        PeriodData => periodcheckinfo_LSR,
        Violation => tviol_LSR_LSR,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
      generic map (initval => X"2828")
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
      generic map (initval => X"A001")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity vmuxregsre0018
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre0018 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre0018 : ENTITY IS TRUE;

  end vmuxregsre0018;

  architecture Structure of vmuxregsre0018 is
    signal GATE: Std_logic;
  begin
    INST50: AND2
      port map (A=>SP, B=>CK, Z=>GATE);
    INST01: FL1S1D
      generic map (GSR => "DISABLED")
      port map (D0=>D0, D1=>D1, CK=>GATE, SD=>SD, CD=>LSR, Q=>Q);
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

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_14 : ENTITY IS TRUE;

  end SLICE_14;

  architecture Structure of SLICE_14 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40016
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40017
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0018
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    I10_i1_3_lut: lut40016
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I10_ZUST_3_bdd_4_lut_726: lut40017
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    i348: vmuxregsre0018
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

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
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      A0_ipd, DI0_dly, CLK_dly, F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
      generic map (initval => X"EEEE")
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

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (B1: in Std_logic; A1: in Std_logic; DI0: in Std_logic; 
          CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_15 : ENTITY IS TRUE;

  end SLICE_15;

  architecture Structure of SLICE_15 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component vmuxregsre0004
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40008
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40019
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I5_i2_2_lut: lut40019
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    m1_lut: lut40008
      port map (A=>GNDI, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F0_out);
    I3_dec_v_8: vmuxregsre0004
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, DI0_dly, CLK_dly, F0_out, Q0_out, 
      F1_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0 	<= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
      generic map (initval => X"5EFA")
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
      generic map (initval => X"CFD3")
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

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
          Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_16 : ENTITY IS TRUE;

  end SLICE_16;

  architecture Structure of SLICE_16 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component vmuxregsre0018
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40020
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40021
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I10_ZUST_3_bdd_4_lut: lut40020
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I10_ZUST_0_bdd_4_lut_rep_6: lut40021
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    i358: vmuxregsre0018
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    i351: vmuxregsre0018
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

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
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, F0_out, Q0_out, F1_out, 
      Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
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
      generic map (initval => X"F7FF")
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
      generic map (initval => X"0006")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity vmuxregsre0024
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre0024 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre0024 : ENTITY IS TRUE;

  end vmuxregsre0024;

  architecture Structure of vmuxregsre0024 is
    signal Q_INT: Std_logic;
    signal D_INT: Std_logic;
    signal L_IN: Std_logic;
  begin
    INST10: MUX41
      port map (D0=>Q_INT, D1=>Q_INT, D2=>D0, D3=>D1, SD1=>SD, SD2=>SP, 
                Z=>D_INT);
    INST30: OR2
      port map (A=>LSR, B=>D_INT, Z=>L_IN);
    INST50: FD1S1AY
      generic map (GSR => "DISABLED")
      port map (D=>L_IN, CK=>CK, Q=>Q_INT);
    INST80: BUFBA
      port map (A=>Q_INT, Z=>Q);
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
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_LSR  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_LSR_CLK	: VitalDelayType := 0 ns;
      tsetup_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_LSR_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_LSR 	: VitalDelayType := 0 ns;
      tpw_LSR_posedge	: VitalDelayType := 0 ns;
      tpw_LSR_negedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; DI0: in Std_logic; 
          LSR: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
          Q0: out Std_logic; F1: out Std_logic);

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
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal LSR_ipd 	: std_logic := 'X';
    signal LSR_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40022
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40023
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0024
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    I10_i1_2_lut_3_lut_4_lut: lut40022
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I10_i1_3_lut_4_lut: lut40023
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    i345: vmuxregsre0024
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>LSR_dly, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

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
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(LSR_ipd, LSR, tipd_LSR);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(LSR_dly, LSR_ipd, tisd_LSR_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, DI0_dly, LSR_dly, CLK_dly, F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_CLK       	: x01 := '0';
    VARIABLE LSR_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_LSR_LSR          	: x01 := '0';
    VARIABLE periodcheckinfo_LSR	: VitalPeriodDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => LSR_dly,
        TestSignalName => "LSR",
        TestDelay => tisd_LSR_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_LSR_CLK_noedge_posedge,
        SetupLow => tsetup_LSR_CLK_noedge_posedge,
        HoldHigh => thold_LSR_CLK_noedge_posedge,
        HoldLow => thold_LSR_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => LSR_CLK_TimingDatash,
        Violation => tviol_LSR_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => LSR_ipd,
        TestSignalName => "LSR",
        Period => tperiod_LSR,
        PulseWidthHigh => tpw_LSR_posedge,
        PulseWidthLow => tpw_LSR_negedge,
        PeriodData => periodcheckinfo_LSR,
        Violation => tviol_LSR_LSR,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
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
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
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
      generic map (initval => X"E4E4")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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

-- entity I5_i721_SLICE_18
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_i721_SLICE_18 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_i721_SLICE_18";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          M0: in Std_logic; OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I5_i721_SLICE_18 : ENTITY IS TRUE;

  end I5_i721_SLICE_18;

  architecture Structure of I5_i721_SLICE_18 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal I5_i721_SLICE_18_I5_i721_SLICE_18_K1_H1: Std_logic;
    signal I5_i721_SLICE_18_I5_i721_GATE_H0: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40025
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40026
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I5_i721_SLICE_18_K1: lut40025
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, 
                Z=>I5_i721_SLICE_18_I5_i721_SLICE_18_K1_H1);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I5_i721_GATE: lut40026
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, 
                Z=>I5_i721_SLICE_18_I5_i721_GATE_H0);
    I5_i721_SLICE_18_K0K1MUX: selmux2
      port map (D0=>I5_i721_SLICE_18_I5_i721_GATE_H0, 
                D1=>I5_i721_SLICE_18_I5_i721_SLICE_18_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, A0_ipd, 
      M0_ipd, OFX0_out)
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
                     3 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

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
      generic map (initval => X"F8F8")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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
      generic map (initval => X"2222")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_19
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_19 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_19";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_19 : ENTITY IS TRUE;

  end SLICE_19;

  architecture Structure of SLICE_19 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

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
    component lut40027
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40028
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I8: lut40027
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I2: lut40028
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, B0_ipd, A0_ipd, F0_out, 
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
      generic map (initval => X"8000")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity I5_SLICE_20
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_SLICE_20 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_SLICE_20";

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

    ATTRIBUTE Vital_Level0 OF I5_SLICE_20 : ENTITY IS TRUE;

  end I5_SLICE_20;

  architecture Structure of I5_SLICE_20 is
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
    component lut40015
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40029
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I5_i676_2_lut_4_lut: lut40029
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I5_i655_2_lut_rep_5: lut40015
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
      generic map (initval => X"A080")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity I5_SLICE_21
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_SLICE_21 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_SLICE_21";

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

    ATTRIBUTE Vital_Level0 OF I5_SLICE_21 : ENTITY IS TRUE;

  end I5_SLICE_21;

  architecture Structure of I5_SLICE_21 is
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
    component lut40019
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40030
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I5_i2_4_lut: lut40030
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I5_i1_2_lut: lut40019
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

-- entity PRB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity PRB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "PRB";

      tipd_PRS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PRS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_PRS 	: VitalDelayType := 0 ns;
      tpw_PRS_posedge	: VitalDelayType := 0 ns;
      tpw_PRS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; PRS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF PRB : ENTITY IS TRUE;

  end PRB;

  architecture Structure of PRB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PRS_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    PR_pad: xo2iobuf
      port map (Z=>PADDI_out, PAD=>PRS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PRS_ipd, PRS, tipd_PRS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PRS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_PRS_PRS          	: x01 := '0';
    VARIABLE periodcheckinfo_PRS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => PRS_ipd,
        TestSignalName => "PRS",
        Period => tperiod_PRS,
        PulseWidthHigh => tpw_PRS_posedge,
        PulseWidthLow => tpw_PRS_negedge,
        PeriodData => periodcheckinfo_PRS,
        Violation => tviol_PRS_PRS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => PRS_ipd'last_event,
                           PathDelay => tpd_PRS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity CMR_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity CMR_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "CMR_0_B";

      tipd_CMR0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CMR0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_CMR0 	: VitalDelayType := 0 ns;
      tpw_CMR0_posedge	: VitalDelayType := 0 ns;
      tpw_CMR0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; CMR0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF CMR_0_B : ENTITY IS TRUE;

  end CMR_0_B;

  architecture Structure of CMR_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal CMR0_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    CMR_pad_0: xo2iobuf
      port map (Z=>PADDI_out, PAD=>CMR0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CMR0_ipd, CMR0, tipd_CMR0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, CMR0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_CMR0_CMR0          	: x01 := '0';
    VARIABLE periodcheckinfo_CMR0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => CMR0_ipd,
        TestSignalName => "CMR0",
        Period => tperiod_CMR0,
        PulseWidthHigh => tpw_CMR0_posedge,
        PulseWidthLow => tpw_CMR0_negedge,
        PeriodData => periodcheckinfo_CMR0,
        Violation => tviol_CMR0_CMR0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => CMR0_ipd'last_event,
                           PathDelay => tpd_CMR0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity CMR_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity CMR_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "CMR_1_B";

      tipd_CMR1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CMR1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_CMR1 	: VitalDelayType := 0 ns;
      tpw_CMR1_posedge	: VitalDelayType := 0 ns;
      tpw_CMR1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; CMR1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF CMR_1_B : ENTITY IS TRUE;

  end CMR_1_B;

  architecture Structure of CMR_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal CMR1_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    CMR_pad_1: xo2iobuf
      port map (Z=>PADDI_out, PAD=>CMR1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CMR1_ipd, CMR1, tipd_CMR1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, CMR1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_CMR1_CMR1          	: x01 := '0';
    VARIABLE periodcheckinfo_CMR1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => CMR1_ipd,
        TestSignalName => "CMR1",
        Period => tperiod_CMR1,
        PulseWidthHigh => tpw_CMR1_posedge,
        PulseWidthLow => tpw_CMR1_negedge,
        PeriodData => periodcheckinfo_CMR1,
        Violation => tviol_CMR1_CMR1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => CMR1_ipd'last_event,
                           PathDelay => tpd_CMR1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ANFB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity ANFB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ANFB";

      tipd_ANFS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_ANFS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ANFS 	: VitalDelayType := 0 ns;
      tpw_ANFS_posedge	: VitalDelayType := 0 ns;
      tpw_ANFS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; ANFS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF ANFB : ENTITY IS TRUE;

  end ANFB;

  architecture Structure of ANFB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal ANFS_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    ANF_pad: xo2iobuf
      port map (Z=>PADDI_out, PAD=>ANFS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(ANFS_ipd, ANFS, tipd_ANFS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, ANFS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ANFS_ANFS          	: x01 := '0';
    VARIABLE periodcheckinfo_ANFS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ANFS_ipd,
        TestSignalName => "ANFS",
        Period => tperiod_ANFS,
        PulseWidthHigh => tpw_ANFS_posedge,
        PulseWidthLow => tpw_ANFS_negedge,
        PeriodData => periodcheckinfo_ANFS,
        Violation => tviol_ANFS_ANFS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ANFS_ipd'last_event,
                           PathDelay => tpd_ANFS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0031
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0031 is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0031 : ENTITY IS TRUE;

  end xo2iobuf0031;

  architecture Structure of xo2iobuf0031 is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity KFZA_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity KFZA_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "KFZA_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_KFZA0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; KFZA0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF KFZA_0_B : ENTITY IS TRUE;

  end KFZA_0_B;

  architecture Structure of KFZA_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal KFZA0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0031
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    KFZA_pad_0: xo2iobuf0031
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>KFZA0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, KFZA0_out)
    VARIABLE KFZA0_zd         	: std_logic := 'X';
    VARIABLE KFZA0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    KFZA0_zd 	:= KFZA0_out;

    VitalPathDelay01 (
      OutSignal => KFZA0, OutSignalName => "KFZA0", OutTemp => KFZA0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_KFZA0,
                           PathCondition => TRUE)),
      GlitchData => KFZA0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity KFZA_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity KFZA_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "KFZA_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_KFZA1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; KFZA1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF KFZA_1_B : ENTITY IS TRUE;

  end KFZA_1_B;

  architecture Structure of KFZA_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal KFZA1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0031
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    KFZA_pad_1: xo2iobuf0031
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>KFZA1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, KFZA1_out)
    VARIABLE KFZA1_zd         	: std_logic := 'X';
    VARIABLE KFZA1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    KFZA1_zd 	:= KFZA1_out;

    VitalPathDelay01 (
      OutSignal => KFZA1, OutSignalName => "KFZA1", OutTemp => KFZA1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_KFZA1,
                           PathCondition => TRUE)),
      GlitchData => KFZA1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity KFZA_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity KFZA_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "KFZA_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_KFZA2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; KFZA2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF KFZA_2_B : ENTITY IS TRUE;

  end KFZA_2_B;

  architecture Structure of KFZA_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal KFZA2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0031
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    KFZA_pad_2: xo2iobuf0031
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>KFZA2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, KFZA2_out)
    VARIABLE KFZA2_zd         	: std_logic := 'X';
    VARIABLE KFZA2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    KFZA2_zd 	:= KFZA2_out;

    VitalPathDelay01 (
      OutSignal => KFZA2, OutSignalName => "KFZA2", OutTemp => KFZA2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_KFZA2,
                           PathCondition => TRUE)),
      GlitchData => KFZA2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FA_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FA_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FA_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FA0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FA0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FA_0_B : ENTITY IS TRUE;

  end FA_0_B;

  architecture Structure of FA_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FA0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0031
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FA_pad_0: xo2iobuf0031
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FA0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FA0_out)
    VARIABLE FA0_zd         	: std_logic := 'X';
    VARIABLE FA0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FA0_zd 	:= FA0_out;

    VitalPathDelay01 (
      OutSignal => FA0, OutSignalName => "FA0", OutTemp => FA0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FA0,
                           PathCondition => TRUE)),
      GlitchData => FA0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FA_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FA_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FA_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FA1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FA1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FA_1_B : ENTITY IS TRUE;

  end FA_1_B;

  architecture Structure of FA_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FA1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0031
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FA_pad_1: xo2iobuf0031
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FA1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FA1_out)
    VARIABLE FA1_zd         	: std_logic := 'X';
    VARIABLE FA1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FA1_zd 	:= FA1_out;

    VitalPathDelay01 (
      OutSignal => FA1, OutSignalName => "FA1", OutTemp => FA1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FA1,
                           PathCondition => TRUE)),
      GlitchData => FA1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity GSR5MODE
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity GSR5MODE is
    port (GSRP: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR5MODE : ENTITY IS TRUE;

  end GSR5MODE;

  architecture Structure of GSR5MODE is
    signal GSRMODE: Std_logic;
  begin
    INST10: BUFBA
      port map (A=>GSRP, Z=>GSRMODE);
    INST20: GSR
      port map (GSR=>GSRMODE);
  end Structure;

-- entity GSR_INSTB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity GSR_INSTB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "GSR_INSTB";

      tipd_GSRNET  	: VitalDelayType01 := (0 ns, 0 ns));

    port (GSRNET: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR_INSTB : ENTITY IS TRUE;

  end GSR_INSTB;

  architecture Structure of GSR_INSTB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal GSRNET_ipd 	: std_logic := 'X';

    component GSR5MODE
      port (GSRP: in Std_logic);
    end component;
  begin
    GSR_INST_GSRMODE: GSR5MODE
      port map (GSRP=>GSRNET_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(GSRNET_ipd, GSRNET, tipd_GSRNET);
    END BLOCK;

    VitalBehavior : PROCESS (GSRNET_ipd)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;



    END PROCESS;

  end Structure;

-- entity OSCHB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

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

-- entity I5_OscInst0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_OscInst0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "I5_OscInst0");

    port (OSC: out Std_logic);

    ATTRIBUTE Vital_Level0 OF I5_OscInst0 : ENTITY IS TRUE;

  end I5_OscInst0;

  architecture Structure of I5_OscInst0 is
    signal OSC_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component OSCHB
      port (STDBY: in Std_logic; OSC: out Std_logic; SEDSTDBY: out Std_logic);
    end component;
  begin
    I5_OscInst0_OSCH: OSCHB
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

-- entity EFB_Buffer_Block
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity EFB_Buffer_Block is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "EFB_Buffer_Block";

      tipd_WBCLKIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBRSTIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBCYCIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBSTBIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBWEIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBADRI7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATI7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SCLIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SDAIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SCLIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SDAIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPISCKIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMISOIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMOSIIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPISCSNin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_TCCLKIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_TCRSTNin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_TCICin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_UFMSNin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0DATI7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0ACKIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1DATI7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1ACKIin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBDATO7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBACKOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WBCUFMIRQin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SCLOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SCLOENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SDAOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1SDAOENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SCLOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SCLOENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SDAOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2SDAOENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C1IRQOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_I2C2IRQOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPISCKOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPISCKENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMISOOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMISOENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMOSIOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMOSIENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIMCSN7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPICSNENin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_SPIIRQOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_TCINTin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_TCOCin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLCLKOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLRSTOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL0STBOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLL1STBOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLWEOin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLADRO0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLADRO1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLADRO2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLADRO3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLADRO4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO0in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO1in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO2in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO3in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO4in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO5in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO6in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PLLDATO7in  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CFGWAKEin  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CFGSTDBYin  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_TCCLKIin_TCOCout	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_TCCLKIin 	: VitalDelayType := 0 ns;
      tpw_TCCLKIin_posedge	: VitalDelayType := 0 ns;
      tpw_TCCLKIin_negedge	: VitalDelayType := 0 ns);

    port (WBCLKIin: in Std_logic; WBCLKIout: out Std_logic; 
          WBRSTIin: in Std_logic; WBRSTIout: out Std_logic; 
          WBCYCIin: in Std_logic; WBCYCIout: out Std_logic; 
          WBSTBIin: in Std_logic; WBSTBIout: out Std_logic; 
          WBWEIin: in Std_logic; WBWEIout: out Std_logic; 
          WBADRI0in: in Std_logic; WBADRI0out: out Std_logic; 
          WBADRI1in: in Std_logic; WBADRI1out: out Std_logic; 
          WBADRI2in: in Std_logic; WBADRI2out: out Std_logic; 
          WBADRI3in: in Std_logic; WBADRI3out: out Std_logic; 
          WBADRI4in: in Std_logic; WBADRI4out: out Std_logic; 
          WBADRI5in: in Std_logic; WBADRI5out: out Std_logic; 
          WBADRI6in: in Std_logic; WBADRI6out: out Std_logic; 
          WBADRI7in: in Std_logic; WBADRI7out: out Std_logic; 
          WBDATI0in: in Std_logic; WBDATI0out: out Std_logic; 
          WBDATI1in: in Std_logic; WBDATI1out: out Std_logic; 
          WBDATI2in: in Std_logic; WBDATI2out: out Std_logic; 
          WBDATI3in: in Std_logic; WBDATI3out: out Std_logic; 
          WBDATI4in: in Std_logic; WBDATI4out: out Std_logic; 
          WBDATI5in: in Std_logic; WBDATI5out: out Std_logic; 
          WBDATI6in: in Std_logic; WBDATI6out: out Std_logic; 
          WBDATI7in: in Std_logic; WBDATI7out: out Std_logic; 
          I2C1SCLIin: in Std_logic; I2C1SCLIout: out Std_logic; 
          I2C1SDAIin: in Std_logic; I2C1SDAIout: out Std_logic; 
          I2C2SCLIin: in Std_logic; I2C2SCLIout: out Std_logic; 
          I2C2SDAIin: in Std_logic; I2C2SDAIout: out Std_logic; 
          SPISCKIin: in Std_logic; SPISCKIout: out Std_logic; 
          SPIMISOIin: in Std_logic; SPIMISOIout: out Std_logic; 
          SPIMOSIIin: in Std_logic; SPIMOSIIout: out Std_logic; 
          SPISCSNin: in Std_logic; SPISCSNout: out Std_logic; 
          TCCLKIin: in Std_logic; TCCLKIout: out Std_logic; 
          TCRSTNin: in Std_logic; TCRSTNout: out Std_logic; 
          TCICin: in Std_logic; TCICout: out Std_logic; UFMSNin: in Std_logic; 
          UFMSNout: out Std_logic; PLL0DATI0in: in Std_logic; 
          PLL0DATI0out: out Std_logic; PLL0DATI1in: in Std_logic; 
          PLL0DATI1out: out Std_logic; PLL0DATI2in: in Std_logic; 
          PLL0DATI2out: out Std_logic; PLL0DATI3in: in Std_logic; 
          PLL0DATI3out: out Std_logic; PLL0DATI4in: in Std_logic; 
          PLL0DATI4out: out Std_logic; PLL0DATI5in: in Std_logic; 
          PLL0DATI5out: out Std_logic; PLL0DATI6in: in Std_logic; 
          PLL0DATI6out: out Std_logic; PLL0DATI7in: in Std_logic; 
          PLL0DATI7out: out Std_logic; PLL0ACKIin: in Std_logic; 
          PLL0ACKIout: out Std_logic; PLL1DATI0in: in Std_logic; 
          PLL1DATI0out: out Std_logic; PLL1DATI1in: in Std_logic; 
          PLL1DATI1out: out Std_logic; PLL1DATI2in: in Std_logic; 
          PLL1DATI2out: out Std_logic; PLL1DATI3in: in Std_logic; 
          PLL1DATI3out: out Std_logic; PLL1DATI4in: in Std_logic; 
          PLL1DATI4out: out Std_logic; PLL1DATI5in: in Std_logic; 
          PLL1DATI5out: out Std_logic; PLL1DATI6in: in Std_logic; 
          PLL1DATI6out: out Std_logic; PLL1DATI7in: in Std_logic; 
          PLL1DATI7out: out Std_logic; PLL1ACKIin: in Std_logic; 
          PLL1ACKIout: out Std_logic; WBDATO0out: out Std_logic; 
          WBDATO0in: in Std_logic; WBDATO1out: out Std_logic; 
          WBDATO1in: in Std_logic; WBDATO2out: out Std_logic; 
          WBDATO2in: in Std_logic; WBDATO3out: out Std_logic; 
          WBDATO3in: in Std_logic; WBDATO4out: out Std_logic; 
          WBDATO4in: in Std_logic; WBDATO5out: out Std_logic; 
          WBDATO5in: in Std_logic; WBDATO6out: out Std_logic; 
          WBDATO6in: in Std_logic; WBDATO7out: out Std_logic; 
          WBDATO7in: in Std_logic; WBACKOout: out Std_logic; 
          WBACKOin: in Std_logic; WBCUFMIRQout: out Std_logic; 
          WBCUFMIRQin: in Std_logic; I2C1SCLOout: out Std_logic; 
          I2C1SCLOin: in Std_logic; I2C1SCLOENout: out Std_logic; 
          I2C1SCLOENin: in Std_logic; I2C1SDAOout: out Std_logic; 
          I2C1SDAOin: in Std_logic; I2C1SDAOENout: out Std_logic; 
          I2C1SDAOENin: in Std_logic; I2C2SCLOout: out Std_logic; 
          I2C2SCLOin: in Std_logic; I2C2SCLOENout: out Std_logic; 
          I2C2SCLOENin: in Std_logic; I2C2SDAOout: out Std_logic; 
          I2C2SDAOin: in Std_logic; I2C2SDAOENout: out Std_logic; 
          I2C2SDAOENin: in Std_logic; I2C1IRQOout: out Std_logic; 
          I2C1IRQOin: in Std_logic; I2C2IRQOout: out Std_logic; 
          I2C2IRQOin: in Std_logic; SPISCKOout: out Std_logic; 
          SPISCKOin: in Std_logic; SPISCKENout: out Std_logic; 
          SPISCKENin: in Std_logic; SPIMISOOout: out Std_logic; 
          SPIMISOOin: in Std_logic; SPIMISOENout: out Std_logic; 
          SPIMISOENin: in Std_logic; SPIMOSIOout: out Std_logic; 
          SPIMOSIOin: in Std_logic; SPIMOSIENout: out Std_logic; 
          SPIMOSIENin: in Std_logic; SPIMCSN0out: out Std_logic; 
          SPIMCSN0in: in Std_logic; SPIMCSN1out: out Std_logic; 
          SPIMCSN1in: in Std_logic; SPIMCSN2out: out Std_logic; 
          SPIMCSN2in: in Std_logic; SPIMCSN3out: out Std_logic; 
          SPIMCSN3in: in Std_logic; SPIMCSN4out: out Std_logic; 
          SPIMCSN4in: in Std_logic; SPIMCSN5out: out Std_logic; 
          SPIMCSN5in: in Std_logic; SPIMCSN6out: out Std_logic; 
          SPIMCSN6in: in Std_logic; SPIMCSN7out: out Std_logic; 
          SPIMCSN7in: in Std_logic; SPICSNENout: out Std_logic; 
          SPICSNENin: in Std_logic; SPIIRQOout: out Std_logic; 
          SPIIRQOin: in Std_logic; TCINTout: out Std_logic; 
          TCINTin: in Std_logic; TCOCout: out Std_logic; TCOCin: in Std_logic; 
          PLLCLKOout: out Std_logic; PLLCLKOin: in Std_logic; 
          PLLRSTOout: out Std_logic; PLLRSTOin: in Std_logic; 
          PLL0STBOout: out Std_logic; PLL0STBOin: in Std_logic; 
          PLL1STBOout: out Std_logic; PLL1STBOin: in Std_logic; 
          PLLWEOout: out Std_logic; PLLWEOin: in Std_logic; 
          PLLADRO0out: out Std_logic; PLLADRO0in: in Std_logic; 
          PLLADRO1out: out Std_logic; PLLADRO1in: in Std_logic; 
          PLLADRO2out: out Std_logic; PLLADRO2in: in Std_logic; 
          PLLADRO3out: out Std_logic; PLLADRO3in: in Std_logic; 
          PLLADRO4out: out Std_logic; PLLADRO4in: in Std_logic; 
          PLLDATO0out: out Std_logic; PLLDATO0in: in Std_logic; 
          PLLDATO1out: out Std_logic; PLLDATO1in: in Std_logic; 
          PLLDATO2out: out Std_logic; PLLDATO2in: in Std_logic; 
          PLLDATO3out: out Std_logic; PLLDATO3in: in Std_logic; 
          PLLDATO4out: out Std_logic; PLLDATO4in: in Std_logic; 
          PLLDATO5out: out Std_logic; PLLDATO5in: in Std_logic; 
          PLLDATO6out: out Std_logic; PLLDATO6in: in Std_logic; 
          PLLDATO7out: out Std_logic; PLLDATO7in: in Std_logic; 
          CFGWAKEout: out Std_logic; CFGWAKEin: in Std_logic; 
          CFGSTDBYout: out Std_logic; CFGSTDBYin: in Std_logic);

    ATTRIBUTE Vital_Level0 OF EFB_Buffer_Block : ENTITY IS TRUE;

  end EFB_Buffer_Block;

  architecture Structure of EFB_Buffer_Block is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal WBCLKIin_ipd 	: std_logic := 'X';
    signal WBCLKIout_out 	: std_logic := 'X';
    signal WBRSTIin_ipd 	: std_logic := 'X';
    signal WBRSTIout_out 	: std_logic := 'X';
    signal WBCYCIin_ipd 	: std_logic := 'X';
    signal WBCYCIout_out 	: std_logic := 'X';
    signal WBSTBIin_ipd 	: std_logic := 'X';
    signal WBSTBIout_out 	: std_logic := 'X';
    signal WBWEIin_ipd 	: std_logic := 'X';
    signal WBWEIout_out 	: std_logic := 'X';
    signal WBADRI0in_ipd 	: std_logic := 'X';
    signal WBADRI0out_out 	: std_logic := 'X';
    signal WBADRI1in_ipd 	: std_logic := 'X';
    signal WBADRI1out_out 	: std_logic := 'X';
    signal WBADRI2in_ipd 	: std_logic := 'X';
    signal WBADRI2out_out 	: std_logic := 'X';
    signal WBADRI3in_ipd 	: std_logic := 'X';
    signal WBADRI3out_out 	: std_logic := 'X';
    signal WBADRI4in_ipd 	: std_logic := 'X';
    signal WBADRI4out_out 	: std_logic := 'X';
    signal WBADRI5in_ipd 	: std_logic := 'X';
    signal WBADRI5out_out 	: std_logic := 'X';
    signal WBADRI6in_ipd 	: std_logic := 'X';
    signal WBADRI6out_out 	: std_logic := 'X';
    signal WBADRI7in_ipd 	: std_logic := 'X';
    signal WBADRI7out_out 	: std_logic := 'X';
    signal WBDATI0in_ipd 	: std_logic := 'X';
    signal WBDATI0out_out 	: std_logic := 'X';
    signal WBDATI1in_ipd 	: std_logic := 'X';
    signal WBDATI1out_out 	: std_logic := 'X';
    signal WBDATI2in_ipd 	: std_logic := 'X';
    signal WBDATI2out_out 	: std_logic := 'X';
    signal WBDATI3in_ipd 	: std_logic := 'X';
    signal WBDATI3out_out 	: std_logic := 'X';
    signal WBDATI4in_ipd 	: std_logic := 'X';
    signal WBDATI4out_out 	: std_logic := 'X';
    signal WBDATI5in_ipd 	: std_logic := 'X';
    signal WBDATI5out_out 	: std_logic := 'X';
    signal WBDATI6in_ipd 	: std_logic := 'X';
    signal WBDATI6out_out 	: std_logic := 'X';
    signal WBDATI7in_ipd 	: std_logic := 'X';
    signal WBDATI7out_out 	: std_logic := 'X';
    signal I2C1SCLIin_ipd 	: std_logic := 'X';
    signal I2C1SCLIout_out 	: std_logic := 'X';
    signal I2C1SDAIin_ipd 	: std_logic := 'X';
    signal I2C1SDAIout_out 	: std_logic := 'X';
    signal I2C2SCLIin_ipd 	: std_logic := 'X';
    signal I2C2SCLIout_out 	: std_logic := 'X';
    signal I2C2SDAIin_ipd 	: std_logic := 'X';
    signal I2C2SDAIout_out 	: std_logic := 'X';
    signal SPISCKIin_ipd 	: std_logic := 'X';
    signal SPISCKIout_out 	: std_logic := 'X';
    signal SPIMISOIin_ipd 	: std_logic := 'X';
    signal SPIMISOIout_out 	: std_logic := 'X';
    signal SPIMOSIIin_ipd 	: std_logic := 'X';
    signal SPIMOSIIout_out 	: std_logic := 'X';
    signal SPISCSNin_ipd 	: std_logic := 'X';
    signal SPISCSNout_out 	: std_logic := 'X';
    signal TCCLKIin_ipd 	: std_logic := 'X';
    signal TCCLKIout_out 	: std_logic := 'X';
    signal TCRSTNin_ipd 	: std_logic := 'X';
    signal TCRSTNout_out 	: std_logic := 'X';
    signal TCICin_ipd 	: std_logic := 'X';
    signal TCICout_out 	: std_logic := 'X';
    signal UFMSNin_ipd 	: std_logic := 'X';
    signal UFMSNout_out 	: std_logic := 'X';
    signal PLL0DATI0in_ipd 	: std_logic := 'X';
    signal PLL0DATI0out_out 	: std_logic := 'X';
    signal PLL0DATI1in_ipd 	: std_logic := 'X';
    signal PLL0DATI1out_out 	: std_logic := 'X';
    signal PLL0DATI2in_ipd 	: std_logic := 'X';
    signal PLL0DATI2out_out 	: std_logic := 'X';
    signal PLL0DATI3in_ipd 	: std_logic := 'X';
    signal PLL0DATI3out_out 	: std_logic := 'X';
    signal PLL0DATI4in_ipd 	: std_logic := 'X';
    signal PLL0DATI4out_out 	: std_logic := 'X';
    signal PLL0DATI5in_ipd 	: std_logic := 'X';
    signal PLL0DATI5out_out 	: std_logic := 'X';
    signal PLL0DATI6in_ipd 	: std_logic := 'X';
    signal PLL0DATI6out_out 	: std_logic := 'X';
    signal PLL0DATI7in_ipd 	: std_logic := 'X';
    signal PLL0DATI7out_out 	: std_logic := 'X';
    signal PLL0ACKIin_ipd 	: std_logic := 'X';
    signal PLL0ACKIout_out 	: std_logic := 'X';
    signal PLL1DATI0in_ipd 	: std_logic := 'X';
    signal PLL1DATI0out_out 	: std_logic := 'X';
    signal PLL1DATI1in_ipd 	: std_logic := 'X';
    signal PLL1DATI1out_out 	: std_logic := 'X';
    signal PLL1DATI2in_ipd 	: std_logic := 'X';
    signal PLL1DATI2out_out 	: std_logic := 'X';
    signal PLL1DATI3in_ipd 	: std_logic := 'X';
    signal PLL1DATI3out_out 	: std_logic := 'X';
    signal PLL1DATI4in_ipd 	: std_logic := 'X';
    signal PLL1DATI4out_out 	: std_logic := 'X';
    signal PLL1DATI5in_ipd 	: std_logic := 'X';
    signal PLL1DATI5out_out 	: std_logic := 'X';
    signal PLL1DATI6in_ipd 	: std_logic := 'X';
    signal PLL1DATI6out_out 	: std_logic := 'X';
    signal PLL1DATI7in_ipd 	: std_logic := 'X';
    signal PLL1DATI7out_out 	: std_logic := 'X';
    signal PLL1ACKIin_ipd 	: std_logic := 'X';
    signal PLL1ACKIout_out 	: std_logic := 'X';
    signal WBDATO0out_out 	: std_logic := 'X';
    signal WBDATO0in_ipd 	: std_logic := 'X';
    signal WBDATO1out_out 	: std_logic := 'X';
    signal WBDATO1in_ipd 	: std_logic := 'X';
    signal WBDATO2out_out 	: std_logic := 'X';
    signal WBDATO2in_ipd 	: std_logic := 'X';
    signal WBDATO3out_out 	: std_logic := 'X';
    signal WBDATO3in_ipd 	: std_logic := 'X';
    signal WBDATO4out_out 	: std_logic := 'X';
    signal WBDATO4in_ipd 	: std_logic := 'X';
    signal WBDATO5out_out 	: std_logic := 'X';
    signal WBDATO5in_ipd 	: std_logic := 'X';
    signal WBDATO6out_out 	: std_logic := 'X';
    signal WBDATO6in_ipd 	: std_logic := 'X';
    signal WBDATO7out_out 	: std_logic := 'X';
    signal WBDATO7in_ipd 	: std_logic := 'X';
    signal WBACKOout_out 	: std_logic := 'X';
    signal WBACKOin_ipd 	: std_logic := 'X';
    signal WBCUFMIRQout_out 	: std_logic := 'X';
    signal WBCUFMIRQin_ipd 	: std_logic := 'X';
    signal I2C1SCLOout_out 	: std_logic := 'X';
    signal I2C1SCLOin_ipd 	: std_logic := 'X';
    signal I2C1SCLOENout_out 	: std_logic := 'X';
    signal I2C1SCLOENin_ipd 	: std_logic := 'X';
    signal I2C1SDAOout_out 	: std_logic := 'X';
    signal I2C1SDAOin_ipd 	: std_logic := 'X';
    signal I2C1SDAOENout_out 	: std_logic := 'X';
    signal I2C1SDAOENin_ipd 	: std_logic := 'X';
    signal I2C2SCLOout_out 	: std_logic := 'X';
    signal I2C2SCLOin_ipd 	: std_logic := 'X';
    signal I2C2SCLOENout_out 	: std_logic := 'X';
    signal I2C2SCLOENin_ipd 	: std_logic := 'X';
    signal I2C2SDAOout_out 	: std_logic := 'X';
    signal I2C2SDAOin_ipd 	: std_logic := 'X';
    signal I2C2SDAOENout_out 	: std_logic := 'X';
    signal I2C2SDAOENin_ipd 	: std_logic := 'X';
    signal I2C1IRQOout_out 	: std_logic := 'X';
    signal I2C1IRQOin_ipd 	: std_logic := 'X';
    signal I2C2IRQOout_out 	: std_logic := 'X';
    signal I2C2IRQOin_ipd 	: std_logic := 'X';
    signal SPISCKOout_out 	: std_logic := 'X';
    signal SPISCKOin_ipd 	: std_logic := 'X';
    signal SPISCKENout_out 	: std_logic := 'X';
    signal SPISCKENin_ipd 	: std_logic := 'X';
    signal SPIMISOOout_out 	: std_logic := 'X';
    signal SPIMISOOin_ipd 	: std_logic := 'X';
    signal SPIMISOENout_out 	: std_logic := 'X';
    signal SPIMISOENin_ipd 	: std_logic := 'X';
    signal SPIMOSIOout_out 	: std_logic := 'X';
    signal SPIMOSIOin_ipd 	: std_logic := 'X';
    signal SPIMOSIENout_out 	: std_logic := 'X';
    signal SPIMOSIENin_ipd 	: std_logic := 'X';
    signal SPIMCSN0out_out 	: std_logic := 'X';
    signal SPIMCSN0in_ipd 	: std_logic := 'X';
    signal SPIMCSN1out_out 	: std_logic := 'X';
    signal SPIMCSN1in_ipd 	: std_logic := 'X';
    signal SPIMCSN2out_out 	: std_logic := 'X';
    signal SPIMCSN2in_ipd 	: std_logic := 'X';
    signal SPIMCSN3out_out 	: std_logic := 'X';
    signal SPIMCSN3in_ipd 	: std_logic := 'X';
    signal SPIMCSN4out_out 	: std_logic := 'X';
    signal SPIMCSN4in_ipd 	: std_logic := 'X';
    signal SPIMCSN5out_out 	: std_logic := 'X';
    signal SPIMCSN5in_ipd 	: std_logic := 'X';
    signal SPIMCSN6out_out 	: std_logic := 'X';
    signal SPIMCSN6in_ipd 	: std_logic := 'X';
    signal SPIMCSN7out_out 	: std_logic := 'X';
    signal SPIMCSN7in_ipd 	: std_logic := 'X';
    signal SPICSNENout_out 	: std_logic := 'X';
    signal SPICSNENin_ipd 	: std_logic := 'X';
    signal SPIIRQOout_out 	: std_logic := 'X';
    signal SPIIRQOin_ipd 	: std_logic := 'X';
    signal TCINTout_out 	: std_logic := 'X';
    signal TCINTin_ipd 	: std_logic := 'X';
    signal TCOCout_out 	: std_logic := 'X';
    signal TCOCin_ipd 	: std_logic := 'X';
    signal PLLCLKOout_out 	: std_logic := 'X';
    signal PLLCLKOin_ipd 	: std_logic := 'X';
    signal PLLRSTOout_out 	: std_logic := 'X';
    signal PLLRSTOin_ipd 	: std_logic := 'X';
    signal PLL0STBOout_out 	: std_logic := 'X';
    signal PLL0STBOin_ipd 	: std_logic := 'X';
    signal PLL1STBOout_out 	: std_logic := 'X';
    signal PLL1STBOin_ipd 	: std_logic := 'X';
    signal PLLWEOout_out 	: std_logic := 'X';
    signal PLLWEOin_ipd 	: std_logic := 'X';
    signal PLLADRO0out_out 	: std_logic := 'X';
    signal PLLADRO0in_ipd 	: std_logic := 'X';
    signal PLLADRO1out_out 	: std_logic := 'X';
    signal PLLADRO1in_ipd 	: std_logic := 'X';
    signal PLLADRO2out_out 	: std_logic := 'X';
    signal PLLADRO2in_ipd 	: std_logic := 'X';
    signal PLLADRO3out_out 	: std_logic := 'X';
    signal PLLADRO3in_ipd 	: std_logic := 'X';
    signal PLLADRO4out_out 	: std_logic := 'X';
    signal PLLADRO4in_ipd 	: std_logic := 'X';
    signal PLLDATO0out_out 	: std_logic := 'X';
    signal PLLDATO0in_ipd 	: std_logic := 'X';
    signal PLLDATO1out_out 	: std_logic := 'X';
    signal PLLDATO1in_ipd 	: std_logic := 'X';
    signal PLLDATO2out_out 	: std_logic := 'X';
    signal PLLDATO2in_ipd 	: std_logic := 'X';
    signal PLLDATO3out_out 	: std_logic := 'X';
    signal PLLDATO3in_ipd 	: std_logic := 'X';
    signal PLLDATO4out_out 	: std_logic := 'X';
    signal PLLDATO4in_ipd 	: std_logic := 'X';
    signal PLLDATO5out_out 	: std_logic := 'X';
    signal PLLDATO5in_ipd 	: std_logic := 'X';
    signal PLLDATO6out_out 	: std_logic := 'X';
    signal PLLDATO6in_ipd 	: std_logic := 'X';
    signal PLLDATO7out_out 	: std_logic := 'X';
    signal PLLDATO7in_ipd 	: std_logic := 'X';
    signal CFGWAKEout_out 	: std_logic := 'X';
    signal CFGWAKEin_ipd 	: std_logic := 'X';
    signal CFGSTDBYout_out 	: std_logic := 'X';
    signal CFGSTDBYin_ipd 	: std_logic := 'X';

  begin
    WBCLKI_buf: BUFBA
      port map (A=>WBCLKIin_ipd, Z=>WBCLKIout_out);
    WBRSTI_buf: BUFBA
      port map (A=>WBRSTIin_ipd, Z=>WBRSTIout_out);
    WBCYCI_buf: BUFBA
      port map (A=>WBCYCIin_ipd, Z=>WBCYCIout_out);
    WBSTBI_buf: BUFBA
      port map (A=>WBSTBIin_ipd, Z=>WBSTBIout_out);
    WBWEI_buf: BUFBA
      port map (A=>WBWEIin_ipd, Z=>WBWEIout_out);
    WBADRI0_buf: BUFBA
      port map (A=>WBADRI0in_ipd, Z=>WBADRI0out_out);
    WBADRI1_buf: BUFBA
      port map (A=>WBADRI1in_ipd, Z=>WBADRI1out_out);
    WBADRI2_buf: BUFBA
      port map (A=>WBADRI2in_ipd, Z=>WBADRI2out_out);
    WBADRI3_buf: BUFBA
      port map (A=>WBADRI3in_ipd, Z=>WBADRI3out_out);
    WBADRI4_buf: BUFBA
      port map (A=>WBADRI4in_ipd, Z=>WBADRI4out_out);
    WBADRI5_buf: BUFBA
      port map (A=>WBADRI5in_ipd, Z=>WBADRI5out_out);
    WBADRI6_buf: BUFBA
      port map (A=>WBADRI6in_ipd, Z=>WBADRI6out_out);
    WBADRI7_buf: BUFBA
      port map (A=>WBADRI7in_ipd, Z=>WBADRI7out_out);
    WBDATI0_buf: BUFBA
      port map (A=>WBDATI0in_ipd, Z=>WBDATI0out_out);
    WBDATI1_buf: BUFBA
      port map (A=>WBDATI1in_ipd, Z=>WBDATI1out_out);
    WBDATI2_buf: BUFBA
      port map (A=>WBDATI2in_ipd, Z=>WBDATI2out_out);
    WBDATI3_buf: BUFBA
      port map (A=>WBDATI3in_ipd, Z=>WBDATI3out_out);
    WBDATI4_buf: BUFBA
      port map (A=>WBDATI4in_ipd, Z=>WBDATI4out_out);
    WBDATI5_buf: BUFBA
      port map (A=>WBDATI5in_ipd, Z=>WBDATI5out_out);
    WBDATI6_buf: BUFBA
      port map (A=>WBDATI6in_ipd, Z=>WBDATI6out_out);
    WBDATI7_buf: BUFBA
      port map (A=>WBDATI7in_ipd, Z=>WBDATI7out_out);
    I2C1SCLI_buf: BUFBA
      port map (A=>I2C1SCLIin_ipd, Z=>I2C1SCLIout_out);
    I2C1SDAI_buf: BUFBA
      port map (A=>I2C1SDAIin_ipd, Z=>I2C1SDAIout_out);
    I2C2SCLI_buf: BUFBA
      port map (A=>I2C2SCLIin_ipd, Z=>I2C2SCLIout_out);
    I2C2SDAI_buf: BUFBA
      port map (A=>I2C2SDAIin_ipd, Z=>I2C2SDAIout_out);
    SPISCKI_buf: BUFBA
      port map (A=>SPISCKIin_ipd, Z=>SPISCKIout_out);
    SPIMISOI_buf: BUFBA
      port map (A=>SPIMISOIin_ipd, Z=>SPIMISOIout_out);
    SPIMOSII_buf: BUFBA
      port map (A=>SPIMOSIIin_ipd, Z=>SPIMOSIIout_out);
    SPISCSN_buf: BUFBA
      port map (A=>SPISCSNin_ipd, Z=>SPISCSNout_out);
    TCCLKI_buf: BUFBA
      port map (A=>TCCLKIin_ipd, Z=>TCCLKIout_out);
    TCRSTN_buf: BUFBA
      port map (A=>TCRSTNin_ipd, Z=>TCRSTNout_out);
    TCIC_buf: BUFBA
      port map (A=>TCICin_ipd, Z=>TCICout_out);
    UFMSN_buf: BUFBA
      port map (A=>UFMSNin_ipd, Z=>UFMSNout_out);
    PLL0DATI0_buf: BUFBA
      port map (A=>PLL0DATI0in_ipd, Z=>PLL0DATI0out_out);
    PLL0DATI1_buf: BUFBA
      port map (A=>PLL0DATI1in_ipd, Z=>PLL0DATI1out_out);
    PLL0DATI2_buf: BUFBA
      port map (A=>PLL0DATI2in_ipd, Z=>PLL0DATI2out_out);
    PLL0DATI3_buf: BUFBA
      port map (A=>PLL0DATI3in_ipd, Z=>PLL0DATI3out_out);
    PLL0DATI4_buf: BUFBA
      port map (A=>PLL0DATI4in_ipd, Z=>PLL0DATI4out_out);
    PLL0DATI5_buf: BUFBA
      port map (A=>PLL0DATI5in_ipd, Z=>PLL0DATI5out_out);
    PLL0DATI6_buf: BUFBA
      port map (A=>PLL0DATI6in_ipd, Z=>PLL0DATI6out_out);
    PLL0DATI7_buf: BUFBA
      port map (A=>PLL0DATI7in_ipd, Z=>PLL0DATI7out_out);
    PLL0ACKI_buf: BUFBA
      port map (A=>PLL0ACKIin_ipd, Z=>PLL0ACKIout_out);
    PLL1DATI0_buf: BUFBA
      port map (A=>PLL1DATI0in_ipd, Z=>PLL1DATI0out_out);
    PLL1DATI1_buf: BUFBA
      port map (A=>PLL1DATI1in_ipd, Z=>PLL1DATI1out_out);
    PLL1DATI2_buf: BUFBA
      port map (A=>PLL1DATI2in_ipd, Z=>PLL1DATI2out_out);
    PLL1DATI3_buf: BUFBA
      port map (A=>PLL1DATI3in_ipd, Z=>PLL1DATI3out_out);
    PLL1DATI4_buf: BUFBA
      port map (A=>PLL1DATI4in_ipd, Z=>PLL1DATI4out_out);
    PLL1DATI5_buf: BUFBA
      port map (A=>PLL1DATI5in_ipd, Z=>PLL1DATI5out_out);
    PLL1DATI6_buf: BUFBA
      port map (A=>PLL1DATI6in_ipd, Z=>PLL1DATI6out_out);
    PLL1DATI7_buf: BUFBA
      port map (A=>PLL1DATI7in_ipd, Z=>PLL1DATI7out_out);
    PLL1ACKI_buf: BUFBA
      port map (A=>PLL1ACKIin_ipd, Z=>PLL1ACKIout_out);
    WBDATO0_buf: BUFBA
      port map (A=>WBDATO0in_ipd, Z=>WBDATO0out_out);
    WBDATO1_buf: BUFBA
      port map (A=>WBDATO1in_ipd, Z=>WBDATO1out_out);
    WBDATO2_buf: BUFBA
      port map (A=>WBDATO2in_ipd, Z=>WBDATO2out_out);
    WBDATO3_buf: BUFBA
      port map (A=>WBDATO3in_ipd, Z=>WBDATO3out_out);
    WBDATO4_buf: BUFBA
      port map (A=>WBDATO4in_ipd, Z=>WBDATO4out_out);
    WBDATO5_buf: BUFBA
      port map (A=>WBDATO5in_ipd, Z=>WBDATO5out_out);
    WBDATO6_buf: BUFBA
      port map (A=>WBDATO6in_ipd, Z=>WBDATO6out_out);
    WBDATO7_buf: BUFBA
      port map (A=>WBDATO7in_ipd, Z=>WBDATO7out_out);
    WBACKO_buf: BUFBA
      port map (A=>WBACKOin_ipd, Z=>WBACKOout_out);
    WBCUFMIRQ_buf: BUFBA
      port map (A=>WBCUFMIRQin_ipd, Z=>WBCUFMIRQout_out);
    I2C1SCLO_buf: BUFBA
      port map (A=>I2C1SCLOin_ipd, Z=>I2C1SCLOout_out);
    I2C1SCLOEN_buf: BUFBA
      port map (A=>I2C1SCLOENin_ipd, Z=>I2C1SCLOENout_out);
    I2C1SDAO_buf: BUFBA
      port map (A=>I2C1SDAOin_ipd, Z=>I2C1SDAOout_out);
    I2C1SDAOEN_buf: BUFBA
      port map (A=>I2C1SDAOENin_ipd, Z=>I2C1SDAOENout_out);
    I2C2SCLO_buf: BUFBA
      port map (A=>I2C2SCLOin_ipd, Z=>I2C2SCLOout_out);
    I2C2SCLOEN_buf: BUFBA
      port map (A=>I2C2SCLOENin_ipd, Z=>I2C2SCLOENout_out);
    I2C2SDAO_buf: BUFBA
      port map (A=>I2C2SDAOin_ipd, Z=>I2C2SDAOout_out);
    I2C2SDAOEN_buf: BUFBA
      port map (A=>I2C2SDAOENin_ipd, Z=>I2C2SDAOENout_out);
    I2C1IRQO_buf: BUFBA
      port map (A=>I2C1IRQOin_ipd, Z=>I2C1IRQOout_out);
    I2C2IRQO_buf: BUFBA
      port map (A=>I2C2IRQOin_ipd, Z=>I2C2IRQOout_out);
    SPISCKO_buf: BUFBA
      port map (A=>SPISCKOin_ipd, Z=>SPISCKOout_out);
    SPISCKEN_buf: BUFBA
      port map (A=>SPISCKENin_ipd, Z=>SPISCKENout_out);
    SPIMISOO_buf: BUFBA
      port map (A=>SPIMISOOin_ipd, Z=>SPIMISOOout_out);
    SPIMISOEN_buf: BUFBA
      port map (A=>SPIMISOENin_ipd, Z=>SPIMISOENout_out);
    SPIMOSIO_buf: BUFBA
      port map (A=>SPIMOSIOin_ipd, Z=>SPIMOSIOout_out);
    SPIMOSIEN_buf: BUFBA
      port map (A=>SPIMOSIENin_ipd, Z=>SPIMOSIENout_out);
    SPIMCSN0_buf: BUFBA
      port map (A=>SPIMCSN0in_ipd, Z=>SPIMCSN0out_out);
    SPIMCSN1_buf: BUFBA
      port map (A=>SPIMCSN1in_ipd, Z=>SPIMCSN1out_out);
    SPIMCSN2_buf: BUFBA
      port map (A=>SPIMCSN2in_ipd, Z=>SPIMCSN2out_out);
    SPIMCSN3_buf: BUFBA
      port map (A=>SPIMCSN3in_ipd, Z=>SPIMCSN3out_out);
    SPIMCSN4_buf: BUFBA
      port map (A=>SPIMCSN4in_ipd, Z=>SPIMCSN4out_out);
    SPIMCSN5_buf: BUFBA
      port map (A=>SPIMCSN5in_ipd, Z=>SPIMCSN5out_out);
    SPIMCSN6_buf: BUFBA
      port map (A=>SPIMCSN6in_ipd, Z=>SPIMCSN6out_out);
    SPIMCSN7_buf: BUFBA
      port map (A=>SPIMCSN7in_ipd, Z=>SPIMCSN7out_out);
    SPICSNEN_buf: BUFBA
      port map (A=>SPICSNENin_ipd, Z=>SPICSNENout_out);
    SPIIRQO_buf: BUFBA
      port map (A=>SPIIRQOin_ipd, Z=>SPIIRQOout_out);
    TCINT_buf: BUFBA
      port map (A=>TCINTin_ipd, Z=>TCINTout_out);
    TCOC_buf: BUFBA
      port map (A=>TCOCin_ipd, Z=>TCOCout_out);
    PLLCLKO_buf: BUFBA
      port map (A=>PLLCLKOin_ipd, Z=>PLLCLKOout_out);
    PLLRSTO_buf: BUFBA
      port map (A=>PLLRSTOin_ipd, Z=>PLLRSTOout_out);
    PLL0STBO_buf: BUFBA
      port map (A=>PLL0STBOin_ipd, Z=>PLL0STBOout_out);
    PLL1STBO_buf: BUFBA
      port map (A=>PLL1STBOin_ipd, Z=>PLL1STBOout_out);
    PLLWEO_buf: BUFBA
      port map (A=>PLLWEOin_ipd, Z=>PLLWEOout_out);
    PLLADRO0_buf: BUFBA
      port map (A=>PLLADRO0in_ipd, Z=>PLLADRO0out_out);
    PLLADRO1_buf: BUFBA
      port map (A=>PLLADRO1in_ipd, Z=>PLLADRO1out_out);
    PLLADRO2_buf: BUFBA
      port map (A=>PLLADRO2in_ipd, Z=>PLLADRO2out_out);
    PLLADRO3_buf: BUFBA
      port map (A=>PLLADRO3in_ipd, Z=>PLLADRO3out_out);
    PLLADRO4_buf: BUFBA
      port map (A=>PLLADRO4in_ipd, Z=>PLLADRO4out_out);
    PLLDATO0_buf: BUFBA
      port map (A=>PLLDATO0in_ipd, Z=>PLLDATO0out_out);
    PLLDATO1_buf: BUFBA
      port map (A=>PLLDATO1in_ipd, Z=>PLLDATO1out_out);
    PLLDATO2_buf: BUFBA
      port map (A=>PLLDATO2in_ipd, Z=>PLLDATO2out_out);
    PLLDATO3_buf: BUFBA
      port map (A=>PLLDATO3in_ipd, Z=>PLLDATO3out_out);
    PLLDATO4_buf: BUFBA
      port map (A=>PLLDATO4in_ipd, Z=>PLLDATO4out_out);
    PLLDATO5_buf: BUFBA
      port map (A=>PLLDATO5in_ipd, Z=>PLLDATO5out_out);
    PLLDATO6_buf: BUFBA
      port map (A=>PLLDATO6in_ipd, Z=>PLLDATO6out_out);
    PLLDATO7_buf: BUFBA
      port map (A=>PLLDATO7in_ipd, Z=>PLLDATO7out_out);
    CFGWAKE_buf: BUFBA
      port map (A=>CFGWAKEin_ipd, Z=>CFGWAKEout_out);
    CFGSTDBY_buf: BUFBA
      port map (A=>CFGSTDBYin_ipd, Z=>CFGSTDBYout_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(WBCLKIin_ipd, WBCLKIin, tipd_WBCLKIin);
      VitalWireDelay(WBRSTIin_ipd, WBRSTIin, tipd_WBRSTIin);
      VitalWireDelay(WBCYCIin_ipd, WBCYCIin, tipd_WBCYCIin);
      VitalWireDelay(WBSTBIin_ipd, WBSTBIin, tipd_WBSTBIin);
      VitalWireDelay(WBWEIin_ipd, WBWEIin, tipd_WBWEIin);
      VitalWireDelay(WBADRI0in_ipd, WBADRI0in, tipd_WBADRI0in);
      VitalWireDelay(WBADRI1in_ipd, WBADRI1in, tipd_WBADRI1in);
      VitalWireDelay(WBADRI2in_ipd, WBADRI2in, tipd_WBADRI2in);
      VitalWireDelay(WBADRI3in_ipd, WBADRI3in, tipd_WBADRI3in);
      VitalWireDelay(WBADRI4in_ipd, WBADRI4in, tipd_WBADRI4in);
      VitalWireDelay(WBADRI5in_ipd, WBADRI5in, tipd_WBADRI5in);
      VitalWireDelay(WBADRI6in_ipd, WBADRI6in, tipd_WBADRI6in);
      VitalWireDelay(WBADRI7in_ipd, WBADRI7in, tipd_WBADRI7in);
      VitalWireDelay(WBDATI0in_ipd, WBDATI0in, tipd_WBDATI0in);
      VitalWireDelay(WBDATI1in_ipd, WBDATI1in, tipd_WBDATI1in);
      VitalWireDelay(WBDATI2in_ipd, WBDATI2in, tipd_WBDATI2in);
      VitalWireDelay(WBDATI3in_ipd, WBDATI3in, tipd_WBDATI3in);
      VitalWireDelay(WBDATI4in_ipd, WBDATI4in, tipd_WBDATI4in);
      VitalWireDelay(WBDATI5in_ipd, WBDATI5in, tipd_WBDATI5in);
      VitalWireDelay(WBDATI6in_ipd, WBDATI6in, tipd_WBDATI6in);
      VitalWireDelay(WBDATI7in_ipd, WBDATI7in, tipd_WBDATI7in);
      VitalWireDelay(I2C1SCLIin_ipd, I2C1SCLIin, tipd_I2C1SCLIin);
      VitalWireDelay(I2C1SDAIin_ipd, I2C1SDAIin, tipd_I2C1SDAIin);
      VitalWireDelay(I2C2SCLIin_ipd, I2C2SCLIin, tipd_I2C2SCLIin);
      VitalWireDelay(I2C2SDAIin_ipd, I2C2SDAIin, tipd_I2C2SDAIin);
      VitalWireDelay(SPISCKIin_ipd, SPISCKIin, tipd_SPISCKIin);
      VitalWireDelay(SPIMISOIin_ipd, SPIMISOIin, tipd_SPIMISOIin);
      VitalWireDelay(SPIMOSIIin_ipd, SPIMOSIIin, tipd_SPIMOSIIin);
      VitalWireDelay(SPISCSNin_ipd, SPISCSNin, tipd_SPISCSNin);
      VitalWireDelay(TCCLKIin_ipd, TCCLKIin, tipd_TCCLKIin);
      VitalWireDelay(TCRSTNin_ipd, TCRSTNin, tipd_TCRSTNin);
      VitalWireDelay(TCICin_ipd, TCICin, tipd_TCICin);
      VitalWireDelay(UFMSNin_ipd, UFMSNin, tipd_UFMSNin);
      VitalWireDelay(PLL0DATI0in_ipd, PLL0DATI0in, tipd_PLL0DATI0in);
      VitalWireDelay(PLL0DATI1in_ipd, PLL0DATI1in, tipd_PLL0DATI1in);
      VitalWireDelay(PLL0DATI2in_ipd, PLL0DATI2in, tipd_PLL0DATI2in);
      VitalWireDelay(PLL0DATI3in_ipd, PLL0DATI3in, tipd_PLL0DATI3in);
      VitalWireDelay(PLL0DATI4in_ipd, PLL0DATI4in, tipd_PLL0DATI4in);
      VitalWireDelay(PLL0DATI5in_ipd, PLL0DATI5in, tipd_PLL0DATI5in);
      VitalWireDelay(PLL0DATI6in_ipd, PLL0DATI6in, tipd_PLL0DATI6in);
      VitalWireDelay(PLL0DATI7in_ipd, PLL0DATI7in, tipd_PLL0DATI7in);
      VitalWireDelay(PLL0ACKIin_ipd, PLL0ACKIin, tipd_PLL0ACKIin);
      VitalWireDelay(PLL1DATI0in_ipd, PLL1DATI0in, tipd_PLL1DATI0in);
      VitalWireDelay(PLL1DATI1in_ipd, PLL1DATI1in, tipd_PLL1DATI1in);
      VitalWireDelay(PLL1DATI2in_ipd, PLL1DATI2in, tipd_PLL1DATI2in);
      VitalWireDelay(PLL1DATI3in_ipd, PLL1DATI3in, tipd_PLL1DATI3in);
      VitalWireDelay(PLL1DATI4in_ipd, PLL1DATI4in, tipd_PLL1DATI4in);
      VitalWireDelay(PLL1DATI5in_ipd, PLL1DATI5in, tipd_PLL1DATI5in);
      VitalWireDelay(PLL1DATI6in_ipd, PLL1DATI6in, tipd_PLL1DATI6in);
      VitalWireDelay(PLL1DATI7in_ipd, PLL1DATI7in, tipd_PLL1DATI7in);
      VitalWireDelay(PLL1ACKIin_ipd, PLL1ACKIin, tipd_PLL1ACKIin);
      VitalWireDelay(WBDATO0in_ipd, WBDATO0in, tipd_WBDATO0in);
      VitalWireDelay(WBDATO1in_ipd, WBDATO1in, tipd_WBDATO1in);
      VitalWireDelay(WBDATO2in_ipd, WBDATO2in, tipd_WBDATO2in);
      VitalWireDelay(WBDATO3in_ipd, WBDATO3in, tipd_WBDATO3in);
      VitalWireDelay(WBDATO4in_ipd, WBDATO4in, tipd_WBDATO4in);
      VitalWireDelay(WBDATO5in_ipd, WBDATO5in, tipd_WBDATO5in);
      VitalWireDelay(WBDATO6in_ipd, WBDATO6in, tipd_WBDATO6in);
      VitalWireDelay(WBDATO7in_ipd, WBDATO7in, tipd_WBDATO7in);
      VitalWireDelay(WBACKOin_ipd, WBACKOin, tipd_WBACKOin);
      VitalWireDelay(WBCUFMIRQin_ipd, WBCUFMIRQin, tipd_WBCUFMIRQin);
      VitalWireDelay(I2C1SCLOin_ipd, I2C1SCLOin, tipd_I2C1SCLOin);
      VitalWireDelay(I2C1SCLOENin_ipd, I2C1SCLOENin, tipd_I2C1SCLOENin);
      VitalWireDelay(I2C1SDAOin_ipd, I2C1SDAOin, tipd_I2C1SDAOin);
      VitalWireDelay(I2C1SDAOENin_ipd, I2C1SDAOENin, tipd_I2C1SDAOENin);
      VitalWireDelay(I2C2SCLOin_ipd, I2C2SCLOin, tipd_I2C2SCLOin);
      VitalWireDelay(I2C2SCLOENin_ipd, I2C2SCLOENin, tipd_I2C2SCLOENin);
      VitalWireDelay(I2C2SDAOin_ipd, I2C2SDAOin, tipd_I2C2SDAOin);
      VitalWireDelay(I2C2SDAOENin_ipd, I2C2SDAOENin, tipd_I2C2SDAOENin);
      VitalWireDelay(I2C1IRQOin_ipd, I2C1IRQOin, tipd_I2C1IRQOin);
      VitalWireDelay(I2C2IRQOin_ipd, I2C2IRQOin, tipd_I2C2IRQOin);
      VitalWireDelay(SPISCKOin_ipd, SPISCKOin, tipd_SPISCKOin);
      VitalWireDelay(SPISCKENin_ipd, SPISCKENin, tipd_SPISCKENin);
      VitalWireDelay(SPIMISOOin_ipd, SPIMISOOin, tipd_SPIMISOOin);
      VitalWireDelay(SPIMISOENin_ipd, SPIMISOENin, tipd_SPIMISOENin);
      VitalWireDelay(SPIMOSIOin_ipd, SPIMOSIOin, tipd_SPIMOSIOin);
      VitalWireDelay(SPIMOSIENin_ipd, SPIMOSIENin, tipd_SPIMOSIENin);
      VitalWireDelay(SPIMCSN0in_ipd, SPIMCSN0in, tipd_SPIMCSN0in);
      VitalWireDelay(SPIMCSN1in_ipd, SPIMCSN1in, tipd_SPIMCSN1in);
      VitalWireDelay(SPIMCSN2in_ipd, SPIMCSN2in, tipd_SPIMCSN2in);
      VitalWireDelay(SPIMCSN3in_ipd, SPIMCSN3in, tipd_SPIMCSN3in);
      VitalWireDelay(SPIMCSN4in_ipd, SPIMCSN4in, tipd_SPIMCSN4in);
      VitalWireDelay(SPIMCSN5in_ipd, SPIMCSN5in, tipd_SPIMCSN5in);
      VitalWireDelay(SPIMCSN6in_ipd, SPIMCSN6in, tipd_SPIMCSN6in);
      VitalWireDelay(SPIMCSN7in_ipd, SPIMCSN7in, tipd_SPIMCSN7in);
      VitalWireDelay(SPICSNENin_ipd, SPICSNENin, tipd_SPICSNENin);
      VitalWireDelay(SPIIRQOin_ipd, SPIIRQOin, tipd_SPIIRQOin);
      VitalWireDelay(TCINTin_ipd, TCINTin, tipd_TCINTin);
      VitalWireDelay(TCOCin_ipd, TCOCin, tipd_TCOCin);
      VitalWireDelay(PLLCLKOin_ipd, PLLCLKOin, tipd_PLLCLKOin);
      VitalWireDelay(PLLRSTOin_ipd, PLLRSTOin, tipd_PLLRSTOin);
      VitalWireDelay(PLL0STBOin_ipd, PLL0STBOin, tipd_PLL0STBOin);
      VitalWireDelay(PLL1STBOin_ipd, PLL1STBOin, tipd_PLL1STBOin);
      VitalWireDelay(PLLWEOin_ipd, PLLWEOin, tipd_PLLWEOin);
      VitalWireDelay(PLLADRO0in_ipd, PLLADRO0in, tipd_PLLADRO0in);
      VitalWireDelay(PLLADRO1in_ipd, PLLADRO1in, tipd_PLLADRO1in);
      VitalWireDelay(PLLADRO2in_ipd, PLLADRO2in, tipd_PLLADRO2in);
      VitalWireDelay(PLLADRO3in_ipd, PLLADRO3in, tipd_PLLADRO3in);
      VitalWireDelay(PLLADRO4in_ipd, PLLADRO4in, tipd_PLLADRO4in);
      VitalWireDelay(PLLDATO0in_ipd, PLLDATO0in, tipd_PLLDATO0in);
      VitalWireDelay(PLLDATO1in_ipd, PLLDATO1in, tipd_PLLDATO1in);
      VitalWireDelay(PLLDATO2in_ipd, PLLDATO2in, tipd_PLLDATO2in);
      VitalWireDelay(PLLDATO3in_ipd, PLLDATO3in, tipd_PLLDATO3in);
      VitalWireDelay(PLLDATO4in_ipd, PLLDATO4in, tipd_PLLDATO4in);
      VitalWireDelay(PLLDATO5in_ipd, PLLDATO5in, tipd_PLLDATO5in);
      VitalWireDelay(PLLDATO6in_ipd, PLLDATO6in, tipd_PLLDATO6in);
      VitalWireDelay(PLLDATO7in_ipd, PLLDATO7in, tipd_PLLDATO7in);
      VitalWireDelay(CFGWAKEin_ipd, CFGWAKEin, tipd_CFGWAKEin);
      VitalWireDelay(CFGSTDBYin_ipd, CFGSTDBYin, tipd_CFGSTDBYin);
    END BLOCK;

    VitalBehavior : PROCESS (WBCLKIin_ipd, WBCLKIout_out, WBRSTIin_ipd, 
      WBRSTIout_out, WBCYCIin_ipd, WBCYCIout_out, WBSTBIin_ipd, WBSTBIout_out, 
      WBWEIin_ipd, WBWEIout_out, WBADRI0in_ipd, WBADRI0out_out, WBADRI1in_ipd, 
      WBADRI1out_out, WBADRI2in_ipd, WBADRI2out_out, WBADRI3in_ipd, 
      WBADRI3out_out, WBADRI4in_ipd, WBADRI4out_out, WBADRI5in_ipd, 
      WBADRI5out_out, WBADRI6in_ipd, WBADRI6out_out, WBADRI7in_ipd, 
      WBADRI7out_out, WBDATI0in_ipd, WBDATI0out_out, WBDATI1in_ipd, 
      WBDATI1out_out, WBDATI2in_ipd, WBDATI2out_out, WBDATI3in_ipd, 
      WBDATI3out_out, WBDATI4in_ipd, WBDATI4out_out, WBDATI5in_ipd, 
      WBDATI5out_out, WBDATI6in_ipd, WBDATI6out_out, WBDATI7in_ipd, 
      WBDATI7out_out, I2C1SCLIin_ipd, I2C1SCLIout_out, I2C1SDAIin_ipd, 
      I2C1SDAIout_out, I2C2SCLIin_ipd, I2C2SCLIout_out, I2C2SDAIin_ipd, 
      I2C2SDAIout_out, SPISCKIin_ipd, SPISCKIout_out, SPIMISOIin_ipd, 
      SPIMISOIout_out, SPIMOSIIin_ipd, SPIMOSIIout_out, SPISCSNin_ipd, 
      SPISCSNout_out, TCCLKIin_ipd, TCCLKIout_out, TCRSTNin_ipd, TCRSTNout_out, 
      TCICin_ipd, TCICout_out, UFMSNin_ipd, UFMSNout_out, PLL0DATI0in_ipd, 
      PLL0DATI0out_out, PLL0DATI1in_ipd, PLL0DATI1out_out, PLL0DATI2in_ipd, 
      PLL0DATI2out_out, PLL0DATI3in_ipd, PLL0DATI3out_out, PLL0DATI4in_ipd, 
      PLL0DATI4out_out, PLL0DATI5in_ipd, PLL0DATI5out_out, PLL0DATI6in_ipd, 
      PLL0DATI6out_out, PLL0DATI7in_ipd, PLL0DATI7out_out, PLL0ACKIin_ipd, 
      PLL0ACKIout_out, PLL1DATI0in_ipd, PLL1DATI0out_out, PLL1DATI1in_ipd, 
      PLL1DATI1out_out, PLL1DATI2in_ipd, PLL1DATI2out_out, PLL1DATI3in_ipd, 
      PLL1DATI3out_out, PLL1DATI4in_ipd, PLL1DATI4out_out, PLL1DATI5in_ipd, 
      PLL1DATI5out_out, PLL1DATI6in_ipd, PLL1DATI6out_out, PLL1DATI7in_ipd, 
      PLL1DATI7out_out, PLL1ACKIin_ipd, PLL1ACKIout_out, WBDATO0out_out, 
      WBDATO0in_ipd, WBDATO1out_out, WBDATO1in_ipd, WBDATO2out_out, 
      WBDATO2in_ipd, WBDATO3out_out, WBDATO3in_ipd, WBDATO4out_out, 
      WBDATO4in_ipd, WBDATO5out_out, WBDATO5in_ipd, WBDATO6out_out, 
      WBDATO6in_ipd, WBDATO7out_out, WBDATO7in_ipd, WBACKOout_out, 
      WBACKOin_ipd, WBCUFMIRQout_out, WBCUFMIRQin_ipd, I2C1SCLOout_out, 
      I2C1SCLOin_ipd, I2C1SCLOENout_out, I2C1SCLOENin_ipd, I2C1SDAOout_out, 
      I2C1SDAOin_ipd, I2C1SDAOENout_out, I2C1SDAOENin_ipd, I2C2SCLOout_out, 
      I2C2SCLOin_ipd, I2C2SCLOENout_out, I2C2SCLOENin_ipd, I2C2SDAOout_out, 
      I2C2SDAOin_ipd, I2C2SDAOENout_out, I2C2SDAOENin_ipd, I2C1IRQOout_out, 
      I2C1IRQOin_ipd, I2C2IRQOout_out, I2C2IRQOin_ipd, SPISCKOout_out, 
      SPISCKOin_ipd, SPISCKENout_out, SPISCKENin_ipd, SPIMISOOout_out, 
      SPIMISOOin_ipd, SPIMISOENout_out, SPIMISOENin_ipd, SPIMOSIOout_out, 
      SPIMOSIOin_ipd, SPIMOSIENout_out, SPIMOSIENin_ipd, SPIMCSN0out_out, 
      SPIMCSN0in_ipd, SPIMCSN1out_out, SPIMCSN1in_ipd, SPIMCSN2out_out, 
      SPIMCSN2in_ipd, SPIMCSN3out_out, SPIMCSN3in_ipd, SPIMCSN4out_out, 
      SPIMCSN4in_ipd, SPIMCSN5out_out, SPIMCSN5in_ipd, SPIMCSN6out_out, 
      SPIMCSN6in_ipd, SPIMCSN7out_out, SPIMCSN7in_ipd, SPICSNENout_out, 
      SPICSNENin_ipd, SPIIRQOout_out, SPIIRQOin_ipd, TCINTout_out, TCINTin_ipd, 
      TCOCout_out, TCOCin_ipd, PLLCLKOout_out, PLLCLKOin_ipd, PLLRSTOout_out, 
      PLLRSTOin_ipd, PLL0STBOout_out, PLL0STBOin_ipd, PLL1STBOout_out, 
      PLL1STBOin_ipd, PLLWEOout_out, PLLWEOin_ipd, PLLADRO0out_out, 
      PLLADRO0in_ipd, PLLADRO1out_out, PLLADRO1in_ipd, PLLADRO2out_out, 
      PLLADRO2in_ipd, PLLADRO3out_out, PLLADRO3in_ipd, PLLADRO4out_out, 
      PLLADRO4in_ipd, PLLDATO0out_out, PLLDATO0in_ipd, PLLDATO1out_out, 
      PLLDATO1in_ipd, PLLDATO2out_out, PLLDATO2in_ipd, PLLDATO3out_out, 
      PLLDATO3in_ipd, PLLDATO4out_out, PLLDATO4in_ipd, PLLDATO5out_out, 
      PLLDATO5in_ipd, PLLDATO6out_out, PLLDATO6in_ipd, PLLDATO7out_out, 
      PLLDATO7in_ipd, CFGWAKEout_out, CFGWAKEin_ipd, CFGSTDBYout_out, 
      CFGSTDBYin_ipd)
    VARIABLE TCOCout_zd         	: std_logic := 'X';
    VARIABLE TCOCout_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_TCCLKIin_TCCLKIin          	: x01 := '0';
    VARIABLE periodcheckinfo_TCCLKIin	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => TCCLKIin_ipd,
        TestSignalName => "TCCLKIin",
        Period => tperiod_TCCLKIin,
        PulseWidthHigh => tpw_TCCLKIin_posedge,
        PulseWidthLow => tpw_TCCLKIin_negedge,
        PeriodData => periodcheckinfo_TCCLKIin,
        Violation => tviol_TCCLKIin_TCCLKIin,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    WBCLKIout 	<= WBCLKIout_out;
    WBRSTIout 	<= WBRSTIout_out;
    WBCYCIout 	<= WBCYCIout_out;
    WBSTBIout 	<= WBSTBIout_out;
    WBWEIout 	<= WBWEIout_out;
    WBADRI0out 	<= WBADRI0out_out;
    WBADRI1out 	<= WBADRI1out_out;
    WBADRI2out 	<= WBADRI2out_out;
    WBADRI3out 	<= WBADRI3out_out;
    WBADRI4out 	<= WBADRI4out_out;
    WBADRI5out 	<= WBADRI5out_out;
    WBADRI6out 	<= WBADRI6out_out;
    WBADRI7out 	<= WBADRI7out_out;
    WBDATI0out 	<= WBDATI0out_out;
    WBDATI1out 	<= WBDATI1out_out;
    WBDATI2out 	<= WBDATI2out_out;
    WBDATI3out 	<= WBDATI3out_out;
    WBDATI4out 	<= WBDATI4out_out;
    WBDATI5out 	<= WBDATI5out_out;
    WBDATI6out 	<= WBDATI6out_out;
    WBDATI7out 	<= WBDATI7out_out;
    I2C1SCLIout 	<= I2C1SCLIout_out;
    I2C1SDAIout 	<= I2C1SDAIout_out;
    I2C2SCLIout 	<= I2C2SCLIout_out;
    I2C2SDAIout 	<= I2C2SDAIout_out;
    SPISCKIout 	<= SPISCKIout_out;
    SPIMISOIout 	<= SPIMISOIout_out;
    SPIMOSIIout 	<= SPIMOSIIout_out;
    SPISCSNout 	<= SPISCSNout_out;
    TCCLKIout 	<= TCCLKIout_out;
    TCRSTNout 	<= TCRSTNout_out;
    TCICout 	<= TCICout_out;
    UFMSNout 	<= UFMSNout_out;
    PLL0DATI0out 	<= PLL0DATI0out_out;
    PLL0DATI1out 	<= PLL0DATI1out_out;
    PLL0DATI2out 	<= PLL0DATI2out_out;
    PLL0DATI3out 	<= PLL0DATI3out_out;
    PLL0DATI4out 	<= PLL0DATI4out_out;
    PLL0DATI5out 	<= PLL0DATI5out_out;
    PLL0DATI6out 	<= PLL0DATI6out_out;
    PLL0DATI7out 	<= PLL0DATI7out_out;
    PLL0ACKIout 	<= PLL0ACKIout_out;
    PLL1DATI0out 	<= PLL1DATI0out_out;
    PLL1DATI1out 	<= PLL1DATI1out_out;
    PLL1DATI2out 	<= PLL1DATI2out_out;
    PLL1DATI3out 	<= PLL1DATI3out_out;
    PLL1DATI4out 	<= PLL1DATI4out_out;
    PLL1DATI5out 	<= PLL1DATI5out_out;
    PLL1DATI6out 	<= PLL1DATI6out_out;
    PLL1DATI7out 	<= PLL1DATI7out_out;
    PLL1ACKIout 	<= PLL1ACKIout_out;
    WBDATO0out 	<= WBDATO0out_out;
    WBDATO1out 	<= WBDATO1out_out;
    WBDATO2out 	<= WBDATO2out_out;
    WBDATO3out 	<= WBDATO3out_out;
    WBDATO4out 	<= WBDATO4out_out;
    WBDATO5out 	<= WBDATO5out_out;
    WBDATO6out 	<= WBDATO6out_out;
    WBDATO7out 	<= WBDATO7out_out;
    WBACKOout 	<= WBACKOout_out;
    WBCUFMIRQout 	<= WBCUFMIRQout_out;
    I2C1SCLOout 	<= I2C1SCLOout_out;
    I2C1SCLOENout 	<= I2C1SCLOENout_out;
    I2C1SDAOout 	<= I2C1SDAOout_out;
    I2C1SDAOENout 	<= I2C1SDAOENout_out;
    I2C2SCLOout 	<= I2C2SCLOout_out;
    I2C2SCLOENout 	<= I2C2SCLOENout_out;
    I2C2SDAOout 	<= I2C2SDAOout_out;
    I2C2SDAOENout 	<= I2C2SDAOENout_out;
    I2C1IRQOout 	<= I2C1IRQOout_out;
    I2C2IRQOout 	<= I2C2IRQOout_out;
    SPISCKOout 	<= SPISCKOout_out;
    SPISCKENout 	<= SPISCKENout_out;
    SPIMISOOout 	<= SPIMISOOout_out;
    SPIMISOENout 	<= SPIMISOENout_out;
    SPIMOSIOout 	<= SPIMOSIOout_out;
    SPIMOSIENout 	<= SPIMOSIENout_out;
    SPIMCSN0out 	<= SPIMCSN0out_out;
    SPIMCSN1out 	<= SPIMCSN1out_out;
    SPIMCSN2out 	<= SPIMCSN2out_out;
    SPIMCSN3out 	<= SPIMCSN3out_out;
    SPIMCSN4out 	<= SPIMCSN4out_out;
    SPIMCSN5out 	<= SPIMCSN5out_out;
    SPIMCSN6out 	<= SPIMCSN6out_out;
    SPIMCSN7out 	<= SPIMCSN7out_out;
    SPICSNENout 	<= SPICSNENout_out;
    SPIIRQOout 	<= SPIIRQOout_out;
    TCINTout 	<= TCINTout_out;
    TCOCout_zd 	:= TCOCout_out;
    PLLCLKOout 	<= PLLCLKOout_out;
    PLLRSTOout 	<= PLLRSTOout_out;
    PLL0STBOout 	<= PLL0STBOout_out;
    PLL1STBOout 	<= PLL1STBOout_out;
    PLLWEOout 	<= PLLWEOout_out;
    PLLADRO0out 	<= PLLADRO0out_out;
    PLLADRO1out 	<= PLLADRO1out_out;
    PLLADRO2out 	<= PLLADRO2out_out;
    PLLADRO3out 	<= PLLADRO3out_out;
    PLLADRO4out 	<= PLLADRO4out_out;
    PLLDATO0out 	<= PLLDATO0out_out;
    PLLDATO1out 	<= PLLDATO1out_out;
    PLLDATO2out 	<= PLLDATO2out_out;
    PLLDATO3out 	<= PLLDATO3out_out;
    PLLDATO4out 	<= PLLDATO4out_out;
    PLLDATO5out 	<= PLLDATO5out_out;
    PLLDATO6out 	<= PLLDATO6out_out;
    PLLDATO7out 	<= PLLDATO7out_out;
    CFGWAKEout 	<= CFGWAKEout_out;
    CFGSTDBYout 	<= CFGSTDBYout_out;

    VitalPathDelay01 (
      OutSignal => TCOCout, OutSignalName => "TCOCout", OutTemp => TCOCout_zd,
      Paths      => (0 => (InputChangeTime => TCCLKIin_ipd'last_event,
                           PathDelay => tpd_TCCLKIin_TCOCout,
                           PathCondition => TRUE)),
      GlitchData => TCOCout_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity EFBB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity EFBB is
    port (WBCLKI: in Std_logic; WBRSTI: in Std_logic; WBCYCI: in Std_logic; 
          WBSTBI: in Std_logic; WBWEI: in Std_logic; WBADRI0: in Std_logic; 
          WBADRI1: in Std_logic; WBADRI2: in Std_logic; WBADRI3: in Std_logic; 
          WBADRI4: in Std_logic; WBADRI5: in Std_logic; WBADRI6: in Std_logic; 
          WBADRI7: in Std_logic; WBDATI0: in Std_logic; WBDATI1: in Std_logic; 
          WBDATI2: in Std_logic; WBDATI3: in Std_logic; WBDATI4: in Std_logic; 
          WBDATI5: in Std_logic; WBDATI6: in Std_logic; WBDATI7: in Std_logic; 
          WBDATO0: out Std_logic; WBDATO1: out Std_logic; 
          WBDATO2: out Std_logic; WBDATO3: out Std_logic; 
          WBDATO4: out Std_logic; WBDATO5: out Std_logic; 
          WBDATO6: out Std_logic; WBDATO7: out Std_logic; 
          WBACKO: out Std_logic; WBCUFMIRQ: out Std_logic; UFMSN: in Std_logic; 
          CFGWAKE: out Std_logic; CFGSTDBY: out Std_logic; 
          I2C1SCLI: in Std_logic; I2C1SCLO: out Std_logic; 
          I2C1SCLOEN: out Std_logic; I2C1SDAI: in Std_logic; 
          I2C1SDAO: out Std_logic; I2C1SDAOEN: out Std_logic; 
          I2C2SCLI: in Std_logic; I2C2SCLO: out Std_logic; 
          I2C2SCLOEN: out Std_logic; I2C2SDAI: in Std_logic; 
          I2C2SDAO: out Std_logic; I2C2SDAOEN: out Std_logic; 
          I2C1IRQO: out Std_logic; I2C2IRQO: out Std_logic; 
          SPISCKI: in Std_logic; SPISCKO: out Std_logic; 
          SPISCKEN: out Std_logic; SPIMISOI: in Std_logic; 
          SPIMISOO: out Std_logic; SPIMISOEN: out Std_logic; 
          SPIMOSII: in Std_logic; SPIMOSIO: out Std_logic; 
          SPIMOSIEN: out Std_logic; SPIMCSN0: out Std_logic; 
          SPIMCSN1: out Std_logic; SPIMCSN2: out Std_logic; 
          SPIMCSN3: out Std_logic; SPIMCSN4: out Std_logic; 
          SPIMCSN5: out Std_logic; SPIMCSN6: out Std_logic; 
          SPIMCSN7: out Std_logic; SPICSNEN: out Std_logic; 
          SPISCSN: in Std_logic; SPIIRQO: out Std_logic; TCCLKI: in Std_logic; 
          TCRSTN: in Std_logic; TCIC: in Std_logic; TCINT: out Std_logic; 
          TCOC: out Std_logic; PLLCLKO: out Std_logic; PLLRSTO: out Std_logic; 
          PLL0STBO: out Std_logic; PLL1STBO: out Std_logic; 
          PLLWEO: out Std_logic; PLLADRO0: out Std_logic; 
          PLLADRO1: out Std_logic; PLLADRO2: out Std_logic; 
          PLLADRO3: out Std_logic; PLLADRO4: out Std_logic; 
          PLLDATO0: out Std_logic; PLLDATO1: out Std_logic; 
          PLLDATO2: out Std_logic; PLLDATO3: out Std_logic; 
          PLLDATO4: out Std_logic; PLLDATO5: out Std_logic; 
          PLLDATO6: out Std_logic; PLLDATO7: out Std_logic; 
          PLL0DATI0: in Std_logic; PLL0DATI1: in Std_logic; 
          PLL0DATI2: in Std_logic; PLL0DATI3: in Std_logic; 
          PLL0DATI4: in Std_logic; PLL0DATI5: in Std_logic; 
          PLL0DATI6: in Std_logic; PLL0DATI7: in Std_logic; 
          PLL0ACKI: in Std_logic; PLL1DATI0: in Std_logic; 
          PLL1DATI1: in Std_logic; PLL1DATI2: in Std_logic; 
          PLL1DATI3: in Std_logic; PLL1DATI4: in Std_logic; 
          PLL1DATI5: in Std_logic; PLL1DATI6: in Std_logic; 
          PLL1DATI7: in Std_logic; PLL1ACKI: in Std_logic);



  end EFBB;

  architecture Structure of EFBB is
    signal WBCLKI_buf: Std_logic;
    signal WBRSTI_buf: Std_logic;
    signal WBCYCI_buf: Std_logic;
    signal WBSTBI_buf: Std_logic;
    signal WBWEI_buf: Std_logic;
    signal WBADRI0_buf: Std_logic;
    signal WBADRI1_buf: Std_logic;
    signal WBADRI2_buf: Std_logic;
    signal WBADRI3_buf: Std_logic;
    signal WBADRI4_buf: Std_logic;
    signal WBADRI5_buf: Std_logic;
    signal WBADRI6_buf: Std_logic;
    signal WBADRI7_buf: Std_logic;
    signal WBDATI0_buf: Std_logic;
    signal WBDATI1_buf: Std_logic;
    signal WBDATI2_buf: Std_logic;
    signal WBDATI3_buf: Std_logic;
    signal WBDATI4_buf: Std_logic;
    signal WBDATI5_buf: Std_logic;
    signal WBDATI6_buf: Std_logic;
    signal WBDATI7_buf: Std_logic;
    signal I2C1SCLI_buf: Std_logic;
    signal I2C1SDAI_buf: Std_logic;
    signal I2C2SCLI_buf: Std_logic;
    signal I2C2SDAI_buf: Std_logic;
    signal SPISCKI_buf: Std_logic;
    signal SPIMISOI_buf: Std_logic;
    signal SPIMOSII_buf: Std_logic;
    signal SPISCSN_buf: Std_logic;
    signal TCCLKI_buf: Std_logic;
    signal TCRSTN_buf: Std_logic;
    signal TCIC_buf: Std_logic;
    signal UFMSN_buf: Std_logic;
    signal PLL0DATI0_buf: Std_logic;
    signal PLL0DATI1_buf: Std_logic;
    signal PLL0DATI2_buf: Std_logic;
    signal PLL0DATI3_buf: Std_logic;
    signal PLL0DATI4_buf: Std_logic;
    signal PLL0DATI5_buf: Std_logic;
    signal PLL0DATI6_buf: Std_logic;
    signal PLL0DATI7_buf: Std_logic;
    signal PLL0ACKI_buf: Std_logic;
    signal PLL1DATI0_buf: Std_logic;
    signal PLL1DATI1_buf: Std_logic;
    signal PLL1DATI2_buf: Std_logic;
    signal PLL1DATI3_buf: Std_logic;
    signal PLL1DATI4_buf: Std_logic;
    signal PLL1DATI5_buf: Std_logic;
    signal PLL1DATI6_buf: Std_logic;
    signal PLL1DATI7_buf: Std_logic;
    signal PLL1ACKI_buf: Std_logic;
    signal WBDATO0_buf: Std_logic;
    signal WBDATO1_buf: Std_logic;
    signal WBDATO2_buf: Std_logic;
    signal WBDATO3_buf: Std_logic;
    signal WBDATO4_buf: Std_logic;
    signal WBDATO5_buf: Std_logic;
    signal WBDATO6_buf: Std_logic;
    signal WBDATO7_buf: Std_logic;
    signal WBACKO_buf: Std_logic;
    signal WBCUFMIRQ_buf: Std_logic;
    signal I2C1SCLO_buf: Std_logic;
    signal I2C1SCLOEN_buf: Std_logic;
    signal I2C1SDAO_buf: Std_logic;
    signal I2C1SDAOEN_buf: Std_logic;
    signal I2C2SCLO_buf: Std_logic;
    signal I2C2SCLOEN_buf: Std_logic;
    signal I2C2SDAO_buf: Std_logic;
    signal I2C2SDAOEN_buf: Std_logic;
    signal I2C1IRQO_buf: Std_logic;
    signal I2C2IRQO_buf: Std_logic;
    signal SPISCKO_buf: Std_logic;
    signal SPISCKEN_buf: Std_logic;
    signal SPIMISOO_buf: Std_logic;
    signal SPIMISOEN_buf: Std_logic;
    signal SPIMOSIO_buf: Std_logic;
    signal SPIMOSIEN_buf: Std_logic;
    signal SPIMCSN0_buf: Std_logic;
    signal SPIMCSN1_buf: Std_logic;
    signal SPIMCSN2_buf: Std_logic;
    signal SPIMCSN3_buf: Std_logic;
    signal SPIMCSN4_buf: Std_logic;
    signal SPIMCSN5_buf: Std_logic;
    signal SPIMCSN6_buf: Std_logic;
    signal SPIMCSN7_buf: Std_logic;
    signal SPICSNEN_buf: Std_logic;
    signal SPIIRQO_buf: Std_logic;
    signal TCINT_buf: Std_logic;
    signal TCOC_buf: Std_logic;
    signal PLLCLKO_buf: Std_logic;
    signal PLLRSTO_buf: Std_logic;
    signal PLL0STBO_buf: Std_logic;
    signal PLL1STBO_buf: Std_logic;
    signal PLLWEO_buf: Std_logic;
    signal PLLADRO0_buf: Std_logic;
    signal PLLADRO1_buf: Std_logic;
    signal PLLADRO2_buf: Std_logic;
    signal PLLADRO3_buf: Std_logic;
    signal PLLADRO4_buf: Std_logic;
    signal PLLDATO0_buf: Std_logic;
    signal PLLDATO1_buf: Std_logic;
    signal PLLDATO2_buf: Std_logic;
    signal PLLDATO3_buf: Std_logic;
    signal PLLDATO4_buf: Std_logic;
    signal PLLDATO5_buf: Std_logic;
    signal PLLDATO6_buf: Std_logic;
    signal PLLDATO7_buf: Std_logic;
    signal CFGWAKE_buf: Std_logic;
    signal CFGSTDBY_buf: Std_logic;
    component EFB_Buffer_Block
      port (WBCLKIin: in Std_logic; WBCLKIout: out Std_logic; 
            WBRSTIin: in Std_logic; WBRSTIout: out Std_logic; 
            WBCYCIin: in Std_logic; WBCYCIout: out Std_logic; 
            WBSTBIin: in Std_logic; WBSTBIout: out Std_logic; 
            WBWEIin: in Std_logic; WBWEIout: out Std_logic; 
            WBADRI0in: in Std_logic; WBADRI0out: out Std_logic; 
            WBADRI1in: in Std_logic; WBADRI1out: out Std_logic; 
            WBADRI2in: in Std_logic; WBADRI2out: out Std_logic; 
            WBADRI3in: in Std_logic; WBADRI3out: out Std_logic; 
            WBADRI4in: in Std_logic; WBADRI4out: out Std_logic; 
            WBADRI5in: in Std_logic; WBADRI5out: out Std_logic; 
            WBADRI6in: in Std_logic; WBADRI6out: out Std_logic; 
            WBADRI7in: in Std_logic; WBADRI7out: out Std_logic; 
            WBDATI0in: in Std_logic; WBDATI0out: out Std_logic; 
            WBDATI1in: in Std_logic; WBDATI1out: out Std_logic; 
            WBDATI2in: in Std_logic; WBDATI2out: out Std_logic; 
            WBDATI3in: in Std_logic; WBDATI3out: out Std_logic; 
            WBDATI4in: in Std_logic; WBDATI4out: out Std_logic; 
            WBDATI5in: in Std_logic; WBDATI5out: out Std_logic; 
            WBDATI6in: in Std_logic; WBDATI6out: out Std_logic; 
            WBDATI7in: in Std_logic; WBDATI7out: out Std_logic; 
            I2C1SCLIin: in Std_logic; I2C1SCLIout: out Std_logic; 
            I2C1SDAIin: in Std_logic; I2C1SDAIout: out Std_logic; 
            I2C2SCLIin: in Std_logic; I2C2SCLIout: out Std_logic; 
            I2C2SDAIin: in Std_logic; I2C2SDAIout: out Std_logic; 
            SPISCKIin: in Std_logic; SPISCKIout: out Std_logic; 
            SPIMISOIin: in Std_logic; SPIMISOIout: out Std_logic; 
            SPIMOSIIin: in Std_logic; SPIMOSIIout: out Std_logic; 
            SPISCSNin: in Std_logic; SPISCSNout: out Std_logic; 
            TCCLKIin: in Std_logic; TCCLKIout: out Std_logic; 
            TCRSTNin: in Std_logic; TCRSTNout: out Std_logic; 
            TCICin: in Std_logic; TCICout: out Std_logic; 
            UFMSNin: in Std_logic; UFMSNout: out Std_logic; 
            PLL0DATI0in: in Std_logic; PLL0DATI0out: out Std_logic; 
            PLL0DATI1in: in Std_logic; PLL0DATI1out: out Std_logic; 
            PLL0DATI2in: in Std_logic; PLL0DATI2out: out Std_logic; 
            PLL0DATI3in: in Std_logic; PLL0DATI3out: out Std_logic; 
            PLL0DATI4in: in Std_logic; PLL0DATI4out: out Std_logic; 
            PLL0DATI5in: in Std_logic; PLL0DATI5out: out Std_logic; 
            PLL0DATI6in: in Std_logic; PLL0DATI6out: out Std_logic; 
            PLL0DATI7in: in Std_logic; PLL0DATI7out: out Std_logic; 
            PLL0ACKIin: in Std_logic; PLL0ACKIout: out Std_logic; 
            PLL1DATI0in: in Std_logic; PLL1DATI0out: out Std_logic; 
            PLL1DATI1in: in Std_logic; PLL1DATI1out: out Std_logic; 
            PLL1DATI2in: in Std_logic; PLL1DATI2out: out Std_logic; 
            PLL1DATI3in: in Std_logic; PLL1DATI3out: out Std_logic; 
            PLL1DATI4in: in Std_logic; PLL1DATI4out: out Std_logic; 
            PLL1DATI5in: in Std_logic; PLL1DATI5out: out Std_logic; 
            PLL1DATI6in: in Std_logic; PLL1DATI6out: out Std_logic; 
            PLL1DATI7in: in Std_logic; PLL1DATI7out: out Std_logic; 
            PLL1ACKIin: in Std_logic; PLL1ACKIout: out Std_logic; 
            WBDATO0out: out Std_logic; WBDATO0in: in Std_logic; 
            WBDATO1out: out Std_logic; WBDATO1in: in Std_logic; 
            WBDATO2out: out Std_logic; WBDATO2in: in Std_logic; 
            WBDATO3out: out Std_logic; WBDATO3in: in Std_logic; 
            WBDATO4out: out Std_logic; WBDATO4in: in Std_logic; 
            WBDATO5out: out Std_logic; WBDATO5in: in Std_logic; 
            WBDATO6out: out Std_logic; WBDATO6in: in Std_logic; 
            WBDATO7out: out Std_logic; WBDATO7in: in Std_logic; 
            WBACKOout: out Std_logic; WBACKOin: in Std_logic; 
            WBCUFMIRQout: out Std_logic; WBCUFMIRQin: in Std_logic; 
            I2C1SCLOout: out Std_logic; I2C1SCLOin: in Std_logic; 
            I2C1SCLOENout: out Std_logic; I2C1SCLOENin: in Std_logic; 
            I2C1SDAOout: out Std_logic; I2C1SDAOin: in Std_logic; 
            I2C1SDAOENout: out Std_logic; I2C1SDAOENin: in Std_logic; 
            I2C2SCLOout: out Std_logic; I2C2SCLOin: in Std_logic; 
            I2C2SCLOENout: out Std_logic; I2C2SCLOENin: in Std_logic; 
            I2C2SDAOout: out Std_logic; I2C2SDAOin: in Std_logic; 
            I2C2SDAOENout: out Std_logic; I2C2SDAOENin: in Std_logic; 
            I2C1IRQOout: out Std_logic; I2C1IRQOin: in Std_logic; 
            I2C2IRQOout: out Std_logic; I2C2IRQOin: in Std_logic; 
            SPISCKOout: out Std_logic; SPISCKOin: in Std_logic; 
            SPISCKENout: out Std_logic; SPISCKENin: in Std_logic; 
            SPIMISOOout: out Std_logic; SPIMISOOin: in Std_logic; 
            SPIMISOENout: out Std_logic; SPIMISOENin: in Std_logic; 
            SPIMOSIOout: out Std_logic; SPIMOSIOin: in Std_logic; 
            SPIMOSIENout: out Std_logic; SPIMOSIENin: in Std_logic; 
            SPIMCSN0out: out Std_logic; SPIMCSN0in: in Std_logic; 
            SPIMCSN1out: out Std_logic; SPIMCSN1in: in Std_logic; 
            SPIMCSN2out: out Std_logic; SPIMCSN2in: in Std_logic; 
            SPIMCSN3out: out Std_logic; SPIMCSN3in: in Std_logic; 
            SPIMCSN4out: out Std_logic; SPIMCSN4in: in Std_logic; 
            SPIMCSN5out: out Std_logic; SPIMCSN5in: in Std_logic; 
            SPIMCSN6out: out Std_logic; SPIMCSN6in: in Std_logic; 
            SPIMCSN7out: out Std_logic; SPIMCSN7in: in Std_logic; 
            SPICSNENout: out Std_logic; SPICSNENin: in Std_logic; 
            SPIIRQOout: out Std_logic; SPIIRQOin: in Std_logic; 
            TCINTout: out Std_logic; TCINTin: in Std_logic; 
            TCOCout: out Std_logic; TCOCin: in Std_logic; 
            PLLCLKOout: out Std_logic; PLLCLKOin: in Std_logic; 
            PLLRSTOout: out Std_logic; PLLRSTOin: in Std_logic; 
            PLL0STBOout: out Std_logic; PLL0STBOin: in Std_logic; 
            PLL1STBOout: out Std_logic; PLL1STBOin: in Std_logic; 
            PLLWEOout: out Std_logic; PLLWEOin: in Std_logic; 
            PLLADRO0out: out Std_logic; PLLADRO0in: in Std_logic; 
            PLLADRO1out: out Std_logic; PLLADRO1in: in Std_logic; 
            PLLADRO2out: out Std_logic; PLLADRO2in: in Std_logic; 
            PLLADRO3out: out Std_logic; PLLADRO3in: in Std_logic; 
            PLLADRO4out: out Std_logic; PLLADRO4in: in Std_logic; 
            PLLDATO0out: out Std_logic; PLLDATO0in: in Std_logic; 
            PLLDATO1out: out Std_logic; PLLDATO1in: in Std_logic; 
            PLLDATO2out: out Std_logic; PLLDATO2in: in Std_logic; 
            PLLDATO3out: out Std_logic; PLLDATO3in: in Std_logic; 
            PLLDATO4out: out Std_logic; PLLDATO4in: in Std_logic; 
            PLLDATO5out: out Std_logic; PLLDATO5in: in Std_logic; 
            PLLDATO6out: out Std_logic; PLLDATO6in: in Std_logic; 
            PLLDATO7out: out Std_logic; PLLDATO7in: in Std_logic; 
            CFGWAKEout: out Std_logic; CFGWAKEin: in Std_logic; 
            CFGSTDBYout: out Std_logic; CFGSTDBYin: in Std_logic);
    end component;
  begin
    INST10: EFB
      generic map (DEV_DENSITY => "256L", EFB_I2C1 => "DISABLED", 
                   EFB_I2C2 => "DISABLED", EFB_SPI => "DISABLED", 
                   EFB_TC => "ENABLED", EFB_TC_PORTMODE => "NO_WB", 
                   EFB_UFM => "DISABLED", EFB_WB_CLK_FREQ => "50.0", 
                   GSR => "ENABLED", I2C1_ADDRESSING => "7BIT", 
                   I2C1_BUS_PERF => "100kHz", I2C1_CLK_DIVIDER => 1, 
                   I2C1_GEN_CALL => "DISABLED", I2C1_SLAVE_ADDR => "0b1000001", 
                   I2C1_WAKEUP => "DISABLED", I2C2_ADDRESSING => "7BIT", 
                   I2C2_BUS_PERF => "100kHz", I2C2_CLK_DIVIDER => 1, 
                   I2C2_GEN_CALL => "DISABLED", I2C2_SLAVE_ADDR => "0b1000010", 
                   I2C2_WAKEUP => "DISABLED", SPI_CLK_DIVIDER => 1, 
                   SPI_CLK_INV => "DISABLED", SPI_INTR_RXOVR => "DISABLED", 
                   SPI_INTR_RXRDY => "DISABLED", SPI_INTR_TXOVR => "DISABLED", 
                   SPI_INTR_TXRDY => "DISABLED", SPI_LSB_FIRST => "DISABLED", 
                   SPI_MODE => "MASTER", SPI_PHASE_ADJ => "DISABLED", 
                   SPI_SLAVE_HANDSHAKE => "DISABLED", SPI_WAKEUP => "DISABLED", 
                   TC_CCLK_SEL => 1, TC_ICAPTURE => "DISABLED", 
                   TC_ICR_INT => "OFF", TC_MODE => "CTCM", TC_OCR_INT => "OFF", 
                   TC_OCR_SET => 32767, TC_OC_MODE => "TOGGLE", 
                   TC_OVERFLOW => "DISABLED", TC_OV_INT => "OFF", 
                   TC_RESETN => "ENABLED", TC_SCLK_SEL => "PCLOCK", 
                   TC_TOP_SEL => "ON", TC_TOP_SET => 5200, 
                   UFM_INIT_ALL_ZEROS => "ENABLED", 
                   UFM_INIT_FILE_FORMAT => "HEX", UFM_INIT_FILE_NAME => "NONE", 
                   UFM_INIT_PAGES => 0, UFM_INIT_START_PAGE => 0)
      port map (WBCLKI=>WBCLKI_buf, WBRSTI=>WBRSTI_buf, WBCYCI=>WBCYCI_buf, 
                WBSTBI=>WBSTBI_buf, WBWEI=>WBWEI_buf, WBADRI0=>WBADRI0_buf, 
                WBADRI1=>WBADRI1_buf, WBADRI2=>WBADRI2_buf, 
                WBADRI3=>WBADRI3_buf, WBADRI4=>WBADRI4_buf, 
                WBADRI5=>WBADRI5_buf, WBADRI6=>WBADRI6_buf, 
                WBADRI7=>WBADRI7_buf, WBDATI0=>WBDATI0_buf, 
                WBDATI1=>WBDATI1_buf, WBDATI2=>WBDATI2_buf, 
                WBDATI3=>WBDATI3_buf, WBDATI4=>WBDATI4_buf, 
                WBDATI5=>WBDATI5_buf, WBDATI6=>WBDATI6_buf, 
                WBDATI7=>WBDATI7_buf, I2C1SCLI=>I2C1SCLI_buf, 
                I2C1SDAI=>I2C1SDAI_buf, I2C2SCLI=>I2C2SCLI_buf, 
                I2C2SDAI=>I2C2SDAI_buf, SPISCKI=>SPISCKI_buf, 
                SPIMISOI=>SPIMISOI_buf, SPIMOSII=>SPIMOSII_buf, 
                SPISCSN=>SPISCSN_buf, TCCLKI=>TCCLKI_buf, TCRSTN=>TCRSTN_buf, 
                TCIC=>TCIC_buf, UFMSN=>UFMSN_buf, PLL0DATI0=>PLL0DATI0_buf, 
                PLL0DATI1=>PLL0DATI1_buf, PLL0DATI2=>PLL0DATI2_buf, 
                PLL0DATI3=>PLL0DATI3_buf, PLL0DATI4=>PLL0DATI4_buf, 
                PLL0DATI5=>PLL0DATI5_buf, PLL0DATI6=>PLL0DATI6_buf, 
                PLL0DATI7=>PLL0DATI7_buf, PLL0ACKI=>PLL0ACKI_buf, 
                PLL1DATI0=>PLL1DATI0_buf, PLL1DATI1=>PLL1DATI1_buf, 
                PLL1DATI2=>PLL1DATI2_buf, PLL1DATI3=>PLL1DATI3_buf, 
                PLL1DATI4=>PLL1DATI4_buf, PLL1DATI5=>PLL1DATI5_buf, 
                PLL1DATI6=>PLL1DATI6_buf, PLL1DATI7=>PLL1DATI7_buf, 
                PLL1ACKI=>PLL1ACKI_buf, WBDATO0=>WBDATO0_buf, 
                WBDATO1=>WBDATO1_buf, WBDATO2=>WBDATO2_buf, 
                WBDATO3=>WBDATO3_buf, WBDATO4=>WBDATO4_buf, 
                WBDATO5=>WBDATO5_buf, WBDATO6=>WBDATO6_buf, 
                WBDATO7=>WBDATO7_buf, WBACKO=>WBACKO_buf, 
                WBCUFMIRQ=>WBCUFMIRQ_buf, I2C1SCLO=>I2C1SCLO_buf, 
                I2C1SCLOEN=>I2C1SCLOEN_buf, I2C1SDAO=>I2C1SDAO_buf, 
                I2C1SDAOEN=>I2C1SDAOEN_buf, I2C2SCLO=>I2C2SCLO_buf, 
                I2C2SCLOEN=>I2C2SCLOEN_buf, I2C2SDAO=>I2C2SDAO_buf, 
                I2C2SDAOEN=>I2C2SDAOEN_buf, I2C1IRQO=>I2C1IRQO_buf, 
                I2C2IRQO=>I2C2IRQO_buf, SPISCKO=>SPISCKO_buf, 
                SPISCKEN=>SPISCKEN_buf, SPIMISOO=>SPIMISOO_buf, 
                SPIMISOEN=>SPIMISOEN_buf, SPIMOSIO=>SPIMOSIO_buf, 
                SPIMOSIEN=>SPIMOSIEN_buf, SPIMCSN0=>SPIMCSN0_buf, 
                SPIMCSN1=>SPIMCSN1_buf, SPIMCSN2=>SPIMCSN2_buf, 
                SPIMCSN3=>SPIMCSN3_buf, SPIMCSN4=>SPIMCSN4_buf, 
                SPIMCSN5=>SPIMCSN5_buf, SPIMCSN6=>SPIMCSN6_buf, 
                SPIMCSN7=>SPIMCSN7_buf, SPICSNEN=>SPICSNEN_buf, 
                SPIIRQO=>SPIIRQO_buf, TCINT=>TCINT_buf, TCOC=>TCOC_buf, 
                PLLCLKO=>PLLCLKO_buf, PLLRSTO=>PLLRSTO_buf, 
                PLL0STBO=>PLL0STBO_buf, PLL1STBO=>PLL1STBO_buf, 
                PLLWEO=>PLLWEO_buf, PLLADRO0=>PLLADRO0_buf, 
                PLLADRO1=>PLLADRO1_buf, PLLADRO2=>PLLADRO2_buf, 
                PLLADRO3=>PLLADRO3_buf, PLLADRO4=>PLLADRO4_buf, 
                PLLDATO0=>PLLDATO0_buf, PLLDATO1=>PLLDATO1_buf, 
                PLLDATO2=>PLLDATO2_buf, PLLDATO3=>PLLDATO3_buf, 
                PLLDATO4=>PLLDATO4_buf, PLLDATO5=>PLLDATO5_buf, 
                PLLDATO6=>PLLDATO6_buf, PLLDATO7=>PLLDATO7_buf, 
                CFGWAKE=>CFGWAKE_buf, CFGSTDBY=>CFGSTDBY_buf);
    INST20: EFB_Buffer_Block
      port map (WBCLKIin=>WBCLKI, WBCLKIout=>WBCLKI_buf, WBRSTIin=>WBRSTI, 
                WBRSTIout=>WBRSTI_buf, WBCYCIin=>WBCYCI, WBCYCIout=>WBCYCI_buf, 
                WBSTBIin=>WBSTBI, WBSTBIout=>WBSTBI_buf, WBWEIin=>WBWEI, 
                WBWEIout=>WBWEI_buf, WBADRI0in=>WBADRI0, 
                WBADRI0out=>WBADRI0_buf, WBADRI1in=>WBADRI1, 
                WBADRI1out=>WBADRI1_buf, WBADRI2in=>WBADRI2, 
                WBADRI2out=>WBADRI2_buf, WBADRI3in=>WBADRI3, 
                WBADRI3out=>WBADRI3_buf, WBADRI4in=>WBADRI4, 
                WBADRI4out=>WBADRI4_buf, WBADRI5in=>WBADRI5, 
                WBADRI5out=>WBADRI5_buf, WBADRI6in=>WBADRI6, 
                WBADRI6out=>WBADRI6_buf, WBADRI7in=>WBADRI7, 
                WBADRI7out=>WBADRI7_buf, WBDATI0in=>WBDATI0, 
                WBDATI0out=>WBDATI0_buf, WBDATI1in=>WBDATI1, 
                WBDATI1out=>WBDATI1_buf, WBDATI2in=>WBDATI2, 
                WBDATI2out=>WBDATI2_buf, WBDATI3in=>WBDATI3, 
                WBDATI3out=>WBDATI3_buf, WBDATI4in=>WBDATI4, 
                WBDATI4out=>WBDATI4_buf, WBDATI5in=>WBDATI5, 
                WBDATI5out=>WBDATI5_buf, WBDATI6in=>WBDATI6, 
                WBDATI6out=>WBDATI6_buf, WBDATI7in=>WBDATI7, 
                WBDATI7out=>WBDATI7_buf, I2C1SCLIin=>I2C1SCLI, 
                I2C1SCLIout=>I2C1SCLI_buf, I2C1SDAIin=>I2C1SDAI, 
                I2C1SDAIout=>I2C1SDAI_buf, I2C2SCLIin=>I2C2SCLI, 
                I2C2SCLIout=>I2C2SCLI_buf, I2C2SDAIin=>I2C2SDAI, 
                I2C2SDAIout=>I2C2SDAI_buf, SPISCKIin=>SPISCKI, 
                SPISCKIout=>SPISCKI_buf, SPIMISOIin=>SPIMISOI, 
                SPIMISOIout=>SPIMISOI_buf, SPIMOSIIin=>SPIMOSII, 
                SPIMOSIIout=>SPIMOSII_buf, SPISCSNin=>SPISCSN, 
                SPISCSNout=>SPISCSN_buf, TCCLKIin=>TCCLKI, 
                TCCLKIout=>TCCLKI_buf, TCRSTNin=>TCRSTN, TCRSTNout=>TCRSTN_buf, 
                TCICin=>TCIC, TCICout=>TCIC_buf, UFMSNin=>UFMSN, 
                UFMSNout=>UFMSN_buf, PLL0DATI0in=>PLL0DATI0, 
                PLL0DATI0out=>PLL0DATI0_buf, PLL0DATI1in=>PLL0DATI1, 
                PLL0DATI1out=>PLL0DATI1_buf, PLL0DATI2in=>PLL0DATI2, 
                PLL0DATI2out=>PLL0DATI2_buf, PLL0DATI3in=>PLL0DATI3, 
                PLL0DATI3out=>PLL0DATI3_buf, PLL0DATI4in=>PLL0DATI4, 
                PLL0DATI4out=>PLL0DATI4_buf, PLL0DATI5in=>PLL0DATI5, 
                PLL0DATI5out=>PLL0DATI5_buf, PLL0DATI6in=>PLL0DATI6, 
                PLL0DATI6out=>PLL0DATI6_buf, PLL0DATI7in=>PLL0DATI7, 
                PLL0DATI7out=>PLL0DATI7_buf, PLL0ACKIin=>PLL0ACKI, 
                PLL0ACKIout=>PLL0ACKI_buf, PLL1DATI0in=>PLL1DATI0, 
                PLL1DATI0out=>PLL1DATI0_buf, PLL1DATI1in=>PLL1DATI1, 
                PLL1DATI1out=>PLL1DATI1_buf, PLL1DATI2in=>PLL1DATI2, 
                PLL1DATI2out=>PLL1DATI2_buf, PLL1DATI3in=>PLL1DATI3, 
                PLL1DATI3out=>PLL1DATI3_buf, PLL1DATI4in=>PLL1DATI4, 
                PLL1DATI4out=>PLL1DATI4_buf, PLL1DATI5in=>PLL1DATI5, 
                PLL1DATI5out=>PLL1DATI5_buf, PLL1DATI6in=>PLL1DATI6, 
                PLL1DATI6out=>PLL1DATI6_buf, PLL1DATI7in=>PLL1DATI7, 
                PLL1DATI7out=>PLL1DATI7_buf, PLL1ACKIin=>PLL1ACKI, 
                PLL1ACKIout=>PLL1ACKI_buf, WBDATO0out=>WBDATO0, 
                WBDATO0in=>WBDATO0_buf, WBDATO1out=>WBDATO1, 
                WBDATO1in=>WBDATO1_buf, WBDATO2out=>WBDATO2, 
                WBDATO2in=>WBDATO2_buf, WBDATO3out=>WBDATO3, 
                WBDATO3in=>WBDATO3_buf, WBDATO4out=>WBDATO4, 
                WBDATO4in=>WBDATO4_buf, WBDATO5out=>WBDATO5, 
                WBDATO5in=>WBDATO5_buf, WBDATO6out=>WBDATO6, 
                WBDATO6in=>WBDATO6_buf, WBDATO7out=>WBDATO7, 
                WBDATO7in=>WBDATO7_buf, WBACKOout=>WBACKO, 
                WBACKOin=>WBACKO_buf, WBCUFMIRQout=>WBCUFMIRQ, 
                WBCUFMIRQin=>WBCUFMIRQ_buf, I2C1SCLOout=>I2C1SCLO, 
                I2C1SCLOin=>I2C1SCLO_buf, I2C1SCLOENout=>I2C1SCLOEN, 
                I2C1SCLOENin=>I2C1SCLOEN_buf, I2C1SDAOout=>I2C1SDAO, 
                I2C1SDAOin=>I2C1SDAO_buf, I2C1SDAOENout=>I2C1SDAOEN, 
                I2C1SDAOENin=>I2C1SDAOEN_buf, I2C2SCLOout=>I2C2SCLO, 
                I2C2SCLOin=>I2C2SCLO_buf, I2C2SCLOENout=>I2C2SCLOEN, 
                I2C2SCLOENin=>I2C2SCLOEN_buf, I2C2SDAOout=>I2C2SDAO, 
                I2C2SDAOin=>I2C2SDAO_buf, I2C2SDAOENout=>I2C2SDAOEN, 
                I2C2SDAOENin=>I2C2SDAOEN_buf, I2C1IRQOout=>I2C1IRQO, 
                I2C1IRQOin=>I2C1IRQO_buf, I2C2IRQOout=>I2C2IRQO, 
                I2C2IRQOin=>I2C2IRQO_buf, SPISCKOout=>SPISCKO, 
                SPISCKOin=>SPISCKO_buf, SPISCKENout=>SPISCKEN, 
                SPISCKENin=>SPISCKEN_buf, SPIMISOOout=>SPIMISOO, 
                SPIMISOOin=>SPIMISOO_buf, SPIMISOENout=>SPIMISOEN, 
                SPIMISOENin=>SPIMISOEN_buf, SPIMOSIOout=>SPIMOSIO, 
                SPIMOSIOin=>SPIMOSIO_buf, SPIMOSIENout=>SPIMOSIEN, 
                SPIMOSIENin=>SPIMOSIEN_buf, SPIMCSN0out=>SPIMCSN0, 
                SPIMCSN0in=>SPIMCSN0_buf, SPIMCSN1out=>SPIMCSN1, 
                SPIMCSN1in=>SPIMCSN1_buf, SPIMCSN2out=>SPIMCSN2, 
                SPIMCSN2in=>SPIMCSN2_buf, SPIMCSN3out=>SPIMCSN3, 
                SPIMCSN3in=>SPIMCSN3_buf, SPIMCSN4out=>SPIMCSN4, 
                SPIMCSN4in=>SPIMCSN4_buf, SPIMCSN5out=>SPIMCSN5, 
                SPIMCSN5in=>SPIMCSN5_buf, SPIMCSN6out=>SPIMCSN6, 
                SPIMCSN6in=>SPIMCSN6_buf, SPIMCSN7out=>SPIMCSN7, 
                SPIMCSN7in=>SPIMCSN7_buf, SPICSNENout=>SPICSNEN, 
                SPICSNENin=>SPICSNEN_buf, SPIIRQOout=>SPIIRQO, 
                SPIIRQOin=>SPIIRQO_buf, TCINTout=>TCINT, TCINTin=>TCINT_buf, 
                TCOCout=>TCOC, TCOCin=>TCOC_buf, PLLCLKOout=>PLLCLKO, 
                PLLCLKOin=>PLLCLKO_buf, PLLRSTOout=>PLLRSTO, 
                PLLRSTOin=>PLLRSTO_buf, PLL0STBOout=>PLL0STBO, 
                PLL0STBOin=>PLL0STBO_buf, PLL1STBOout=>PLL1STBO, 
                PLL1STBOin=>PLL1STBO_buf, PLLWEOout=>PLLWEO, 
                PLLWEOin=>PLLWEO_buf, PLLADRO0out=>PLLADRO0, 
                PLLADRO0in=>PLLADRO0_buf, PLLADRO1out=>PLLADRO1, 
                PLLADRO1in=>PLLADRO1_buf, PLLADRO2out=>PLLADRO2, 
                PLLADRO2in=>PLLADRO2_buf, PLLADRO3out=>PLLADRO3, 
                PLLADRO3in=>PLLADRO3_buf, PLLADRO4out=>PLLADRO4, 
                PLLADRO4in=>PLLADRO4_buf, PLLDATO0out=>PLLDATO0, 
                PLLDATO0in=>PLLDATO0_buf, PLLDATO1out=>PLLDATO1, 
                PLLDATO1in=>PLLDATO1_buf, PLLDATO2out=>PLLDATO2, 
                PLLDATO2in=>PLLDATO2_buf, PLLDATO3out=>PLLDATO3, 
                PLLDATO3in=>PLLDATO3_buf, PLLDATO4out=>PLLDATO4, 
                PLLDATO4in=>PLLDATO4_buf, PLLDATO5out=>PLLDATO5, 
                PLLDATO5in=>PLLDATO5_buf, PLLDATO6out=>PLLDATO6, 
                PLLDATO6in=>PLLDATO6_buf, PLLDATO7out=>PLLDATO7, 
                PLLDATO7in=>PLLDATO7_buf, CFGWAKEout=>CFGWAKE, 
                CFGWAKEin=>CFGWAKE_buf, CFGSTDBYout=>CFGSTDBY, 
                CFGSTDBYin=>CFGSTDBY_buf);
  end Structure;

-- entity I5_CTInst0_EFBInst_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity I5_CTInst0_EFBInst_0 is
    port (TCOC: out Std_logic; TCRSTN: in Std_logic; TCCLKI: in Std_logic);



  end I5_CTInst0_EFBInst_0;

  architecture Structure of I5_CTInst0_EFBInst_0 is
    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component EFBB
      port (WBCLKI: in Std_logic; WBRSTI: in Std_logic; WBCYCI: in Std_logic; 
            WBSTBI: in Std_logic; WBWEI: in Std_logic; WBADRI0: in Std_logic; 
            WBADRI1: in Std_logic; WBADRI2: in Std_logic; 
            WBADRI3: in Std_logic; WBADRI4: in Std_logic; 
            WBADRI5: in Std_logic; WBADRI6: in Std_logic; 
            WBADRI7: in Std_logic; WBDATI0: in Std_logic; 
            WBDATI1: in Std_logic; WBDATI2: in Std_logic; 
            WBDATI3: in Std_logic; WBDATI4: in Std_logic; 
            WBDATI5: in Std_logic; WBDATI6: in Std_logic; 
            WBDATI7: in Std_logic; WBDATO0: out Std_logic; 
            WBDATO1: out Std_logic; WBDATO2: out Std_logic; 
            WBDATO3: out Std_logic; WBDATO4: out Std_logic; 
            WBDATO5: out Std_logic; WBDATO6: out Std_logic; 
            WBDATO7: out Std_logic; WBACKO: out Std_logic; 
            WBCUFMIRQ: out Std_logic; UFMSN: in Std_logic; 
            CFGWAKE: out Std_logic; CFGSTDBY: out Std_logic; 
            I2C1SCLI: in Std_logic; I2C1SCLO: out Std_logic; 
            I2C1SCLOEN: out Std_logic; I2C1SDAI: in Std_logic; 
            I2C1SDAO: out Std_logic; I2C1SDAOEN: out Std_logic; 
            I2C2SCLI: in Std_logic; I2C2SCLO: out Std_logic; 
            I2C2SCLOEN: out Std_logic; I2C2SDAI: in Std_logic; 
            I2C2SDAO: out Std_logic; I2C2SDAOEN: out Std_logic; 
            I2C1IRQO: out Std_logic; I2C2IRQO: out Std_logic; 
            SPISCKI: in Std_logic; SPISCKO: out Std_logic; 
            SPISCKEN: out Std_logic; SPIMISOI: in Std_logic; 
            SPIMISOO: out Std_logic; SPIMISOEN: out Std_logic; 
            SPIMOSII: in Std_logic; SPIMOSIO: out Std_logic; 
            SPIMOSIEN: out Std_logic; SPIMCSN0: out Std_logic; 
            SPIMCSN1: out Std_logic; SPIMCSN2: out Std_logic; 
            SPIMCSN3: out Std_logic; SPIMCSN4: out Std_logic; 
            SPIMCSN5: out Std_logic; SPIMCSN6: out Std_logic; 
            SPIMCSN7: out Std_logic; SPICSNEN: out Std_logic; 
            SPISCSN: in Std_logic; SPIIRQO: out Std_logic; 
            TCCLKI: in Std_logic; TCRSTN: in Std_logic; TCIC: in Std_logic; 
            TCINT: out Std_logic; TCOC: out Std_logic; PLLCLKO: out Std_logic; 
            PLLRSTO: out Std_logic; PLL0STBO: out Std_logic; 
            PLL1STBO: out Std_logic; PLLWEO: out Std_logic; 
            PLLADRO0: out Std_logic; PLLADRO1: out Std_logic; 
            PLLADRO2: out Std_logic; PLLADRO3: out Std_logic; 
            PLLADRO4: out Std_logic; PLLDATO0: out Std_logic; 
            PLLDATO1: out Std_logic; PLLDATO2: out Std_logic; 
            PLLDATO3: out Std_logic; PLLDATO4: out Std_logic; 
            PLLDATO5: out Std_logic; PLLDATO6: out Std_logic; 
            PLLDATO7: out Std_logic; PLL0DATI0: in Std_logic; 
            PLL0DATI1: in Std_logic; PLL0DATI2: in Std_logic; 
            PLL0DATI3: in Std_logic; PLL0DATI4: in Std_logic; 
            PLL0DATI5: in Std_logic; PLL0DATI6: in Std_logic; 
            PLL0DATI7: in Std_logic; PLL0ACKI: in Std_logic; 
            PLL1DATI0: in Std_logic; PLL1DATI1: in Std_logic; 
            PLL1DATI2: in Std_logic; PLL1DATI3: in Std_logic; 
            PLL1DATI4: in Std_logic; PLL1DATI5: in Std_logic; 
            PLL1DATI6: in Std_logic; PLL1DATI7: in Std_logic; 
            PLL1ACKI: in Std_logic);
    end component;
  begin
    I5_CTInst0_EFBInst_0_EFB: EFBB
      port map (WBCLKI=>GNDI, WBRSTI=>GNDI, WBCYCI=>GNDI, WBSTBI=>GNDI, 
                WBWEI=>GNDI, WBADRI0=>GNDI, WBADRI1=>GNDI, WBADRI2=>GNDI, 
                WBADRI3=>GNDI, WBADRI4=>GNDI, WBADRI5=>GNDI, WBADRI6=>GNDI, 
                WBADRI7=>GNDI, WBDATI0=>GNDI, WBDATI1=>GNDI, WBDATI2=>GNDI, 
                WBDATI3=>GNDI, WBDATI4=>GNDI, WBDATI5=>GNDI, WBDATI6=>GNDI, 
                WBDATI7=>GNDI, WBDATO0=>open, WBDATO1=>open, WBDATO2=>open, 
                WBDATO3=>open, WBDATO4=>open, WBDATO5=>open, WBDATO6=>open, 
                WBDATO7=>open, WBACKO=>open, WBCUFMIRQ=>open, UFMSN=>VCCI, 
                CFGWAKE=>open, CFGSTDBY=>open, I2C1SCLI=>GNDI, I2C1SCLO=>open, 
                I2C1SCLOEN=>open, I2C1SDAI=>GNDI, I2C1SDAO=>open, 
                I2C1SDAOEN=>open, I2C2SCLI=>GNDI, I2C2SCLO=>open, 
                I2C2SCLOEN=>open, I2C2SDAI=>GNDI, I2C2SDAO=>open, 
                I2C2SDAOEN=>open, I2C1IRQO=>open, I2C2IRQO=>open, 
                SPISCKI=>GNDI, SPISCKO=>open, SPISCKEN=>open, SPIMISOI=>GNDI, 
                SPIMISOO=>open, SPIMISOEN=>open, SPIMOSII=>GNDI, 
                SPIMOSIO=>open, SPIMOSIEN=>open, SPIMCSN0=>open, 
                SPIMCSN1=>open, SPIMCSN2=>open, SPIMCSN3=>open, SPIMCSN4=>open, 
                SPIMCSN5=>open, SPIMCSN6=>open, SPIMCSN7=>open, SPICSNEN=>open, 
                SPISCSN=>GNDI, SPIIRQO=>open, TCCLKI=>TCCLKI, TCRSTN=>TCRSTN, 
                TCIC=>GNDI, TCINT=>open, TCOC=>TCOC, PLLCLKO=>open, 
                PLLRSTO=>open, PLL0STBO=>open, PLL1STBO=>open, PLLWEO=>open, 
                PLLADRO0=>open, PLLADRO1=>open, PLLADRO2=>open, PLLADRO3=>open, 
                PLLADRO4=>open, PLLDATO0=>open, PLLDATO1=>open, PLLDATO2=>open, 
                PLLDATO3=>open, PLLDATO4=>open, PLLDATO5=>open, PLLDATO6=>open, 
                PLLDATO7=>open, PLL0DATI0=>GNDI, PLL0DATI1=>GNDI, 
                PLL0DATI2=>GNDI, PLL0DATI3=>GNDI, PLL0DATI4=>GNDI, 
                PLL0DATI5=>GNDI, PLL0DATI6=>GNDI, PLL0DATI7=>GNDI, 
                PLL0ACKI=>GNDI, PLL1DATI0=>GNDI, PLL1DATI1=>GNDI, 
                PLL1DATI2=>GNDI, PLL1DATI3=>GNDI, PLL1DATI4=>GNDI, 
                PLL1DATI5=>GNDI, PLL1DATI6=>GNDI, PLL1DATI7=>GNDI, 
                PLL1ACKI=>GNDI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
  end Structure;

-- entity AMPELMEALY
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity AMPELMEALY is
    port (ANF: in Std_logic; CMR: in Std_logic_vector (1 downto 0); 
          FA: out Std_logic_vector (1 downto 0); 
          KFZA: out Std_logic_vector (2 downto 0); PR: in Std_logic);



  end AMPELMEALY;

  architecture Structure of AMPELMEALY is
    signal I10_ZUST_2: Std_logic;
    signal I10_ZUST_1: Std_logic;
    signal I10_ZUST_3: Std_logic;
    signal I10_ZUST_0: Std_logic;
    signal n819: Std_logic;
    signal n785: Std_logic;
    signal n807: Std_logic;
    signal FA_c: Std_logic;
    signal I10_n809: Std_logic;
    signal I10_n26: Std_logic;
    signal N_4: Std_logic;
    signal I10_n23: Std_logic;
    signal I10_n24: Std_logic;
    signal I5_Clk100Hz: Std_logic;
    signal I5_n71: Std_logic;
    signal I5_Clk200Hz: Std_logic;
    signal I5_n453: Std_logic;
    signal I5_Counter_Clk1Hz: Std_logic;
    signal I5_n268: Std_logic;
    signal VCC_net: Std_logic;
    signal I5_Counter_Counter3Hz_4: Std_logic;
    signal I5_n6_adj_2: Std_logic;
    signal I5_Counter_Counter3Hz_5: Std_logic;
    signal I5_Counter_Counter3Hz_1: Std_logic;
    signal I5_n452: Std_logic;
    signal I5_Counter_Clk3Hz: Std_logic;
    signal I5_n266: Std_logic;
    signal I5_Counter_Counter1Hz_2: Std_logic;
    signal I5_Counter_Counter1Hz_3: Std_logic;
    signal I5_n7: Std_logic;
    signal I5_n6: Std_logic;
    signal I5_n38: Std_logic;
    signal I5_n39: Std_logic;
    signal I5_n755: Std_logic;
    signal I5_Counter_Counter1Hz_5: Std_logic;
    signal I5_Counter_Counter1Hz_4: Std_logic;
    signal I5_n811: Std_logic;
    signal I5_n36: Std_logic;
    signal I5_n37: Std_logic;
    signal I5_Counter_Counter1Hz_6: Std_logic;
    signal I5_n35: Std_logic;
    signal n135: Std_logic;
    signal I5_Counter_Counter3Hz_2: Std_logic;
    signal I5_n6_adj_1: Std_logic;
    signal I5_n1: Std_logic;
    signal I5_n35_adj_3: Std_logic;
    signal I5_Counter_Counter3Hz_3: Std_logic;
    signal I5_n810: Std_logic;
    signal I5_n32: Std_logic;
    signal I5_n33: Std_logic;
    signal I5_n808: Std_logic;
    signal I5_n31: Std_logic;
    signal I5_n41: Std_logic;
    signal I5_n40: Std_logic;
    signal I5_n36_adj_4: Std_logic;
    signal n805: Std_logic;
    signal KFZA_c: Std_logic;
    signal n815: Std_logic;
    signal N_3: Std_logic;
    signal N_6: Std_logic;
    signal n806: Std_logic;
    signal n812: Std_logic;
    signal n262: Std_logic;
    signal n263: Std_logic;
    signal n794: Std_logic;
    signal n264: Std_logic;
    signal n7: Std_logic;
    signal CMR_c_0: Std_logic;
    signal PR_c: Std_logic;
    signal CMR_c_1: Std_logic;
    signal N_8: Std_logic;
    signal ANF_c: Std_logic;
    signal I5_n4: Std_logic;
    signal I5_ClkOsc: Std_logic;
    component SLICE_0
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; DI0: in Std_logic; LSR: in Std_logic; 
            CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component I10_SLICE_1
      port (B1: in Std_logic; A1: in Std_logic; A0: in Std_logic; 
            DI1: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic);
    end component;
    component I10_SLICE_2
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; DI1: in Std_logic; DI0: in Std_logic; 
            CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
            F1: out Std_logic; Q1: out Std_logic);
    end component;
    component I5_SLICE_3
      port (A0: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic);
    end component;
    component SLICE_4
      port (B0: in Std_logic; A0: in Std_logic; DI0: in Std_logic; 
            CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component I5_SLICE_5
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
            Q0: out Std_logic; F1: out Std_logic);
    end component;
    component I5_SLICE_6
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; DI1: in Std_logic; DI0: in Std_logic; 
            LSR: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
            Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);
    end component;
    component I5_SLICE_7
      port (B1: in Std_logic; A1: in Std_logic; D0: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            DI1: in Std_logic; DI0: in Std_logic; LSR: in Std_logic; 
            CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
            F1: out Std_logic; Q1: out Std_logic);
    end component;
    component SLICE_8
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            DI0: in Std_logic; LSR: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);
    end component;
    component I5_SLICE_9
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; LSR: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic);
    end component;
    component I5_SLICE_10
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; LSR: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic);
    end component;
    component I5_SLICE_11
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; DI0: in Std_logic; LSR: in Std_logic; 
            CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component I5_SLICE_12
      port (A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            DI1: in Std_logic; DI0: in Std_logic; LSR: in Std_logic; 
            CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
            F1: out Std_logic; Q1: out Std_logic);
    end component;
    component I5_SLICE_13
      port (B1: in Std_logic; A1: in Std_logic; A0: in Std_logic; 
            DI0: in Std_logic; LSR: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_14
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_15
      port (B1: in Std_logic; A1: in Std_logic; DI0: in Std_logic; 
            CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_16
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
            Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);
    end component;
    component SLICE_17
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; DI0: in Std_logic; 
            LSR: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
            Q0: out Std_logic; F1: out Std_logic);
    end component;
    component I5_i721_SLICE_18
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            M0: in Std_logic; OFX0: out Std_logic);
    end component;
    component SLICE_19
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component I5_SLICE_20
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component I5_SLICE_21
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component PRB
      port (PADDI: out Std_logic; PRS: in Std_logic);
    end component;
    component CMR_0_B
      port (PADDI: out Std_logic; CMR0: in Std_logic);
    end component;
    component CMR_1_B
      port (PADDI: out Std_logic; CMR1: in Std_logic);
    end component;
    component ANFB
      port (PADDI: out Std_logic; ANFS: in Std_logic);
    end component;
    component KFZA_0_B
      port (PADDO: in Std_logic; KFZA0: out Std_logic);
    end component;
    component KFZA_1_B
      port (PADDO: in Std_logic; KFZA1: out Std_logic);
    end component;
    component KFZA_2_B
      port (PADDO: in Std_logic; KFZA2: out Std_logic);
    end component;
    component FA_0_B
      port (PADDO: in Std_logic; FA0: out Std_logic);
    end component;
    component FA_1_B
      port (PADDO: in Std_logic; FA1: out Std_logic);
    end component;
    component GSR_INSTB
      port (GSRNET: in Std_logic);
    end component;
    component I5_OscInst0
      port (OSC: out Std_logic);
    end component;
    component I5_CTInst0_EFBInst_0
      port (TCOC: out Std_logic; TCRSTN: in Std_logic; TCCLKI: in Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (C1=>I10_ZUST_2, B1=>I10_ZUST_1, A1=>I10_ZUST_3, D0=>I10_ZUST_1, 
                C0=>I10_ZUST_2, B0=>I10_ZUST_3, A0=>I10_ZUST_0, DI0=>n819, 
                LSR=>n785, CLK=>n807, F0=>n819, Q0=>FA_c, F1=>n807);
    I10_SLICE_1I: I10_SLICE_1
      port map (B1=>I10_ZUST_1, A1=>I10_ZUST_0, A0=>I10_ZUST_0, DI1=>I10_n809, 
                DI0=>I10_n26, CLK=>N_4, F0=>I10_n26, Q0=>I10_ZUST_0, 
                F1=>I10_n809, Q1=>I10_ZUST_1);
    I10_SLICE_2I: I10_SLICE_2
      port map (D1=>I10_ZUST_3, C1=>I10_ZUST_2, B1=>I10_ZUST_0, A1=>I10_ZUST_1, 
                C0=>I10_ZUST_2, B0=>I10_ZUST_0, A0=>I10_ZUST_1, DI1=>I10_n23, 
                DI0=>I10_n24, CLK=>N_4, F0=>I10_n24, Q0=>I10_ZUST_2, 
                F1=>I10_n23, Q1=>I10_ZUST_3);
    I5_SLICE_3I: I5_SLICE_3
      port map (A0=>I5_Clk100Hz, DI0=>I5_n71, CLK=>I5_Clk200Hz, F0=>I5_n71, 
                Q0=>I5_Clk100Hz);
    SLICE_4I: SLICE_4
      port map (B0=>I5_n453, A0=>I5_Counter_Clk1Hz, DI0=>I5_n268, 
                CLK=>I5_Clk200Hz, F0=>I5_n268, Q0=>I5_Counter_Clk1Hz, 
                F1=>VCC_net);
    I5_SLICE_5I: I5_SLICE_5
      port map (D1=>I5_Counter_Counter3Hz_4, C1=>I5_n6_adj_2, 
                B1=>I5_Counter_Counter3Hz_5, A1=>I5_Counter_Counter3Hz_1, 
                B0=>I5_n452, A0=>I5_Counter_Clk3Hz, DI0=>I5_n266, 
                CLK=>I5_Clk200Hz, F0=>I5_n266, Q0=>I5_Counter_Clk3Hz, 
                F1=>I5_n452);
    I5_SLICE_6I: I5_SLICE_6
      port map (D1=>I5_Counter_Counter1Hz_2, C1=>I5_Counter_Counter1Hz_3, 
                B1=>I5_n7, A1=>I5_n6, C0=>I5_Counter_Counter1Hz_2, B0=>I5_n7, 
                A0=>I5_n6, DI1=>I5_n38, DI0=>I5_n39, LSR=>I5_n453, 
                CLK=>I5_Clk200Hz, F0=>I5_n39, Q0=>I5_Counter_Counter1Hz_2, 
                F1=>I5_n38, Q1=>I5_Counter_Counter1Hz_3);
    I5_SLICE_7I: I5_SLICE_7
      port map (B1=>I5_n755, A1=>I5_Counter_Counter1Hz_5, 
                D0=>I5_Counter_Counter1Hz_4, C0=>I5_Counter_Counter1Hz_3, 
                B0=>I5_n811, A0=>I5_Counter_Counter1Hz_2, DI1=>I5_n36, 
                DI0=>I5_n37, LSR=>I5_n453, CLK=>I5_Clk200Hz, F0=>I5_n37, 
                Q0=>I5_Counter_Counter1Hz_4, F1=>I5_n36, 
                Q1=>I5_Counter_Counter1Hz_5);
    SLICE_8I: SLICE_8
      port map (C1=>I10_ZUST_2, B1=>I10_ZUST_1, A1=>I10_ZUST_3, C0=>I5_n755, 
                B0=>I5_Counter_Counter1Hz_5, A0=>I5_Counter_Counter1Hz_6, 
                DI0=>I5_n35, LSR=>I5_n453, CLK=>I5_Clk200Hz, F0=>I5_n35, 
                Q0=>I5_Counter_Counter1Hz_6, F1=>n135);
    I5_SLICE_9I: I5_SLICE_9
      port map (C1=>I5_Counter_Counter3Hz_2, B1=>I5_n6_adj_1, 
                A1=>I5_Counter_Counter3Hz_1, B0=>I5_n6_adj_1, 
                A0=>I5_Counter_Counter3Hz_1, DI1=>I5_n1, DI0=>I5_n35_adj_3, 
                LSR=>I5_n452, CLK=>I5_Clk200Hz, F0=>I5_n35_adj_3, 
                Q0=>I5_Counter_Counter3Hz_1, F1=>I5_n1, 
                Q1=>I5_Counter_Counter3Hz_2);
    I5_SLICE_10I: I5_SLICE_10
      port map (D1=>I5_Counter_Counter3Hz_3, C1=>I5_Counter_Counter3Hz_4, 
                B1=>I5_n810, A1=>I5_Counter_Counter3Hz_2, 
                D0=>I5_Counter_Counter3Hz_2, C0=>I5_Counter_Counter3Hz_3, 
                B0=>I5_n6_adj_1, A0=>I5_Counter_Counter3Hz_1, DI1=>I5_n32, 
                DI0=>I5_n33, LSR=>I5_n452, CLK=>I5_Clk200Hz, F0=>I5_n33, 
                Q0=>I5_Counter_Counter3Hz_3, F1=>I5_n32, 
                Q1=>I5_Counter_Counter3Hz_4);
    I5_SLICE_11I: I5_SLICE_11
      port map (C1=>I5_Counter_Counter3Hz_2, B1=>I5_n6_adj_1, 
                A1=>I5_Counter_Counter3Hz_1, D0=>I5_Counter_Counter3Hz_5, 
                C0=>I5_Counter_Counter3Hz_4, B0=>I5_n808, 
                A0=>I5_Counter_Counter3Hz_3, DI0=>I5_n31, LSR=>I5_n452, 
                CLK=>I5_Clk200Hz, F0=>I5_n31, Q0=>I5_Counter_Counter3Hz_5, 
                F1=>I5_n808);
    I5_SLICE_12I: I5_SLICE_12
      port map (A1=>I5_n7, B0=>I5_n7, A0=>I5_n6, DI1=>I5_n41, DI0=>I5_n40, 
                LSR=>I5_n453, CLK=>I5_Clk200Hz, F0=>I5_n40, Q0=>I5_n6, 
                F1=>I5_n41, Q1=>I5_n7);
    I5_SLICE_13I: I5_SLICE_13
      port map (B1=>I5_n6_adj_1, A1=>I5_Counter_Counter3Hz_1, A0=>I5_n6_adj_1, 
                DI0=>I5_n36_adj_4, LSR=>I5_n452, CLK=>I5_Clk200Hz, 
                F0=>I5_n36_adj_4, Q0=>I5_n6_adj_1, F1=>I5_n810);
    SLICE_14I: SLICE_14
      port map (C1=>I10_ZUST_1, B1=>I10_ZUST_2, A1=>I10_ZUST_3, D0=>I10_ZUST_1, 
                C0=>I10_ZUST_2, B0=>I10_ZUST_0, A0=>I10_ZUST_3, DI0=>n805, 
                CLK=>n807, F0=>n805, Q0=>KFZA_c, F1=>n785);
    SLICE_15I: SLICE_15
      port map (B1=>I5_Counter_Counter3Hz_3, A1=>I5_Counter_Counter3Hz_2, 
                DI0=>n815, CLK=>N_3, F0=>n815, Q0=>N_6, F1=>I5_n6_adj_2);
    SLICE_16I: SLICE_16
      port map (D1=>I10_ZUST_1, C1=>I10_ZUST_2, B1=>I10_ZUST_0, A1=>I10_ZUST_3, 
                D0=>I10_ZUST_1, C0=>I10_ZUST_2, B0=>I10_ZUST_3, A0=>I10_ZUST_0, 
                DI1=>n806, DI0=>n812, CLK=>n807, F0=>n812, Q0=>n262, F1=>n806, 
                Q1=>n263);
    SLICE_17I: SLICE_17
      port map (D1=>I10_ZUST_2, C1=>I10_ZUST_0, B1=>I10_ZUST_1, A1=>I10_ZUST_3, 
                D0=>I10_ZUST_2, C0=>I10_ZUST_3, B0=>I10_ZUST_1, A0=>I10_ZUST_0, 
                DI0=>n794, LSR=>n135, CLK=>n807, F0=>n794, Q0=>n264, F1=>n7);
    I5_i721_SLICE_18I: I5_i721_SLICE_18
      port map (C1=>I5_Clk100Hz, B1=>I5_Counter_Clk3Hz, A1=>CMR_c_0, 
                C0=>CMR_c_0, B0=>I5_Counter_Clk1Hz, A0=>PR_c, M0=>CMR_c_1, 
                OFX0=>N_8);
    SLICE_19I: SLICE_19
      port map (C1=>N_3, B1=>N_8, A1=>N_6, B0=>N_6, A0=>ANF_c, F0=>N_3, 
                F1=>N_4);
    I5_SLICE_20I: I5_SLICE_20
      port map (D1=>I5_Counter_Counter1Hz_4, C1=>I5_Counter_Counter1Hz_3, 
                B1=>I5_n811, A1=>I5_Counter_Counter1Hz_2, B0=>I5_n7, A0=>I5_n6, 
                F0=>I5_n811, F1=>I5_n755);
    I5_SLICE_21I: I5_SLICE_21
      port map (D1=>I5_n4, C1=>I5_Counter_Counter1Hz_5, 
                B1=>I5_Counter_Counter1Hz_4, A1=>I5_Counter_Counter1Hz_6, 
                B0=>I5_Counter_Counter1Hz_3, A0=>I5_Counter_Counter1Hz_2, 
                F0=>I5_n4, F1=>I5_n453);
    PRI: PRB
      port map (PADDI=>PR_c, PRS=>PR);
    CMR_0_I: CMR_0_B
      port map (PADDI=>CMR_c_0, CMR0=>CMR(0));
    CMR_1_I: CMR_1_B
      port map (PADDI=>CMR_c_1, CMR1=>CMR(1));
    ANFI: ANFB
      port map (PADDI=>ANF_c, ANFS=>ANF);
    KFZA_0_I: KFZA_0_B
      port map (PADDO=>KFZA_c, KFZA0=>KFZA(0));
    KFZA_1_I: KFZA_1_B
      port map (PADDO=>n264, KFZA1=>KFZA(1));
    KFZA_2_I: KFZA_2_B
      port map (PADDO=>n263, KFZA2=>KFZA(2));
    FA_0_I: FA_0_B
      port map (PADDO=>FA_c, FA0=>FA(0));
    FA_1_I: FA_1_B
      port map (PADDO=>n262, FA1=>FA(1));
    GSR_INST: GSR_INSTB
      port map (GSRNET=>n7);
    I5_OscInst0I: I5_OscInst0
      port map (OSC=>I5_ClkOsc);
    I5_CTInst0_EFBInst_0I: I5_CTInst0_EFBInst_0
      port map (TCOC=>I5_Clk200Hz, TCRSTN=>VCC_net, TCCLKI=>I5_ClkOsc);
    PUR_INST: PUR
      port map (PUR=>VCC_net);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of AMPELMEALY is
    for Structure
    end for;
  end Structure_CON;


