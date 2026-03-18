#include <xc.h>

#define _XTAL_FREQ 4M
#define RS RB5
#define EN RB7
#define RW RB6

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

unsigned char current_count = 0;
int j;

void delay(unsigned int ms) {
    unsigned int i, k;
    for(i = 0; i < ms; i++) {
        for(k = 0; k < 1000; k++);
    }
}

void interrupt ISR(void) {
    
    // 1. External Interrupt (Keypad Press on RB0/DAVBL)
    if (INTF == 1) { 
        INTF = 0; // Clear hardware flag

		PORTC = current_count;
    }
    // 2. Timer0 Interrupt (Triggers every 8.192 ms)
    if (T0IF == 1) { 
        T0IF = 0;       // Clear hardware flag
    }
}


void instCtrl(unsigned char data)
{
    PORTC= data;
    RS=0;
    RW=0;
    EN=1;
    delay(2);
    EN=0;
}

void initLCD()
{
    instCtrl(0x38); // 0011 1000 -> 8 bits for data + 2 line display + 5 by 7 dot matris + X +X where X is dont care bits
    instCtrl(0x08); //turning off
    instCtrl(0x01); //clearing display
    instCtrl(0x06); // entry mode set 
    instCtrl(0x0E); // 0000 1100  -> turning display on | L L L L H D C B | Where D is high when display on nad L when off | C is for curose 1 = on 0 = off | B is for blinkin 1 = on 0 = off
    instCtrl(0x06); // 0000 0110 -> 
    instCtrl(0x80); // 1000 0000 
   
   
}

void dataCtrl(unsigned char b)
{
    PORTC=b;
    RS=1;
    RW=0;
    EN=1;
    delay(2);
    EN=0;
}

void main(void)
 {
    
    TRISB = 0X00;
    TRISC = 0X00;
    TRISD = 0XFF;
    PORTB = 0X00;
    // Intializing LCD
    initLCD();
   instCtrl(0xC6);
	dataCtrl('T');
   dataCtrl('i');
   dataCtrl('m');
   dataCtrl('e');
   dataCtrl('r');
   dataCtrl(':');
	instCtrl(0x9D); 
	dataCtrl('1');
	dataCtrl('4');
	instCtrl(0xD4);

int count = 14;
unsigned char my_count= 0;
while(1){
	while(!RB0){
		while(count!=0){
			count--;
			delay(98);
			current_count = count;
			dataCtrl(current_count);
		}
	}
      
 }
}

 