#include<xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

volatile unsigned char mode = 0;
volatile unsigned char blink_count = 0;

void interrupt ISR(void){
	GIE = 0;
	if(INTF == 1){
		INTF = 0;
		mode^=1;
	}
	else if(T0IF == 1){
		T0IF = 0;
		if(mode == 1){
			RC0 = 1;
		}
		else{
			blink_count++;
			if(blink_count == 52){
				RC0 ^= 1;
				blink_count = 0;
			}
		} 
	}
	GIE = 1;
}

void main(void)	{
	TRISB = 0x0F;
	TRISC = 0X00;
	PORTC = 0x00;
	PORTB = 0x00;

	OPTION_REG = 0xC4;

	INTF = 0;
	INTE = 1;

	T0IF = 0;
	T0IE = 1;

	GIE = 1;

	while(1){
	
	}
}