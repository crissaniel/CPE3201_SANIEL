opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_setPWM
	FNCALL	_setPWM,___bmul
	FNROOT	_main
	global	_dutyTable
	global	_freqTable
	global	_prescalerTable
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-7.c"
	line	21

;initializer for _dutyTable
	retlw	032h
	retlw	0

	retlw	07Dh
	retlw	0

	retlw	0FAh
	retlw	0

	retlw	077h
	retlw	01h

	retlw	0DBh
	retlw	01h

	retlw	064h
	retlw	0

	retlw	0FAh
	retlw	0

	retlw	0F4h
	retlw	01h

	retlw	0EEh
	retlw	02h

	retlw	0B6h
	retlw	03h

	retlw	032h
	retlw	0

	retlw	07Dh
	retlw	0

	retlw	0FAh
	retlw	0

	retlw	077h
	retlw	01h

	retlw	0DBh
	retlw	01h

	line	15

;initializer for _freqTable
	retlw	07Ch
	retlw	0F9h
	retlw	07Ch
	line	18

;initializer for _prescalerTable
	retlw	06h
	retlw	05h
	retlw	05h
	global	_dutyIndex
	global	_freqIndex
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_PORTCbits
_PORTCbits	set	0x7
	global	_T2CON
_T2CON	set	0x12
	global	_TMR2
_TMR2	set	0x11
	global	_PR2
_PR2	set	0x92
	global	_TRISBbits
_TRISBbits	set	0x86
	global	_TRISCbits
_TRISCbits	set	0x87
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"LE4-7.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_dutyIndex:
       ds      1

_freqIndex:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-7.c"
	line	21
_dutyTable:
       ds      30

psect	dataBANK0
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-7.c"
	line	15
_freqTable:
       ds      3

psect	dataBANK0
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-7.c"
	line	18
_prescalerTable:
       ds      3

	file	"LE4-7.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+36)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_main:	; 0 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	ds	1
??___bmul:	; 0 bytes @ 0x1
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
?_setPWM:	; 0 bytes @ 0x4
	global	setPWM@dIdx
setPWM@dIdx:	; 1 bytes @ 0x4
	ds	1
??_setPWM:	; 0 bytes @ 0x5
	ds	3
	global	setPWM@dutyval
setPWM@dutyval:	; 2 bytes @ 0x8
	ds	2
	global	setPWM@fIdx
setPWM@fIdx:	; 1 bytes @ 0xA
	ds	1
??_main:	; 0 bytes @ 0xB
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        36
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80      0      38
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_setPWM
;!    _setPWM->___bmul
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0     410
;!                                             11 COMMON     3     3      0
;!                             _setPWM
;! ---------------------------------------------------------------------------------
;! (1) _setPWM                                               7     6      1     410
;!                                              4 COMMON     7     6      1
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               4     3      1     118
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _setPWM
;!     ___bmul
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      0      26       5       47.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      34      12        0.0%
;!ABS                  0      0      34       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "C:\Users\ASUS\Downloads\Embedded\PA4\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_setPWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-7.c"
	line	36
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-7.c"
	line	36
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	38
	
l590:	
;LE4-7.c: 38: TRISBbits.TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(134)^080h,0	;volatile
	line	39
;LE4-7.c: 39: TRISBbits.TRISB1 = 1;
	bsf	(134)^080h,1	;volatile
	line	42
	
l592:	
;LE4-7.c: 42: CCP1CON = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(23)	;volatile
	line	45
	
l594:	
;LE4-7.c: 45: setPWM(freqIndex, dutyIndex);
	movf	(_dutyIndex),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(setPWM@dIdx)
	movf	(_freqIndex),w
	fcall	_setPWM
	line	48
	
l596:	
;LE4-7.c: 48: TRISCbits.TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h,2	;volatile
	line	49
	
l598:	
;LE4-7.c: 49: PORTCbits.RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),2	;volatile
	line	52
	
l600:	
;LE4-7.c: 52: TMR2 = 0;
	clrf	(17)	;volatile
	line	53
	
l602:	
;LE4-7.c: 53: CCP1CON |= 0b00001100;
	movlw	(0Ch)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	iorwf	(23),f	;volatile
	goto	l604
	line	55
;LE4-7.c: 55: while(1) {
	
l36:	
	line	58
	
l604:	
;LE4-7.c: 58: if(PORTBbits.RB0 == 1) {
	btfss	(6),0	;volatile
	goto	u151
	goto	u150
u151:
	goto	l37
u150:
	line	59
	
l606:	
;LE4-7.c: 59: _delay((unsigned long)((200)*(4000000UL/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	186
movwf	((??_main+0)+0),f
u217:
	decfsz	((??_main+0)+0),f
	goto	u217
	decfsz	((??_main+0)+0+1),f
	goto	u217
	decfsz	((??_main+0)+0+2),f
	goto	u217
	nop
opt asmopt_on

	line	60
	
l608:	
;LE4-7.c: 60: freqIndex++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_freqIndex),f
	line	61
	
l610:	
;LE4-7.c: 61: if(freqIndex > 2) freqIndex = 0;
	movlw	(03h)
	subwf	(_freqIndex),w
	skipc
	goto	u161
	goto	u160
u161:
	goto	l614
u160:
	
l612:	
	clrf	(_freqIndex)
	goto	l614
	
l38:	
	line	63
	
l614:	
;LE4-7.c: 63: setPWM(freqIndex, dutyIndex);
	movf	(_dutyIndex),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(setPWM@dIdx)
	movf	(_freqIndex),w
	fcall	_setPWM
	line	64
;LE4-7.c: 64: while(PORTBbits.RB0 == 1);
	goto	l39
	
l40:	
	
l39:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u171
	goto	u170
u171:
	goto	l39
u170:
	goto	l37
	
l41:	
	line	65
	
l37:	
	line	68
;LE4-7.c: 65: }
;LE4-7.c: 68: if(PORTBbits.RB1 == 1) {
	btfss	(6),1	;volatile
	goto	u181
	goto	u180
u181:
	goto	l604
u180:
	line	69
	
l616:	
;LE4-7.c: 69: _delay((unsigned long)((200)*(4000000UL/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	186
movwf	((??_main+0)+0),f
u227:
	decfsz	((??_main+0)+0),f
	goto	u227
	decfsz	((??_main+0)+0+1),f
	goto	u227
	decfsz	((??_main+0)+0+2),f
	goto	u227
	nop
opt asmopt_on

	line	70
	
l618:	
;LE4-7.c: 70: dutyIndex++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_dutyIndex),f
	line	71
	
l620:	
;LE4-7.c: 71: if(dutyIndex > 4) dutyIndex = 0;
	movlw	(05h)
	subwf	(_dutyIndex),w
	skipc
	goto	u191
	goto	u190
u191:
	goto	l624
u190:
	
l622:	
	clrf	(_dutyIndex)
	goto	l624
	
l43:	
	line	73
	
l624:	
;LE4-7.c: 73: setPWM(freqIndex, dutyIndex);
	movf	(_dutyIndex),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(setPWM@dIdx)
	movf	(_freqIndex),w
	fcall	_setPWM
	line	74
;LE4-7.c: 74: while(PORTBbits.RB1 == 1);
	goto	l44
	
l45:	
	
l44:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),1	;volatile
	goto	u201
	goto	u200
u201:
	goto	l44
u200:
	goto	l604
	
l46:	
	goto	l604
	line	75
	
l42:	
	goto	l604
	line	76
	
l47:	
	line	55
	goto	l604
	
l48:	
	line	77
	
l49:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_setPWM

;; *************** function _setPWM *****************
;; Defined at:
;;		line 27 in file "C:\Users\ASUS\Downloads\Embedded\PA4\LE4-7.c"
;; Parameters:    Size  Location     Type
;;  fIdx            1    wreg     unsigned char 
;;  dIdx            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  fIdx            1   10[COMMON] unsigned char 
;;  dutyval         2    8[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	27
global __ptext1
__ptext1:	;psect for function _setPWM
psect	text1
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-7.c"
	line	27
	global	__size_of_setPWM
	__size_of_setPWM	equ	__end_of_setPWM-_setPWM
	
_setPWM:	
;incstack = 0
	opt	stack 6
; Regs used in _setPWM: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setPWM@fIdx stored from wreg
	movwf	(setPWM@fIdx)
	line	28
	
l582:	
;LE4-7.c: 28: PR2 = freqTable[fIdx];
	movf	(setPWM@fIdx),w
	addlw	_freqTable&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	29
;LE4-7.c: 29: T2CON = prescalerTable[fIdx];
	movf	(setPWM@fIdx),w
	addlw	_prescalerTable&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	31
	
l584:	
;LE4-7.c: 31: unsigned int dutyval = dutyTable[fIdx][dIdx];
	movf	(setPWM@dIdx),w
	movwf	(??_setPWM+0)+0
	movlw	01h
u135:
	clrc
	rlf	(??_setPWM+0)+0,f
	addlw	-1
	skipz
	goto	u135
	movlw	(0Ah)
	movwf	(??_setPWM+1)+0
	movf	(??_setPWM+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setPWM@fIdx),w
	fcall	___bmul
	addlw	_dutyTable&0ffh
	addwf	0+(??_setPWM+0)+0,w
	movwf	(??_setPWM+2)+0
	movf	0+(??_setPWM+2)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(setPWM@dutyval)
	incf	fsr0,f
	movf	indf,w
	movwf	(setPWM@dutyval+1)
	line	32
	
l586:	
;LE4-7.c: 32: CCPR1L = dutyval >> 2;
	movf	(setPWM@dutyval+1),w
	movwf	(??_setPWM+0)+0+1
	movf	(setPWM@dutyval),w
	movwf	(??_setPWM+0)+0
	clrc
	rrf	(??_setPWM+0)+1,f
	rrf	(??_setPWM+0)+0,f
	clrc
	rrf	(??_setPWM+0)+1,f
	rrf	(??_setPWM+0)+0,f
	movf	0+(??_setPWM+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	33
	
l588:	
;LE4-7.c: 33: CCP1CON = (CCP1CON & 0xCF) | ((dutyval & 0x03) << 4);
	movf	(setPWM@dutyval),w
	andlw	03h
	movwf	(??_setPWM+0)+0
	movlw	04h
u145:
	clrc
	rlf	(??_setPWM+0)+0,f
	addlw	-1
	skipz
	goto	u145
	movf	(23),w	;volatile
	andlw	0CFh
	iorwf	0+(??_setPWM+0)+0,w
	movwf	(23)	;volatile
	line	34
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_setPWM
	__end_of_setPWM:
	signat	_setPWM,8312
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setPWM
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext2
__ptext2:	;psect for function ___bmul
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l566:	
	clrf	(___bmul@product)
	goto	l568
	line	42
	
l150:	
	line	43
	
l568:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u111
	goto	u110
u111:
	goto	l572
u110:
	line	44
	
l570:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l572
	
l151:	
	line	45
	
l572:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l574:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l576:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u121
	goto	u120
u121:
	goto	l568
u120:
	goto	l578
	
l152:	
	line	50
	
l578:	
	movf	(___bmul@product),w
	goto	l153
	
l580:	
	line	51
	
l153:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
