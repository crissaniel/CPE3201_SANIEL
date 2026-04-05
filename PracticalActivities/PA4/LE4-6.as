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
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_main,_printNumber
	FNCALL	_main,_printString
	FNCALL	_printNumber,___lldiv
	FNCALL	_printNumber,___llmod
	FNCALL	_printNumber,_printString
	FNCALL	_printString,_dataCtrl
	FNCALL	_initLCD,_instCtrl
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_period
	global	_CCPR1
_CCPR1	set	0x15
	global	_TMR1
_TMR1	set	0xE
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_T1CON
_T1CON	set	0x10
	global	_CCP1IF
_CCP1IF	set	0x62
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RA0
_RA0	set	0x28
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_RD2
_RD2	set	0x42
	global	_TMR1ON
_TMR1ON	set	0x80
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_CCP1IE
_CCP1IE	set	0x462
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	80	;'P'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	117	;'u'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
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
	file	"LE4-6.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_period:
       ds      4

	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_instCtrl:	; 0 bytes @ 0x0
??_dataCtrl:	; 0 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	ds	1
	global	instCtrl@data
instCtrl@data:	; 1 bytes @ 0x1
	global	dataCtrl@b
dataCtrl@b:	; 1 bytes @ 0x1
	ds	1
??_initLCD:	; 0 bytes @ 0x2
?_printString:	; 0 bytes @ 0x2
	global	printString@str
printString@str:	; 2 bytes @ 0x2
	ds	2
??_printString:	; 0 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	ds	4
??___lldiv:	; 0 bytes @ 0x8
??___llmod:	; 0 bytes @ 0x8
	ds	1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	ds	1
?_printNumber:	; 0 bytes @ 0xE
	global	printNumber@val
printNumber@val:	; 4 bytes @ 0xE
	ds	4
??_printNumber:	; 0 bytes @ 0x12
	ds	1
	global	printNumber@buffer
printNumber@buffer:	; 11 bytes @ 0x13
	ds	11
	global	printNumber@i
printNumber@i:	; 2 bytes @ 0x1E
	ds	2
??_main:	; 0 bytes @ 0x20
	ds	1
;!
;!Data Sizes:
;!    Strings     17
;!    Constant    0
;!    Data        0
;!    BSS         4
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8       8
;!    BANK0            80     33      37
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    printString@str	PTR const unsigned char  size(2) Largest target is 11
;!		 -> STR_2(CODE[8]), STR_1(CODE[9]), printNumber@buffer(BANK0[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_printNumber
;!    _printNumber->___lldiv
;!    _printString->_dataCtrl
;!    _initLCD->_instCtrl
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    1358
;!                                             32 BANK0      1     1      0
;!                            _initLCD
;!                           _instCtrl
;!                        _printNumber
;!                        _printString
;! ---------------------------------------------------------------------------------
;! (1) _printNumber                                         18    14      4    1088
;!                                             14 BANK0     18    14      4
;!                            ___lldiv
;!                            ___llmod
;!                        _printString
;! ---------------------------------------------------------------------------------
;! (1) _printString                                          2     0      2     226
;!                                              2 BANK0      2     0      2
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___llmod                                             10     2      8     265
;!                                              0 BANK0     10     2      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             14     6      8     268
;!                                              0 BANK0     14     6      8
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              2     2      0      22
;!                                              2 BANK0      2     2      0
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  8     8      0       0
;!                                              0 COMMON     8     8      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _initLCD
;!     _instCtrl
;!   _instCtrl
;!   _printNumber
;!     ___lldiv
;!     ___llmod
;!     _printString
;!       _dataCtrl
;!   _printString
;!     _dataCtrl
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       8       1       57.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      2D       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     21      25       5       46.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      2D      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 102 in file "C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_initLCD
;;		_instCtrl
;;		_printNumber
;;		_printString
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
	line	102
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
	line	102
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	104
	
l809:	
;LE4-4.c: 104: ADCON1 = 0x07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	105
	
l811:	
;LE4-4.c: 105: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	106
	
l813:	
;LE4-4.c: 106: PORTD = 0x00;
	clrf	(8)	;volatile
	line	108
	
l815:	
;LE4-4.c: 108: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	109
	
l817:	
;LE4-4.c: 109: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	110
;LE4-4.c: 110: TRISC = 0x04;
	movlw	(04h)
	movwf	(135)^080h	;volatile
	line	111
	
l819:	
;LE4-4.c: 111: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	113
	
l821:	
;LE4-4.c: 113: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	115
	
l823:	
;LE4-4.c: 115: initLCD();
	fcall	_initLCD
	line	117
	
l825:	
;LE4-4.c: 117: T1CON = 0x30;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	118
	
l827:	
;LE4-4.c: 118: CCP1CON = 0x05;
	movlw	(05h)
	movwf	(23)	;volatile
	line	119
	
l829:	
;LE4-4.c: 119: CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1122/8)^080h,(1122)&7	;volatile
	line	120
	
l831:	
;LE4-4.c: 120: CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(98/8),(98)&7	;volatile
	line	121
	
l833:	
;LE4-4.c: 121: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	122
	
l835:	
;LE4-4.c: 122: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	124
	
l837:	
;LE4-4.c: 124: TMR1ON = 1;
	bsf	(128/8),(128)&7	;volatile
	goto	l839
	line	126
;LE4-4.c: 125: for(;;)
	
l76:	
	line	128
	
l839:	
;LE4-4.c: 126: {
;LE4-4.c: 128: instCtrl(0xC6);
	movlw	(0C6h)
	fcall	_instCtrl
	line	129
	
l841:	
;LE4-4.c: 129: printString("Period: ");
	movlw	low((STR_1)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printString@str)
	movlw	80h
	movwf	(printString@str+1)
	fcall	_printString
	line	131
	
l843:	
;LE4-4.c: 131: instCtrl(0x9A);
	movlw	(09Ah)
	fcall	_instCtrl
	line	132
	
l845:	
;LE4-4.c: 132: printNumber(period);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_period+3),w	;volatile
	movwf	(printNumber@val+3)
	movf	(_period+2),w	;volatile
	movwf	(printNumber@val+2)
	movf	(_period+1),w	;volatile
	movwf	(printNumber@val+1)
	movf	(_period),w	;volatile
	movwf	(printNumber@val)

	fcall	_printNumber
	line	133
	
l847:	
;LE4-4.c: 133: printString(" us    ");
	movlw	low((STR_2)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printString@str)
	movlw	80h
	movwf	(printString@str+1)
	fcall	_printString
	line	135
	
l849:	
;LE4-4.c: 135: _delay((unsigned long)((50)*(4000000UL/4000000.0)));
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u397:
decfsz	(??_main+0)+0,f
	goto	u397
	nop
opt asmopt_on

	line	136
;LE4-4.c: 136: }
	goto	l839
	
l77:	
	line	137
	
l78:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_printNumber

;; *************** function _printNumber *****************
;; Defined at:
;;		line 68 in file "C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
;; Parameters:    Size  Location     Type
;;  val             4   14[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  buffer         11   19[BANK0 ] unsigned char [11]
;;  i               2   30[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lldiv
;;		___llmod
;;		_printString
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	68
global __ptext1
__ptext1:	;psect for function _printNumber
psect	text1
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
	line	68
	global	__size_of_printNumber
	__size_of_printNumber	equ	__end_of_printNumber-_printNumber
	
_printNumber:	
;incstack = 0
	opt	stack 4
; Regs used in _printNumber: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	70
	
l775:	
;LE4-4.c: 69: char buffer[11];
;LE4-4.c: 70: buffer[10] = '\0';
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(printNumber@buffer)+0Ah
	line	71
	
l777:	
;LE4-4.c: 71: int i = 9;
	movlw	low(09h)
	movwf	(printNumber@i)
	movlw	high(09h)
	movwf	((printNumber@i))+1
	line	73
	
l779:	
;LE4-4.c: 73: if (val == 0) {
	movf	(printNumber@val+3),w
	iorwf	(printNumber@val+2),w
	iorwf	(printNumber@val+1),w
	iorwf	(printNumber@val),w
	skipz
	goto	u341
	goto	u340
u341:
	goto	l791
u340:
	line	74
	
l781:	
;LE4-4.c: 74: buffer[i--] = '0';
	movlw	(030h)
	movwf	(??_printNumber+0)+0
	movf	(printNumber@i),w
	addlw	printNumber@buffer&0ffh
	movwf	fsr0
	movf	(??_printNumber+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l783:	
	movlw	low(-1)
	addwf	(printNumber@i),f
	skipnc
	incf	(printNumber@i+1),f
	movlw	high(-1)
	addwf	(printNumber@i+1),f
	line	75
;LE4-4.c: 75: }
	goto	l795
	line	76
	
l62:	
	line	78
;LE4-4.c: 76: else {
;LE4-4.c: 78: while (val > 0 && i >= 0) {
	goto	l791
	
l65:	
	line	79
	
l785:	
;LE4-4.c: 79: buffer[i--] = (val % 10) + '0';
	movlw	0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	movf	(printNumber@val+3),w
	movwf	(___llmod@dividend+3)
	movf	(printNumber@val+2),w
	movwf	(___llmod@dividend+2)
	movf	(printNumber@val+1),w
	movwf	(___llmod@dividend+1)
	movf	(printNumber@val),w
	movwf	(___llmod@dividend)

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??_printNumber+0)+0
	movf	(printNumber@i),w
	addlw	printNumber@buffer&0ffh
	movwf	fsr0
	movf	(??_printNumber+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l787:	
	movlw	low(-1)
	addwf	(printNumber@i),f
	skipnc
	incf	(printNumber@i+1),f
	movlw	high(-1)
	addwf	(printNumber@i+1),f
	line	80
	
l789:	
;LE4-4.c: 80: val /= 10;
	movlw	0
	movwf	(___lldiv@divisor+3)
	movlw	0
	movwf	(___lldiv@divisor+2)
	movlw	0
	movwf	(___lldiv@divisor+1)
	movlw	0Ah
	movwf	(___lldiv@divisor)

	movf	(printNumber@val+3),w
	movwf	(___lldiv@dividend+3)
	movf	(printNumber@val+2),w
	movwf	(___lldiv@dividend+2)
	movf	(printNumber@val+1),w
	movwf	(___lldiv@dividend+1)
	movf	(printNumber@val),w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___lldiv)),w
	movwf	(printNumber@val+3)
	movf	(2+(?___lldiv)),w
	movwf	(printNumber@val+2)
	movf	(1+(?___lldiv)),w
	movwf	(printNumber@val+1)
	movf	(0+(?___lldiv)),w
	movwf	(printNumber@val)

	goto	l791
	line	81
	
l64:	
	line	78
	
l791:	
	movf	(printNumber@val+3),w
	iorwf	(printNumber@val+2),w
	iorwf	(printNumber@val+1),w
	iorwf	(printNumber@val),w
	skipnz
	goto	u351
	goto	u350
u351:
	goto	l795
u350:
	
l793:	
	btfss	(printNumber@i+1),7
	goto	u361
	goto	u360
u361:
	goto	l785
u360:
	goto	l795
	
l67:	
	goto	l795
	
l68:	
	goto	l795
	line	82
	
l63:	
	line	84
	
l795:	
;LE4-4.c: 81: }
;LE4-4.c: 82: }
;LE4-4.c: 84: printString(&buffer[i + 1]);
	movf	(printNumber@i),w
	addlw	01h
	addlw	printNumber@buffer&0ffh
	movwf	(printString@str)
	movlw	(0x0)
	movwf	(printString@str+1)
	fcall	_printString
	line	85
	
l69:	
	return
	opt stack 0
GLOBAL	__end_of_printNumber
	__end_of_printNumber:
	signat	_printNumber,4216
	global	_printString

;; *************** function _printString *****************
;; Defined at:
;;		line 60 in file "C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
;; Parameters:    Size  Location     Type
;;  str             2    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(8), STR_1(9), printNumber@buffer(11), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_printNumber
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	60
global __ptext2
__ptext2:	;psect for function _printString
psect	text2
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
	line	60
	global	__size_of_printString
	__size_of_printString	equ	__end_of_printString-_printString
	
_printString:	
;incstack = 0
	opt	stack 5
; Regs used in _printString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	62
	
l713:	
;LE4-4.c: 62: while(*str) {
	goto	l719
	
l57:	
	line	63
	
l715:	
;LE4-4.c: 63: dataCtrl(*str++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printString@str+1),w
	movwf	btemp+1
	movf	(printString@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_dataCtrl
	
l717:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printString@str),f
	skipnc
	incf	(printString@str+1),f
	goto	l719
	line	64
	
l56:	
	line	62
	
l719:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printString@str+1),w
	movwf	btemp+1
	movf	(printString@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u201
	goto	u200
u201:
	goto	l715
u200:
	goto	l59
	
l58:	
	line	65
	
l59:	
	return
	opt stack 0
GLOBAL	__end_of_printString
	__end_of_printString:
	signat	_printString,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 50 in file "C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
;; Parameters:    Size  Location     Type
;;  b               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printString
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	50
global __ptext3
__ptext3:	;psect for function _dataCtrl
psect	text3
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
	line	50
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg]
;dataCtrl@b stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCtrl@b)
	line	52
	
l693:	
;LE4-4.c: 52: PORTB=b;
	movf	(dataCtrl@b),w
	movwf	(6)	;volatile
	line	53
	
l695:	
;LE4-4.c: 53: RD0=1;
	bsf	(64/8),(64)&7	;volatile
	line	54
	
l697:	
;LE4-4.c: 54: RD1=0;
	bcf	(65/8),(65)&7	;volatile
	line	55
	
l699:	
;LE4-4.c: 55: RD2=1;
	bsf	(66/8),(66)&7	;volatile
	line	56
;LE4-4.c: 56: _delay((unsigned long)((50)*(4000000UL/4000000.0)));;
	opt asmopt_off
movlw	16
movwf	(??_dataCtrl+0)+0,f
u407:
decfsz	(??_dataCtrl+0)+0,f
	goto	u407
	nop
opt asmopt_on

	line	57
	
l701:	
;LE4-4.c: 57: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	58
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printNumber
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___llmod
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	13
	
l745:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u281
	goto	u280
u281:
	goto	l761
u280:
	line	14
	
l747:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	15
	goto	l751
	
l450:	
	line	16
	
l749:	
	movlw	01h
	movwf	(??___llmod+0)+0
u295:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u295
	line	17
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l751
	line	18
	
l449:	
	line	15
	
l751:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u301
	goto	u300
u301:
	goto	l749
u300:
	goto	l753
	
l451:	
	goto	l753
	line	19
	
l452:	
	line	20
	
l753:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u315
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u315
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u315
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u315:
	skipc
	goto	u311
	goto	u310
u311:
	goto	l757
u310:
	line	21
	
l755:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l757
	
l453:	
	line	22
	
l757:	
	movlw	01h
u325:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u325

	line	23
	
l759:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u331
	goto	u330
u331:
	goto	l753
u330:
	goto	l761
	
l454:	
	goto	l761
	line	24
	
l448:	
	line	25
	
l761:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l455
	
l763:	
	line	26
	
l455:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[BANK0 ] unsigned long 
;;  counter         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printNumber
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___lldiv
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l721:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	15
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u211
	goto	u210
u211:
	goto	l741
u210:
	line	16
	
l723:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l727
	
l440:	
	line	18
	
l725:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u225:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u225
	line	19
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l727
	line	20
	
l439:	
	line	17
	
l727:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u231
	goto	u230
u231:
	goto	l725
u230:
	goto	l729
	
l441:	
	goto	l729
	line	21
	
l442:	
	line	22
	
l729:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u245:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u245
	line	23
	
l731:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u255
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u255
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u255
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u255:
	skipc
	goto	u251
	goto	u250
u251:
	goto	l737
u250:
	line	24
	
l733:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	25
	
l735:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l737
	line	26
	
l443:	
	line	27
	
l737:	
	movlw	01h
u265:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u265

	line	28
	
l739:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u271
	goto	u270
u271:
	goto	l729
u270:
	goto	l741
	
l444:	
	goto	l741
	line	29
	
l438:	
	line	30
	
l741:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l445
	
l743:	
	line	31
	
l445:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 39 in file "C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
	line	39
global __ptext6
__ptext6:	;psect for function _initLCD
psect	text6
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
	line	39
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	41
	
l765:	
;LE4-4.c: 41: _delay((unsigned long)((20)*(4000000UL/4000.0)));
	opt asmopt_off
movlw	26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_initLCD+0)+0+1),f
	movlw	248
movwf	((??_initLCD+0)+0),f
u417:
	decfsz	((??_initLCD+0)+0),f
	goto	u417
	decfsz	((??_initLCD+0)+0+1),f
	goto	u417
	nop
opt asmopt_on

	line	42
	
l767:	
;LE4-4.c: 42: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	43
	
l769:	
;LE4-4.c: 43: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	44
	
l771:	
;LE4-4.c: 44: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	45
	
l773:	
;LE4-4.c: 45: _delay((unsigned long)((2)*(4000000UL/4000.0)));
	opt asmopt_off
movlw	3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_initLCD+0)+0+1),f
	movlw	151
movwf	((??_initLCD+0)+0),f
u427:
	decfsz	((??_initLCD+0)+0),f
	goto	u427
	decfsz	((??_initLCD+0)+0+1),f
	goto	u427
	nop2
opt asmopt_on

	line	46
;LE4-4.c: 46: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	47
;LE4-4.c: 47: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	48
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 29 in file "C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	29
global __ptext7
__ptext7:	;psect for function _instCtrl
psect	text7
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
	line	29
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg]
;instCtrl@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@data)
	line	31
	
l703:	
;LE4-4.c: 31: PORTB= data;
	movf	(instCtrl@data),w
	movwf	(6)	;volatile
	line	32
	
l705:	
;LE4-4.c: 32: RD0=0;
	bcf	(64/8),(64)&7	;volatile
	line	33
	
l707:	
;LE4-4.c: 33: RD1=0;
	bcf	(65/8),(65)&7	;volatile
	line	34
	
l709:	
;LE4-4.c: 34: RD2=1;
	bsf	(66/8),(66)&7	;volatile
	line	35
;LE4-4.c: 35: _delay((unsigned long)((50)*(4000000UL/4000000.0)));;
	opt asmopt_off
movlw	16
movwf	(??_instCtrl+0)+0,f
u437:
decfsz	(??_instCtrl+0)+0,f
	goto	u437
	nop
opt asmopt_on

	line	36
	
l711:	
;LE4-4.c: 36: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	37
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 88 in file "C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          8       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	88
global __ptext8
__ptext8:	;psect for function _ISR
psect	text8
	file	"C:\Users\ASUS\Downloads\Embedded\PA4\LE4-4.c"
	line	88
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+4)
	movf	fsr0,w
	movwf	(??_ISR+5)
	movf	pclath,w
	movwf	(??_ISR+6)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+7)
	ljmp	_ISR
psect	text8
	line	90
	
i1l797:	
;LE4-4.c: 90: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	91
;LE4-4.c: 91: if(CCP1IF==1)
	btfss	(98/8),(98)&7	;volatile
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l807
u37_20:
	line	93
	
i1l799:	
;LE4-4.c: 92: {
;LE4-4.c: 93: CCP1IF = 0;
	bcf	(98/8),(98)&7	;volatile
	line	94
	
i1l801:	
;LE4-4.c: 94: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	96
	
i1l803:	
;LE4-4.c: 96: RA0^=1;
	movlw	1<<((40)&7)
	xorwf	((40)/8),f
	line	97
	
i1l805:	
;LE4-4.c: 97: period = (unsigned long)CCPR1 * 8;
	movf	(21),w	;volatile
	movwf	((??_ISR+0)+0)
	movf	(21+1),w	;volatile
	movwf	((??_ISR+0)+0+1)
	clrf	((??_ISR+0)+0+2)
	clrf	((??_ISR+0)+0+3)
	movlw	03h
u38_25:
	clrc
	rlf	(??_ISR+0)+0,f
	rlf	(??_ISR+0)+1,f
	rlf	(??_ISR+0)+2,f
	rlf	(??_ISR+0)+3,f
u38_20:
	addlw	-1
	skipz
	goto	u38_25
	movf	3+(??_ISR+0)+0,w
	movwf	(_period+3)	;volatile
	movf	2+(??_ISR+0)+0,w
	movwf	(_period+2)	;volatile
	movf	1+(??_ISR+0)+0,w
	movwf	(_period+1)	;volatile
	movf	0+(??_ISR+0)+0,w
	movwf	(_period)	;volatile

	goto	i1l807
	line	98
	
i1l72:	
	line	99
	
i1l807:	
;LE4-4.c: 98: }
;LE4-4.c: 99: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	100
	
i1l73:	
	movf	(??_ISR+7),w
	movwf	btemp+1
	movf	(??_ISR+6),w
	movwf	pclath
	movf	(??_ISR+5),w
	movwf	fsr0
	swapf	(??_ISR+4)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
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
