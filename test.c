#include <xc.h>

#pragma config FOSC = XT, WDTE = OFF, PWRTE = ON, BOREN = ON, LVP = OFF, CPD = OFF, WRT = OFF, CP = OFF

// Function prototypes 
void initLCD();
void instCtrl(unsigned char cmd);
void delay(unsigned int ms);
void dataCtrl(unsigned char data);

// Mapping for 4x4 Keypad (74C922)
static const char keypadLayout[] = "123A456B789C*0#D";

void instCtrl(unsigned char cmd) {
    PORTB = cmd;
    RC0 = 0; // RS: Command
    RC2 = 0; // RW: Write
    RC1 = 1; // Enable High
    delay(1);
    RC1 = 0; // Enable Low
}

void dataCtrl(unsigned char data) {
    PORTB = data;
    RC0 = 1; // RS: Data
    RC2 = 0; // RW: Write
    RC1 = 1; // Enable High
    delay(1);
    RC1 = 0; // Enable Low
}

void initLCD() {
    delay(15);      
    instCtrl(0x38); // 8-bit, 2-line mode
    
    // TWEAKED: 0x0F enables Display(1), Cursor(1), and Blink(1)
    instCtrl(0x0F); 
    
    instCtrl(0x01); // Clear
    delay(2);       
    instCtrl(0x06); // Increment cursor
}

void delay(unsigned int ms) {
    unsigned int i, k;
    for(i = 0; i < ms; i++) {
        for(k = 0; k < 1000; k++);
    }
}

int main(void) {
    // Hardware Setup based on schematic
    TRISB = 0x00; // LCD Data on Port B
    TRISC = 0x00; // LCD Control on Port C
    TRISD = 0xFF; // Keypad Input on Port D
    
    ADCON1 = 0x06; // Disable analog pins to ensure digital logic

    initLCD();
    unsigned char posCount = 0;

    while(1) {
        // Poll Data Available (DA) from 74C922
        if(RD4) { 
            unsigned char hexIn = PORTD & 0x0F; 
            
            // Software debounce: wait for finger lift
            while(RD4); 

            // Auto-Clear at 80 characters (4-line LCD limit)
            if(posCount >= 80) {
                instCtrl(0x01);
                delay(2);
                posCount = 0;
            }

            // TWEAKED: Condensed cursor positioning
            if (posCount == 0)       instCtrl(0x80); // Line 1
            else if (posCount == 20) instCtrl(0xC0); // Line 2
            else if (posCount == 40) instCtrl(0x94); // Line 3
            else if (posCount == 60) instCtrl(0xD4); // Line 4

            dataCtrl(keypadLayout[hexIn]);
            posCount++;
        }
    }
    return 0;
}

