#include <xc.h>

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

// Global variables declared at the top for C89/v1.33 compatibility
unsigned char current_count = 0;
unsigned int ms_ticks = 0;       // Tracks milliseconds
unsigned char raw_key = 0;

// Interrupt Service Routine
void interrupt ISR(void) {
    
    // 1. External Interrupt (Keypad Press on RB0)
    if (INTF == 1) {
        INTF = 0; // Clear the hardware flag
        
        // Read the keypad, map it, and overwrite the counter
        raw_key = PORTD & 0x0F;
        current_count = keyMap[raw_key];
        
        // Output immediately so the display feels responsive
        PORTC = current_count;
        
        // Reset the timer so it waits a full 0.8s before going to the next number
        ms_ticks = 0; 
    }
    
    // 2. Timer0 Interrupt (Triggers exactly every 1ms)
    if (T0IF == 1) {
        T0IF = 0;     // Clear hardware flag
        TMR0 = 6;     // Preload TMR0 with 6
        ms_ticks++;   // Add 1 millisecond to our tracker
    }
}

void main(void) {
    // 1. Port Configuration
    TRISB = 0xFF; // RB0 as input (Keypad DAVBL trigger)
    TRISC = 0x00; // RC0-RC3 as output (7-Segment Decoder)
    TRISD = 0xFF; // RD0-RD3 as input (Keypad Data)
    
    PORTC = current_count; // Start at 0

    // 2. Interrupt & Timer0 Configuration
    // 0xC1 = 1100 0001 -> Rising Edge INT, Internal Clock, 1:4 Prescaler
    OPTION_REG = 0xC1; 
    TMR0 = 6; // Initial preload for Timer0

    INTF = 0; 
    INTE = 1; // Enable External Interrupt (RB0)

    T0IF = 0;
    T0IE = 1; // Enable Timer0 Interrupt

    GIE = 1;  // Enable Global Interrupts

    // 3. Main Loop
    while(1) {
        // CHANGED: If 800 milliseconds (0.8 seconds) have passed...
        if (ms_ticks >= 800) {
            
            // Briefly disable global interrupts to safely reset the tracker
            GIE = 0;
            ms_ticks = 0;
            GIE = 1;
            
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
}