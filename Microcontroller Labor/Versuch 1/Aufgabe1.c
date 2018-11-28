#include "C8051F340.h"
unsigned char input;
unsigned char ausgabe;
unsigned char tast1;
unsigned char tast2;
unsigned char tast3;
unsigned char tast4;

unsigned char g1;
unsigned char g2;
unsigned char g3;
unsigned char g4;
///////////////////////////////////////////////////////////////////
// Initialization
///////////////////////////////////////////////////////////////////
void Disable_Watchdog()
{
	PCA0MD &= ~0x40; // Disable Watchdog Timer
}
void Port_IO_Init()
{
	P1MDIN = 0xF9; // 1111 1001b Activate Analog Inputs on P1.1 and P1.2
	P2MDOUT = 0xFF; // 1111 1111b Activate PushPull for P2
	P3MDOUT = 0xFF; // 1111 1111b Activate PushPull for P3
	P4MDOUT = 0xF0; // 1111 0000b Activate PushPull for P4
	P0SKIP = 0xC3; // 1100 0011b Bit0+1: Skipped Pins for INT0/INT1
	// Bit6+7: Skipped Pins for Quartz
	P1SKIP = 0x06; // 0000 0110b Bit1+2: Skipped Pins for Analog Inputs
	XBR0 = 0x05; // 0000 0101b Bit0: Enable UART0 on Crossbar
	// Bit2: Enable SMBus on Crossbar
	XBR1 = 0x40; // 0100 0000b Enable Crossbar
	CKCON = 0x02; // 0000 0010b Sysclk/48 for Timer0 and Timer1
	IT01CF = 0x10; // INT0 at P0.0, INT1 at P0.1
}
void Oscillator_Init()
{
	OSCXCN = 0x20; // 0010 0000b Enable External Clock
	FLSCL = 0x90; // 1001 0000b Set if Clock > 25 MHz
	CLKSEL = 0x01; // 0000 0001b Select External Clock as System Clock
	OSCICN = 0x00; // 0000 0000b Disable Internal Clock
}
void Init_Device(void)
{
	Port_IO_Init();
	Oscillator_Init();
}
void Init_Vars()
{
}
///////////////////////////////////////////////////////////////////
// Main
///////////////////////////////////////////////////////////////////
void main()
{
	Disable_Watchdog();
	Init_Device();
	Init_Vars();

	while(1) 
	{
		input = P4;
		input= ~input;
		
		tast1 = (input & 8) == 8;
		tast2 = (input & 4) == 4;
		tast3 = (input & 2) == 2;
		tast4 = (input & 1) == 1;
		
		g4 = tast4;
		g3 = tast4^tast3;
		g2 = tast2^tast3;
		g1 = tast1^tast2;

		ausgabe = ~(16 * g4 + 32 * g3 + 64 * g2 + 128 * g1);
		ausgabe |= 0x0F;
		P4 = ausgabe;
	}	
	
}