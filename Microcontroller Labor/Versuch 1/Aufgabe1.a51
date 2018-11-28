$nomod51
$nolist
$include(C8051F340.INC)
$list
cseg at 0h
 jmp init
cseg at 100h
///////////////////////////////////////////////////////////////////
// Initialization
///////////////////////////////////////////////////////////////////
Port_IO_Init:
	mov P1MDIN , 0F9h // 1111 1001b Activate Analog Inputs on P1.1 and P1.2
	mov P2MDOUT , 0FFh // 1111 1111b Activate PushPull for P2
	mov P3MDOUT ,0FFh // 1111 1111b Activate PushPull for P3
	mov P4MDOUT ,0F0h // 1111 0000b Activate PushPull for P4
	mov P0SKIP ,0C3h // 1100 0011b Bit0+1: Skipped Pins for INT0/INT1
	// Bit6+7: Skipped Pins for Quartz
	mov P1SKIP ,006h // 0000 0110b Bit1+2: Skipped Pins for Analog Inputs
	mov XBR0 ,005h // 0000 0101b Bit0: Enable UART0 on Crossbar
	// Bit2: Enable SMBus on Crossbar
	mov XBR1 ,040h // 0100 0000b Enable Crossbar
	mov CKCON ,002h // 0000 0010b Sysclk/48 for Timer0 and Timer1
	mov IT01CF ,010h // INT0 at P0.0, INT1 at P0.1
	ret
Oscillator_Init: 
	mov OSCXCN, #20h // 0010 0000b Enable External Clock
	mov FLSCL, #90h // 1001 0000b Set if Clock > 25 MHz
	mov CLKSEL, #01h // 0000 0001b Select External Clock as System Clock
	mov OSCICN, #00h // 0000 0000b Disable Internal Clock
	ret
Init_Device: 
	call Port_IO_Init
	call Oscillator_Init
	ret
///////////////////////////////////////////////////////////////////
// Main
///////////////////////////////////////////////////////////////////
init: 
	mov A, PCA0MD
	anl A, #0BFh
	mov PCA0MD, A // Disable Watchdog timer
	call Init_Device
	// Place your code here:
	loop:	
		mov A, P4
		cpl A
		anl A, #0fh
		mov R6, A
		rl A
		anl A, #0fh
		mov R7, A
		mov A, R6
		xrl A, R7
		
		cpl A
		rl A
		rl A
		rl A
		rl A
		mov P4, A
			
		jmp loop
end