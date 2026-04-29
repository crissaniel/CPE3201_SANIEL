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
	FNROOT	_main
	FNCALL	_isr,___aldiv
	FNCALL	_isr,___awdiv
	FNCALL	_isr,___awmod
	FNCALL	_isr,___lmul
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_ADIF
_ADIF	set	0x66
	global	_GIE
_GIE	set	0x5F
	global	_GO
_GO	set	0xFA
	global	_PEIE
_PEIE	set	0x5E
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_RD2
_RD2	set	0x42
	global	_ADCON1
_ADCON1	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_TRISB
_TRISB	set	0x86
	global	_TRISD
_TRISD	set	0x88
	global	_ADIE
_ADIE	set	0x466
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function ___aldiv
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
	file	"LE5-2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_isr:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
??___lmul:	; 0 bytes @ 0x8
	ds	1
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	4
??___aldiv:	; 0 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	4
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x8
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x9
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xA
	ds	4
??_isr:	; 0 bytes @ 0xE
	ds	10
	global	isr@scaled
isr@scaled:	; 2 bytes @ 0x18
	ds	2
	global	isr@whole
isr@whole:	; 2 bytes @ 0x1A
	ds	2
	global	isr@decimal
isr@decimal:	; 2 bytes @ 0x1C
	ds	2
	global	isr@round
isr@round:	; 2 bytes @ 0x1E
	ds	2
	global	isr@temp
isr@temp:	; 2 bytes @ 0x20
	ds	2
??_main:	; 0 bytes @ 0x22
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     36      36
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
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    _isr->___aldiv
;!    ___aldiv->___lmul
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _isr in BANK0
;!
;!    _isr->___aldiv
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0       0
;!                                             34 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _isr                                                 20    20      0    1678
;!                                             14 BANK0     20    20      0
;!                            ___aldiv
;!                            ___awdiv
;!                            ___awmod
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              13     5      8     198
;!                                              0 COMMON    13     5      8
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4     402
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     512
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     406
;!                                             13 COMMON     1     1      0
;!                                              0 BANK0     14     6      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _isr (ROOT)
;!   ___aldiv
;!     ___lmul (ARG)
;!   ___awdiv
;!   ___awmod
;!   ___lmul
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     24      24       5       45.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 60 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA5\LE5-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA5\LE5-2.c"
	line	60
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA5\LE5-2.c"
	line	60
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2]
	line	62
	
l866:	
;LE5-2.c: 62: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	63
;LE5-2.c: 63: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	64
;LE5-2.c: 64: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	65
;LE5-2.c: 65: PORTD = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	68
	
l868:	
;LE5-2.c: 68: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	70
	
l870:	
;LE5-2.c: 70: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	72
	
l872:	
;LE5-2.c: 72: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_main+0)+0+1),f
	movlw	151
movwf	((??_main+0)+0),f
u717:
	decfsz	((??_main+0)+0),f
	goto	u717
	decfsz	((??_main+0)+0+1),f
	goto	u717
	nop2
opt asmopt_on

	line	74
	
l874:	
;LE5-2.c: 74: ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	75
	
l876:	
;LE5-2.c: 75: ADIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	76
	
l878:	
;LE5-2.c: 76: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	77
	
l880:	
;LE5-2.c: 77: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	79
	
l882:	
;LE5-2.c: 79: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	82
;LE5-2.c: 81: for(;;)
	
l41:	
	line	84
;LE5-2.c: 82: {
;LE5-2.c: 84: }
	goto	l41
	
l42:	
	line	85
	
l43:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 17 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA5\LE5-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2   32[BANK0 ] int 
;;  round           2   30[BANK0 ] int 
;;  decimal         2   28[BANK0 ] int 
;;  whole           2   26[BANK0 ] int 
;;  scaled          2   24[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          0      10       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___aldiv
;;		___awdiv
;;		___awmod
;;		___lmul
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	17
global __ptext1
__ptext1:	;psect for function _isr
psect	text1
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA5\LE5-2.c"
	line	17
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	stack 6
; Regs used in _isr: [wreg+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isr+6)
	movf	fsr0,w
	movwf	(??_isr+7)
	movf	pclath,w
	movwf	(??_isr+8)
	movf	btemp+1,w
	movwf	(??_isr+9)
	ljmp	_isr
psect	text1
	line	25
	
i1l828:	
;LE5-2.c: 20: int scaled;
;LE5-2.c: 21: int round;
;LE5-2.c: 22: int whole;
;LE5-2.c: 23: int decimal;
;LE5-2.c: 24: int temp;
;LE5-2.c: 25: if (ADIF)
	btfss	(102/8),(102)&7	;volatile
	goto	u70_21
	goto	u70_20
u70_21:
	goto	i1l38
u70_20:
	line	27
	
i1l830:	
;LE5-2.c: 26: {
;LE5-2.c: 27: temp = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_isr+0)+0
	clrf	(??_isr+0)+0+1
	movf	0+(??_isr+0)+0,w
	movwf	(isr@temp)
	movf	1+(??_isr+0)+0,w
	movwf	(isr@temp+1)
	line	28
	
i1l832:	
;LE5-2.c: 28: temp = (temp << 8) | ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isr+0)+0
	clrf	(??_isr+0)+0+1
	movf	(isr@temp+1),w
	movwf	(??_isr+2)+0+1
	movf	(isr@temp),w
	movwf	(??_isr+2)+0
	movf	(??_isr+2)+0,w
	movwf	(??_isr+2)+1
	clrf	(??_isr+2)+0
	movf	0+(??_isr+0)+0,w
	iorwf	0+(??_isr+2)+0,w
	movwf	(??_isr+4)+0
	movf	1+(??_isr+0)+0,w
	iorwf	1+(??_isr+2)+0,w
	movwf	1+(??_isr+4)+0
	movf	0+(??_isr+4)+0,w
	movwf	(isr@temp)
	movf	1+(??_isr+4)+0,w
	movwf	(isr@temp+1)
	line	35
	
i1l834:	
;LE5-2.c: 35: scaled = (int)((long)temp *500 / 1023);
	movlw	0
	movwf	(___aldiv@divisor+3)
	movlw	0
	movwf	(___aldiv@divisor+2)
	movlw	03h
	movwf	(___aldiv@divisor+1)
	movlw	0FFh
	movwf	(___aldiv@divisor)

	movf	(isr@temp),w
	movwf	(___lmul@multiplier)
	movf	(isr@temp+1),w
	movwf	(___lmul@multiplier+1)
	movlw	0
	btfsc	(___lmul@multiplier+1),7
	movlw	255
	movwf	(___lmul@multiplier+2)
	movwf	(___lmul@multiplier+3)
	movlw	0
	movwf	(___lmul@multiplicand+3)
	movlw	0
	movwf	(___lmul@multiplicand+2)
	movlw	01h
	movwf	(___lmul@multiplicand+1)
	movlw	0F4h
	movwf	(___lmul@multiplicand)

	fcall	___lmul
	movf	(3+(?___lmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@dividend+3)
	movf	(2+(?___lmul)),w
	movwf	(___aldiv@dividend+2)
	movf	(1+(?___lmul)),w
	movwf	(___aldiv@dividend+1)
	movf	(0+(?___lmul)),w
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___aldiv)))),w
	clrf	(isr@scaled+1)
	addwf	(isr@scaled+1)
	movf	0+(((0+(?___aldiv)))),w
	clrf	(isr@scaled)
	addwf	(isr@scaled)

	line	37
	
i1l836:	
;LE5-2.c: 37: round = (scaled + 5) / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(isr@scaled),w
	addlw	low(05h)
	movwf	(___awdiv@dividend)
	movf	(isr@scaled+1),w
	skipnc
	addlw	1
	addlw	high(05h)
	movwf	1+(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(isr@round+1)
	addwf	(isr@round+1)
	movf	(0+(?___awdiv)),w
	clrf	(isr@round)
	addwf	(isr@round)

	line	39
	
i1l838:	
;LE5-2.c: 39: whole = round / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(isr@round+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(isr@round),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(isr@whole+1)
	addwf	(isr@whole+1)
	movf	(0+(?___awdiv)),w
	clrf	(isr@whole)
	addwf	(isr@whole)

	line	40
	
i1l840:	
;LE5-2.c: 40: decimal = round % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(isr@round+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(isr@round),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(isr@decimal+1)
	addwf	(isr@decimal+1)
	movf	(0+(?___awmod)),w
	clrf	(isr@decimal)
	addwf	(isr@decimal)

	line	43
	
i1l842:	
;LE5-2.c: 43: PORTB = (PORTB & 0xF0) | (whole & 0x0F);
	movlw	(0Fh)
	andwf	(isr@whole),w
	movwf	(??_isr+0)+0
	movf	(6),w	;volatile
	andlw	0F0h
	iorwf	0+(??_isr+0)+0,w
	movwf	(6)	;volatile
	line	44
	
i1l844:	
;LE5-2.c: 44: RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	45
	
i1l846:	
;LE5-2.c: 45: RD0 = 1;
	bsf	(64/8),(64)&7	;volatile
	line	46
	
i1l848:	
;LE5-2.c: 46: RD1 = 0;
	bcf	(65/8),(65)&7	;volatile
	line	47
	
i1l850:	
;LE5-2.c: 47: _delay((unsigned long)((8)*(4000000/4000.0)));
	opt asmopt_off
movlw	11
movwf	((??_isr+0)+0+1),f
	movlw	98
movwf	((??_isr+0)+0),f
u72_27:
	decfsz	((??_isr+0)+0),f
	goto	u72_27
	decfsz	((??_isr+0)+0+1),f
	goto	u72_27
	nop
opt asmopt_on

	line	49
	
i1l852:	
;LE5-2.c: 49: PORTB = (PORTB & 0xF0) | (decimal & 0x0F);
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(isr@decimal),w
	movwf	(??_isr+0)+0
	movf	(6),w	;volatile
	andlw	0F0h
	iorwf	0+(??_isr+0)+0,w
	movwf	(6)	;volatile
	line	50
	
i1l854:	
;LE5-2.c: 50: RD2 = 0;
	bcf	(66/8),(66)&7	;volatile
	line	51
	
i1l856:	
;LE5-2.c: 51: RD0 = 0;
	bcf	(64/8),(64)&7	;volatile
	line	52
	
i1l858:	
;LE5-2.c: 52: RD1 = 1;
	bsf	(65/8),(65)&7	;volatile
	line	53
	
i1l860:	
;LE5-2.c: 53: _delay((unsigned long)((8)*(4000000/4000.0)));
	opt asmopt_off
movlw	11
movwf	((??_isr+0)+0+1),f
	movlw	98
movwf	((??_isr+0)+0),f
u73_27:
	decfsz	((??_isr+0)+0),f
	goto	u73_27
	decfsz	((??_isr+0)+0+1),f
	goto	u73_27
	nop
opt asmopt_on

	line	55
	
i1l862:	
;LE5-2.c: 55: ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	56
	
i1l864:	
;LE5-2.c: 56: GO = 1;
	bsf	(250/8),(250)&7	;volatile
	goto	i1l38
	line	57
	
i1l37:	
	line	58
	
i1l38:	
	movf	(??_isr+9),w
	movwf	btemp+1
	movf	(??_isr+8),w
	movwf	pclath
	movf	(??_isr+7),w
	movwf	fsr0
	swapf	(??_isr+6)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMMON] unsigned long 
;;  multiplicand    4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    9[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul32.c"
	line	15
global __ptext2
__ptext2:	;psect for function ___lmul
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	119
	
i1l692:	
	movlw	0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	goto	i1l694
	line	120
	
i1l138:	
	line	121
	
i1l694:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u36_21
	goto	u36_20
u36_21:
	goto	i1l698
u36_20:
	line	122
	
i1l696:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u37_21
	addwf	(___lmul@product+1),f
u37_21:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u37_22
	addwf	(___lmul@product+2),f
u37_22:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u37_23
	addwf	(___lmul@product+3),f
u37_23:

	goto	i1l698
	
i1l139:	
	line	123
	
i1l698:	
	movlw	01h
	movwf	(??___lmul+0)+0
u38_25:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u38_25
	line	124
	
i1l700:	
	movlw	01h
u39_25:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u39_25

	line	125
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u40_21
	goto	u40_20
u40_21:
	goto	i1l694
u40_20:
	goto	i1l702
	
i1l140:	
	line	128
	
i1l702:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	goto	i1l141
	
i1l704:	
	line	129
	
i1l141:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___awmod
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
i1l790:	
	clrf	(___awmod@sign)
	line	14
	
i1l792:	
	btfss	(___awmod@dividend+1),7
	goto	u61_21
	goto	u61_20
u61_21:
	goto	i1l798
u61_20:
	line	15
	
i1l794:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
i1l796:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	i1l798
	line	17
	
i1l262:	
	line	18
	
i1l798:	
	btfss	(___awmod@divisor+1),7
	goto	u62_21
	goto	u62_20
u62_21:
	goto	i1l802
u62_20:
	line	19
	
i1l800:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	i1l802
	
i1l263:	
	line	20
	
i1l802:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u63_21
	goto	u63_20
u63_21:
	goto	i1l820
u63_20:
	line	21
	
i1l804:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	i1l810
	
i1l266:	
	line	23
	
i1l806:	
	movlw	01h
	
u64_25:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u64_25
	line	24
	
i1l808:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	i1l810
	line	25
	
i1l265:	
	line	22
	
i1l810:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u65_21
	goto	u65_20
u65_21:
	goto	i1l806
u65_20:
	goto	i1l812
	
i1l267:	
	goto	i1l812
	line	26
	
i1l268:	
	line	27
	
i1l812:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u66_25
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u66_25:
	skipc
	goto	u66_21
	goto	u66_20
u66_21:
	goto	i1l816
u66_20:
	line	28
	
i1l814:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	i1l816
	
i1l269:	
	line	29
	
i1l816:	
	movlw	01h
	
u67_25:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u67_25
	line	30
	
i1l818:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u68_21
	goto	u68_20
u68_21:
	goto	i1l812
u68_20:
	goto	i1l820
	
i1l270:	
	goto	i1l820
	line	31
	
i1l264:	
	line	32
	
i1l820:	
	movf	(___awmod@sign),w
	skipz
	goto	u69_20
	goto	i1l824
u69_20:
	line	33
	
i1l822:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	i1l824
	
i1l271:	
	line	34
	
i1l824:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	i1l272
	
i1l826:	
	line	35
	
i1l272:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___awdiv
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
i1l746:	
	clrf	(___awdiv@sign)
	line	15
	
i1l748:	
	btfss	(___awdiv@divisor+1),7
	goto	u51_21
	goto	u51_20
u51_21:
	goto	i1l754
u51_20:
	line	16
	
i1l750:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
i1l752:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	i1l754
	line	18
	
i1l249:	
	line	19
	
i1l754:	
	btfss	(___awdiv@dividend+1),7
	goto	u52_21
	goto	u52_20
u52_21:
	goto	i1l760
u52_20:
	line	20
	
i1l756:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
i1l758:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	i1l760
	line	22
	
i1l250:	
	line	23
	
i1l760:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
i1l762:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u53_21
	goto	u53_20
u53_21:
	goto	i1l782
u53_20:
	line	25
	
i1l764:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	i1l770
	
i1l253:	
	line	27
	
i1l766:	
	movlw	01h
	
u54_25:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u54_25
	line	28
	
i1l768:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	i1l770
	line	29
	
i1l252:	
	line	26
	
i1l770:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u55_21
	goto	u55_20
u55_21:
	goto	i1l766
u55_20:
	goto	i1l772
	
i1l254:	
	goto	i1l772
	line	30
	
i1l255:	
	line	31
	
i1l772:	
	movlw	01h
	
u56_25:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u56_25
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u57_25
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u57_25:
	skipc
	goto	u57_21
	goto	u57_20
u57_21:
	goto	i1l778
u57_20:
	line	33
	
i1l774:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
i1l776:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	i1l778
	line	35
	
i1l256:	
	line	36
	
i1l778:	
	movlw	01h
	
u58_25:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u58_25
	line	37
	
i1l780:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u59_21
	goto	u59_20
u59_21:
	goto	i1l772
u59_20:
	goto	i1l782
	
i1l257:	
	goto	i1l782
	line	38
	
i1l251:	
	line	39
	
i1l782:	
	movf	(___awdiv@sign),w
	skipz
	goto	u60_20
	goto	i1l786
u60_20:
	line	40
	
i1l784:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	i1l786
	
i1l258:	
	line	41
	
i1l786:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	i1l259
	
i1l788:	
	line	42
	
i1l259:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] long 
;;  dividend        4    4[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   10[BANK0 ] long 
;;  sign            1    9[BANK0 ] unsigned char 
;;  counter         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      14       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___aldiv
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	14
	
i1l706:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	15
	
i1l708:	
	btfss	(___aldiv@divisor+3),7
	goto	u41_21
	goto	u41_20
u41_21:
	goto	i1l182
u41_20:
	line	16
	
i1l710:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	17
	clrf	(___aldiv@sign)
	incf	(___aldiv@sign),f
	line	18
	
i1l182:	
	line	19
	btfss	(___aldiv@dividend+3),7
	goto	u42_21
	goto	u42_20
u42_21:
	goto	i1l716
u42_20:
	line	20
	
i1l712:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	21
	
i1l714:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	i1l716
	line	22
	
i1l183:	
	line	23
	
i1l716:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	24
	
i1l718:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u43_21
	goto	u43_20
u43_21:
	goto	i1l738
u43_20:
	line	25
	
i1l720:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	26
	goto	i1l724
	
i1l186:	
	line	27
	
i1l722:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u44_25:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u44_25
	line	28
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	i1l724
	line	29
	
i1l185:	
	line	26
	
i1l724:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u45_21
	goto	u45_20
u45_21:
	goto	i1l722
u45_20:
	goto	i1l726
	
i1l187:	
	goto	i1l726
	line	30
	
i1l188:	
	line	31
	
i1l726:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u46_25:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u46_25
	line	32
	
i1l728:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u47_25
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u47_25
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u47_25
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u47_25:
	skipc
	goto	u47_21
	goto	u47_20
u47_21:
	goto	i1l734
u47_20:
	line	33
	
i1l730:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	34
	
i1l732:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	i1l734
	line	35
	
i1l189:	
	line	36
	
i1l734:	
	movlw	01h
u48_25:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u48_25

	line	37
	
i1l736:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u49_21
	goto	u49_20
u49_21:
	goto	i1l726
u49_20:
	goto	i1l738
	
i1l190:	
	goto	i1l738
	line	38
	
i1l184:	
	line	39
	
i1l738:	
	movf	(___aldiv@sign),w
	skipz
	goto	u50_20
	goto	i1l742
u50_20:
	line	40
	
i1l740:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	goto	i1l742
	
i1l191:	
	line	41
	
i1l742:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	i1l192
	
i1l744:	
	line	42
	
i1l192:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
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
