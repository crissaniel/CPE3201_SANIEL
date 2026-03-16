#include <xc.h>

#define _XTAL_FREQ 4000000 

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF 

const unsigned char keyMap[16] = {
    1, 2, 3, 0, 
    4, 5, 6, 0, 
    7, 8, 9, 0, 
    0, 0, 0, 0  
};

unsigned char current_count = 0;
unsigned char raw_key = 0;

// FIXED: Reverted back to the v1.33 compatible interrupt syntax
void interrupt ISR(void) {
    
    // External Interrupt (Keypad Press on RB0)
    if (INTF == 1) {
        INTF = 0; // Clear the hardware flag
        
        // Read the keypad, map it, and overwrite the counter
        raw_key = PORTD & 0x0F;
        current_count = keyMap[raw_key];
        
        // Output immediately so the display feels responsive
        PORTC = current_count;
    }
}

void main(void) {
    // 1. Port Configuration
    TRISB = 0xFF; // RB0 as input (Keypad DAVBL trigger)
    TRISC = 0x00; // RC0-RC3 as output (7-Segment Decoder)
    TRISD = 0xFF; // RD0-RD3 as input (Keypad Data)
    
    PORTC = current_count; // Start at 0

    // 2. Interrupt Configuration
    // 0x40 = 0100 0000 -> Rising Edge INT (Bit 6)
    OPTION_REG = 0x40; 

    INTF = 0; 
    INTE = 1; // Enable External Interrupt (RB0)

    GIE = 1;  // Enable Global Interrupts

    // 3. Main Loop
    while(1) {
        // TRADITIONAL BLOCKING DELAY: 800 milliseconds
        __delay_ms(800); 
        
        // Increment the counter
        current_count++;
        
        // Wrap around back to 0 if it goes past 9
        if (current_count > 9) {
            current_count = 0;
        }
        
        // Update the 7-segment display
        PORTC = current_count; 
    }
}