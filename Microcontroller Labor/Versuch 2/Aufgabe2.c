#include "C8051F340.h"

unsigned char number = 0;
unsigned char state = 0;
unsigned char i = 0;
unsigned char k = 0;
unsigned char seg7code[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x58, 0x5E, 0x79, 0x71}; 
unsigned char lauflicht[] = {0x01, 0x20, 0x40, 0x04, 0x08, 0x10, 0x40, 0x04, 0x08, 0x04, 0x02, 0x01, 0x01, 0x01};
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
	// INT 0
	IT0 = 1;
	EX0 = 1;
	IE0 = 0;
	//INT 1
	IT1 = 1;
	EX1 = 1;
	IE1 = 0;
	//TIMER 0
	TMOD = 0x01;
	ET0 = 1;
	TF0 = 0;
	TH0 = 0;
	TL0 = 0;

	
	EA = 1;
	P2 = 1;
	while(1) 
	{
		P3 = seg7code[number % 10];
		//P2 = 1;
		for (i = 0; i < 255; i++) 
		{
			P2 = 1;
		}
		P2 = 0;
		P3 = seg7code[number / 10];
		//P2 = 2;
		for (i = 0; i < 255; i++) 
		{
			P2 = 2;
		}
		P2 = 0;
		
		P3 = lauflicht[state];
		if (state >= 0 && state < 4)
		{
			P2 = 32;
		}	
		else if (state == 4 || state == 13)
		{
			P2 = 16;
		}
		else if (state >= 5 && state < 8 || state == 12)
		{
			P2 = 8;
		}
		else if (state >= 8 && state < 12)
		{
			P2 = 4;
		}
		for (i = 0; i < 255; i++) 
		{
		}
		
		P2 = 0;
	}	
}

void IRSP_int_0() interrupt 0
{
	if (number < 100)
	{
		number++;
	}
	else
	{
		number = 0;
	}
}

void IRSP_int_1() interrupt 2
{
	TR0 = 1;
}

void IRSP_timer_0() interrupt 1
{
	EA = 0;
	TR0 = 0;
	TF0 = 0;
	TH0 = 0;
	TL0 = 0;
	if (state < 13)
	{
		state++;
	}
	else 
	{
		state = 0;
	}
	EA = 1;
}