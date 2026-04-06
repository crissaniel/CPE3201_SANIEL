#include <xc.h>

// Back to the real physical crystal speed
#define _XTAL_FREQ 4000000UL 

#pragma config FOSC = XT, WDTE = OFF, PWRTE = ON, BOREN = ON, LVP = OFF, CPD = OFF, WRT = OFF, CP = OFF

#define SW1 PORTBbits.RB0
#define SW2 PORTBbits.RB1

unsigned char freqIndex = 0;
unsigned char dutyIndex = 0;

// The exact PR2 values for 500Hz, 1000Hz, and 2000Hz
unsigned char freqTable[3] = {124, 249, 124}; 

// The exact T2CON values to change the Prescaler (1:16, 1:4, 1:4)
unsigned char prescalerTable[3] = {0b00000110, 0b00000101, 0b00000101}; 

// 2D Array: Rows = Frequencies. Columns = Duty Cycles (10%, 25%, 50%, 75%, 95%)
unsigned int dutyTable[3][5] = {
    {50,  125, 250, 375, 475}, // Values for 500Hz  (Max 500)
    {100, 250, 500, 750, 950}, // Values for 1000Hz (Max 1000)
    {50,  125, 250, 375, 475}  // Values for 2000Hz (Max 500)
};

void setPWM(unsigned char fIdx, unsigned char dIdx) {
    PR2 = freqTable[fIdx];               
    T2CON = prescalerTable[fIdx];        
    
    unsigned int dutyval = dutyTable[fIdx][dIdx];
    CCPR1L = dutyval >> 2;               
    CCP1CON = (CCP1CON & 0xCF) | ((dutyval & 0x03) << 4); 
}

void main(void) {
    // 1. Configure Switch Inputs
    TRISBbits.TRISB0 = 1; 
    TRISBbits.TRISB1 = 1; 

    // Make sure PWM is completely OFF before we configure it
    CCP1CON = 0x00; 

    // 2. DEFAULT INITIALIZATION (Starts at 500Hz, 10% Duty Cycle)
    setPWM(freqIndex, dutyIndex);

    // 3. Turn on the output pin
    TRISCbits.TRISC2 = 0; 
    PORTCbits.RC2 = 0; 

    // 4. Safely start the Timer and PWM Module
    TMR2 = 0; 
    CCP1CON |= 0b00001100; 
    
    while(1) {
        
        // SW1: Cycle Frequency (500Hz -> 1000Hz -> 2000Hz)
        if(SW1 == 1) {
            __delay_ms(200); // Standard 200ms debounce for 4MHz
            freqIndex++;
            if(freqIndex > 2) freqIndex = 0; 
            
            setPWM(freqIndex, dutyIndex);
            while(SW1 == 1); // Wait until button is released
        }
        
        // SW2: Cycle Duty Cycle (10% -> 25% -> 50% -> 75% -> 95%)
        if(SW2 == 1) {
            __delay_ms(200); 
            dutyIndex++;
            if(dutyIndex > 4) dutyIndex = 0; 
            
            setPWM(freqIndex, dutyIndex);
            while(SW2 == 1); // Wait until button is released
        }
    }
}