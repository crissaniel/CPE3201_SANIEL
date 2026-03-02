#include <xc.h>

// Config bits
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void delay_loop(void) {
    int cnt;
    for(cnt = 0; cnt < 10000; cnt++); // crude delay
}

void main(void) {
    ADCON1 = 0x07;   // Configure all PORTA pins as digital I/O
    TRISB = 0x00;   
    TRISA = 0x01;   
	PORTB = 0X00;

    while(1) {
        if(RA0 == 1) {   // Button pressed
            for(int i = 0; i < 3; i++) {
                RB0 = 1;   // LED ON
                delay_loop();
                RB0 = 0;   // LED OFF
                delay_loop();
            }
        }
    }
}
