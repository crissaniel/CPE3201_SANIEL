#include <xc.h>

#pragma config FOSC  = XT
#pragma config WDTE  = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP   = OFF
#pragma config CPD   = OFF
#pragma config WRT   = OFF
#pragma config CP    = OFF

#define _XTAL_FREQ 4000000
#define EN_WHOLE RD0    // Enables whole number BCD
#define EN_DEC RD1    // Enables decimal number BCD
#define DP RD2

void interrupt isr(void)
{ 
    //int adc_value;
    int scaled;
    int round;
    int whole;
    int decimal;
    int temp;
    if (ADIF) // Check if A/D conversion is complete
    {
       temp = ADRESH;
       temp = (temp << 8) | ADRESL;
        // Combine high and low registers for 10-bit result
        //adc_value = (int)((ADRESH << 8) | ADRESL);

        // Scale 0-1023 to 0-50 (represents 0.0V to 5.0V) 
       
        // use long for adc_value to avoid overflow
        scaled = (int)((long)temp *500 / 1023); // 500 for precision

        round = (scaled + 5) / 10;
        
        whole   = round  / 10;   // Whole number digit 
        decimal = round % 10;   // Decimal digit 

        // Upper nibble = whole, lower nibble = decimal 
        PORTB = (PORTB & 0xF0) | (whole & 0x0F);
		DP = 1;
        EN_WHOLE = 1;
        EN_DEC = 0;
        __delay_ms(8);
       
       PORTB = (PORTB & 0xF0) | (decimal & 0x0F);
       DP = 0;
	   EN_WHOLE = 0;
       EN_DEC = 1;
       __delay_ms(8);

        ADIF = 0; // Clear interrupt flag
        GO   = 1; 
    }
}

void main(void)
{
    TRISB = 0x00; // PORTB is for output
    PORTB = 0x00; // Clear 7seg display
    TRISD = 0x00;
    PORTD = 0x00;

    // Right justified, all PORTA analog, VREF = VDD/VSS
    ADCON1 = 0x80;  
    // FOSC/2, channel AN0, module ON
    ADCON0 = 0x41;  

    __delay_ms(2);

    ADIF = 0; // Clear flag 
    ADIE = 1; // Enable A/D interrupt 
    PEIE = 1; // Enable peripheral interrupts 
    GIE  = 1; // Enable global interrupts 

    GO = 1;   // Start first conversion

    for(;;)   // Foreground Routine
    {
        // ISR handles the real-time updates 
    }
}