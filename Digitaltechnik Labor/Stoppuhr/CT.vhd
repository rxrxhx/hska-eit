-- VHDL netlist generated by SCUBA Diamond_2.1_Production (100)
-- Module  Version: 1.1
--C:\lscc\diamond\2.1\ispfpga\bin\nt\scuba.exe -w -n CT -lang vhdl -synth synplify -bus_exp 7 -bb -type efb -arch xo2c00 -freq 50 -static_tc -tc -tc_mode CTCM -tc_o TOGGLE -tc_div 1 -tc_top 5200 -tc_ocr 32767 -tc_ctr -dev 256 -e 

-- Sun Jun 09 11:20:23 2013

library IEEE;
use IEEE.std_logic_1164.all;
-- synopsys translate_off
library MACHXO2;
use MACHXO2.components.all;
-- synopsys translate_on

entity CT is
    port (
        tc_clki: in  std_logic; 
        tc_rstn: in  std_logic; 
        tc_int: out  std_logic; 
        tc_oc: out  std_logic);
end CT;

architecture Structure of CT is

    -- internal signal declarations
    signal scuba_vhi: std_logic;
    signal scuba_vlo: std_logic;

    -- local component declarations
    component VHI
        port (Z: out  std_logic);
    end component;
    component VLO
        port (Z: out  std_logic);
    end component;
    component EFB
        generic (EFB_I2C1 : in String; EFB_I2C2 : in String; 
                EFB_SPI : in String; EFB_TC : in String; 
                EFB_TC_PORTMODE : in String; EFB_UFM : in String; 
                EFB_WB_CLK_FREQ : in String; DEV_DENSITY : in String; 
                UFM_INIT_PAGES : in Integer; 
                UFM_INIT_START_PAGE : in Integer; 
                UFM_INIT_ALL_ZEROS : in String; 
                UFM_INIT_FILE_NAME : in String; 
                UFM_INIT_FILE_FORMAT : in String; 
                I2C1_ADDRESSING : in String; I2C2_ADDRESSING : in String; 
                I2C1_SLAVE_ADDR : in String; I2C2_SLAVE_ADDR : in String; 
                I2C1_BUS_PERF : in String; I2C2_BUS_PERF : in String; 
                I2C1_CLK_DIVIDER : in Integer; 
                I2C2_CLK_DIVIDER : in Integer; I2C1_GEN_CALL : in String; 
                I2C2_GEN_CALL : in String; I2C1_WAKEUP : in String; 
                I2C2_WAKEUP : in String; SPI_MODE : in String; 
                SPI_CLK_DIVIDER : in Integer; SPI_LSB_FIRST : in String; 
                SPI_CLK_INV : in String; SPI_PHASE_ADJ : in String; 
                SPI_SLAVE_HANDSHAKE : in String; 
                SPI_INTR_TXRDY : in String; SPI_INTR_RXRDY : in String; 
                SPI_INTR_TXOVR : in String; SPI_INTR_RXOVR : in String; 
                SPI_WAKEUP : in String; TC_MODE : in String; 
                TC_SCLK_SEL : in String; TC_CCLK_SEL : in Integer; 
                GSR : in String; TC_TOP_SET : in Integer; 
                TC_OCR_SET : in Integer; TC_OC_MODE : in String; 
                TC_RESETN : in String; TC_TOP_SEL : in String; 
                TC_OV_INT : in String; TC_OCR_INT : in String; 
                TC_ICR_INT : in String; TC_OVERFLOW : in String; 
                TC_ICAPTURE : in String);
        port (WBCLKI: in  std_logic; WBRSTI: in  std_logic; 
            WBCYCI: in  std_logic; WBSTBI: in  std_logic; 
            WBWEI: in  std_logic; WBADRI7: in  std_logic; 
            WBADRI6: in  std_logic; WBADRI5: in  std_logic; 
            WBADRI4: in  std_logic; WBADRI3: in  std_logic; 
            WBADRI2: in  std_logic; WBADRI1: in  std_logic; 
            WBADRI0: in  std_logic; WBDATI7: in  std_logic; 
            WBDATI6: in  std_logic; WBDATI5: in  std_logic; 
            WBDATI4: in  std_logic; WBDATI3: in  std_logic; 
            WBDATI2: in  std_logic; WBDATI1: in  std_logic; 
            WBDATI0: in  std_logic; PLL0DATI7: in  std_logic; 
            PLL0DATI6: in  std_logic; PLL0DATI5: in  std_logic; 
            PLL0DATI4: in  std_logic; PLL0DATI3: in  std_logic; 
            PLL0DATI2: in  std_logic; PLL0DATI1: in  std_logic; 
            PLL0DATI0: in  std_logic; PLL0ACKI: in  std_logic; 
            PLL1DATI7: in  std_logic; PLL1DATI6: in  std_logic; 
            PLL1DATI5: in  std_logic; PLL1DATI4: in  std_logic; 
            PLL1DATI3: in  std_logic; PLL1DATI2: in  std_logic; 
            PLL1DATI1: in  std_logic; PLL1DATI0: in  std_logic; 
            PLL1ACKI: in  std_logic; I2C1SCLI: in  std_logic; 
            I2C1SDAI: in  std_logic; I2C2SCLI: in  std_logic; 
            I2C2SDAI: in  std_logic; SPISCKI: in  std_logic; 
            SPIMISOI: in  std_logic; SPIMOSII: in  std_logic; 
            SPISCSN: in  std_logic; TCCLKI: in  std_logic; 
            TCRSTN: in  std_logic; TCIC: in  std_logic; 
            UFMSN: in  std_logic; WBDATO7: out  std_logic; 
            WBDATO6: out  std_logic; WBDATO5: out  std_logic; 
            WBDATO4: out  std_logic; WBDATO3: out  std_logic; 
            WBDATO2: out  std_logic; WBDATO1: out  std_logic; 
            WBDATO0: out  std_logic; WBACKO: out  std_logic; 
            PLLCLKO: out  std_logic; PLLRSTO: out  std_logic; 
            PLL0STBO: out  std_logic; PLL1STBO: out  std_logic; 
            PLLWEO: out  std_logic; PLLADRO4: out  std_logic; 
            PLLADRO3: out  std_logic; PLLADRO2: out  std_logic; 
            PLLADRO1: out  std_logic; PLLADRO0: out  std_logic; 
            PLLDATO7: out  std_logic; PLLDATO6: out  std_logic; 
            PLLDATO5: out  std_logic; PLLDATO4: out  std_logic; 
            PLLDATO3: out  std_logic; PLLDATO2: out  std_logic; 
            PLLDATO1: out  std_logic; PLLDATO0: out  std_logic; 
            I2C1SCLO: out  std_logic; I2C1SCLOEN: out  std_logic; 
            I2C1SDAO: out  std_logic; I2C1SDAOEN: out  std_logic; 
            I2C2SCLO: out  std_logic; I2C2SCLOEN: out  std_logic; 
            I2C2SDAO: out  std_logic; I2C2SDAOEN: out  std_logic; 
            I2C1IRQO: out  std_logic; I2C2IRQO: out  std_logic; 
            SPISCKO: out  std_logic; SPISCKEN: out  std_logic; 
            SPIMISOO: out  std_logic; SPIMISOEN: out  std_logic; 
            SPIMOSIO: out  std_logic; SPIMOSIEN: out  std_logic; 
            SPIMCSN7: out  std_logic; SPIMCSN6: out  std_logic; 
            SPIMCSN5: out  std_logic; SPIMCSN4: out  std_logic; 
            SPIMCSN3: out  std_logic; SPIMCSN2: out  std_logic; 
            SPIMCSN1: out  std_logic; SPIMCSN0: out  std_logic; 
            SPICSNEN: out  std_logic; SPIIRQO: out  std_logic; 
            TCINT: out  std_logic; TCOC: out  std_logic; 
            WBCUFMIRQ: out  std_logic; CFGWAKE: out  std_logic; 
            CFGSTDBY: out  std_logic);
    end component;
    attribute NGD_DRC_MASK : integer;
    attribute NGD_DRC_MASK of Structure : architecture is 1;

begin
    -- component instantiation statements
    scuba_vhi_inst: VHI
        port map (Z=>scuba_vhi);

    scuba_vlo_inst: VLO
        port map (Z=>scuba_vlo);

    EFBInst_0: EFB
        generic map (UFM_INIT_FILE_FORMAT=> "HEX", UFM_INIT_FILE_NAME=> "NONE", 
        UFM_INIT_ALL_ZEROS=> "ENABLED", UFM_INIT_START_PAGE=>  0, 
        UFM_INIT_PAGES=>  0, DEV_DENSITY=> "256L", EFB_UFM=> "DISABLED", 
        TC_ICAPTURE=> "DISABLED", TC_OVERFLOW=> "DISABLED", TC_ICR_INT=> "OFF", 
        TC_OCR_INT=> "OFF", TC_OV_INT=> "OFF", TC_TOP_SEL=> "ON", 
        TC_RESETN=> "ENABLED", TC_OC_MODE=> "TOGGLE", TC_OCR_SET=>  32767, 
        TC_TOP_SET=>  5200, GSR=> "ENABLED", TC_CCLK_SEL=>  1, TC_MODE=> "CTCM", 
        TC_SCLK_SEL=> "PCLOCK", EFB_TC_PORTMODE=> "NO_WB", EFB_TC=> "ENABLED", 
        SPI_WAKEUP=> "DISABLED", SPI_INTR_RXOVR=> "DISABLED", 
        SPI_INTR_TXOVR=> "DISABLED", SPI_INTR_RXRDY=> "DISABLED", 
        SPI_INTR_TXRDY=> "DISABLED", SPI_SLAVE_HANDSHAKE=> "DISABLED", 
        SPI_PHASE_ADJ=> "DISABLED", SPI_CLK_INV=> "DISABLED", 
        SPI_LSB_FIRST=> "DISABLED", SPI_CLK_DIVIDER=>  1, SPI_MODE=> "MASTER", 
        EFB_SPI=> "DISABLED", I2C2_WAKEUP=> "DISABLED", I2C2_GEN_CALL=> "DISABLED", 
        I2C2_CLK_DIVIDER=>  1, I2C2_BUS_PERF=> "100kHz", I2C2_SLAVE_ADDR=> "0b1000010", 
        I2C2_ADDRESSING=> "7BIT", EFB_I2C2=> "DISABLED", I2C1_WAKEUP=> "DISABLED", 
        I2C1_GEN_CALL=> "DISABLED", I2C1_CLK_DIVIDER=>  1, I2C1_BUS_PERF=> "100kHz", 
        I2C1_SLAVE_ADDR=> "0b1000001", I2C1_ADDRESSING=> "7BIT", 
        EFB_I2C1=> "DISABLED", EFB_WB_CLK_FREQ=> "50.0")
        port map (WBCLKI=>scuba_vlo, WBRSTI=>scuba_vlo, 
            WBCYCI=>scuba_vlo, WBSTBI=>scuba_vlo, WBWEI=>scuba_vlo, 
            WBADRI7=>scuba_vlo, WBADRI6=>scuba_vlo, WBADRI5=>scuba_vlo, 
            WBADRI4=>scuba_vlo, WBADRI3=>scuba_vlo, WBADRI2=>scuba_vlo, 
            WBADRI1=>scuba_vlo, WBADRI0=>scuba_vlo, WBDATI7=>scuba_vlo, 
            WBDATI6=>scuba_vlo, WBDATI5=>scuba_vlo, WBDATI4=>scuba_vlo, 
            WBDATI3=>scuba_vlo, WBDATI2=>scuba_vlo, WBDATI1=>scuba_vlo, 
            WBDATI0=>scuba_vlo, PLL0DATI7=>scuba_vlo, 
            PLL0DATI6=>scuba_vlo, PLL0DATI5=>scuba_vlo, 
            PLL0DATI4=>scuba_vlo, PLL0DATI3=>scuba_vlo, 
            PLL0DATI2=>scuba_vlo, PLL0DATI1=>scuba_vlo, 
            PLL0DATI0=>scuba_vlo, PLL0ACKI=>scuba_vlo, 
            PLL1DATI7=>scuba_vlo, PLL1DATI6=>scuba_vlo, 
            PLL1DATI5=>scuba_vlo, PLL1DATI4=>scuba_vlo, 
            PLL1DATI3=>scuba_vlo, PLL1DATI2=>scuba_vlo, 
            PLL1DATI1=>scuba_vlo, PLL1DATI0=>scuba_vlo, 
            PLL1ACKI=>scuba_vlo, I2C1SCLI=>scuba_vlo, 
            I2C1SDAI=>scuba_vlo, I2C2SCLI=>scuba_vlo, 
            I2C2SDAI=>scuba_vlo, SPISCKI=>scuba_vlo, SPIMISOI=>scuba_vlo, 
            SPIMOSII=>scuba_vlo, SPISCSN=>scuba_vlo, TCCLKI=>tc_clki, 
            TCRSTN=>tc_rstn, TCIC=>scuba_vlo, UFMSN=>scuba_vhi, 
            WBDATO7=>open, WBDATO6=>open, WBDATO5=>open, WBDATO4=>open, 
            WBDATO3=>open, WBDATO2=>open, WBDATO1=>open, WBDATO0=>open, 
            WBACKO=>open, PLLCLKO=>open, PLLRSTO=>open, PLL0STBO=>open, 
            PLL1STBO=>open, PLLWEO=>open, PLLADRO4=>open, PLLADRO3=>open, 
            PLLADRO2=>open, PLLADRO1=>open, PLLADRO0=>open, 
            PLLDATO7=>open, PLLDATO6=>open, PLLDATO5=>open, 
            PLLDATO4=>open, PLLDATO3=>open, PLLDATO2=>open, 
            PLLDATO1=>open, PLLDATO0=>open, I2C1SCLO=>open, 
            I2C1SCLOEN=>open, I2C1SDAO=>open, I2C1SDAOEN=>open, 
            I2C2SCLO=>open, I2C2SCLOEN=>open, I2C2SDAO=>open, 
            I2C2SDAOEN=>open, I2C1IRQO=>open, I2C2IRQO=>open, 
            SPISCKO=>open, SPISCKEN=>open, SPIMISOO=>open, 
            SPIMISOEN=>open, SPIMOSIO=>open, SPIMOSIEN=>open, 
            SPIMCSN7=>open, SPIMCSN6=>open, SPIMCSN5=>open, 
            SPIMCSN4=>open, SPIMCSN3=>open, SPIMCSN2=>open, 
            SPIMCSN1=>open, SPIMCSN0=>open, SPICSNEN=>open, 
            SPIIRQO=>open, TCINT=>tc_int, TCOC=>tc_oc, WBCUFMIRQ=>open, 
            CFGWAKE=>open, CFGSTDBY=>open);

end Structure;
