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
	FNCALL	_main,_dataCtrl
	FNCALL	_main,_delay
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_j
	global	_current_count
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_INTF
_INTF	set	0x59
	global	_RB0
_RB0	set	0x30
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
	global	_T0IF
_T0IF	set	0x5A
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _ISR
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
	file	"MIDTERM-PRACTICAL.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_j:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_current_count:
       ds      1

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	4
?_delay:	; 0 bytes @ 0x4
	global	delay@ms
delay@ms:	; 2 bytes @ 0x4
	ds	2
??_delay:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
	global	instCtrl@data
instCtrl@data:	; 1 bytes @ 0x6
	global	dataCtrl@b
dataCtrl@b:	; 1 bytes @ 0x6
	ds	1
??_initLCD:	; 0 bytes @ 0x7
??_main:	; 0 bytes @ 0x7
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	delay@i
delay@i:	; 2 bytes @ 0x0
	ds	2
	global	delay@k
delay@k:	; 2 bytes @ 0x2
	ds	2
	global	main@my_count
main@my_count:	; 1 bytes @ 0x4
	ds	1
	global	main@count
main@count:	; 2 bytes @ 0x5
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      10
;!    BANK0            80      7       8
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
;!    _main->_dataCtrl
;!    _main->_instCtrl
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
;!    _dataCtrl->_delay
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_delay
;!    _instCtrl->_delay
;!    _dataCtrl->_delay
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
;! (0) _main                                                 4     4      0    1488
;!                                              7 COMMON     1     1      0
;!                                              4 BANK0      3     3      0
;!                           _dataCtrl
;!                              _delay
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     362
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     362
;!                                              6 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             1     1      0     362
;!                                              6 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                6     4      2     331
;!                                              4 COMMON     2     0      2
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dataCtrl
;!     _delay
;!   _delay
;!   _initLCD
;!     _instCtrl
;!       _delay
;!   _instCtrl
;!     _delay
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      12       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      7       8       5       10.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      12      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 75 in file "Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    5[BANK0 ] int 
;;  my_count        1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_dataCtrl
;;		_delay
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
	line	75
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
	line	75
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	78
	
l731:	
;ME_SANIEL.c: 78: TRISB = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	79
;ME_SANIEL.c: 79: TRISC = 0X00;
	clrf	(135)^080h	;volatile
	line	80
	
l733:	
;ME_SANIEL.c: 80: TRISD = 0XFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	81
	
l735:	
;ME_SANIEL.c: 81: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	83
	
l737:	
;ME_SANIEL.c: 83: initLCD();
	fcall	_initLCD
	line	84
	
l739:	
;ME_SANIEL.c: 84: instCtrl(0xC6);
	movlw	(0C6h)
	fcall	_instCtrl
	line	85
	
l741:	
;ME_SANIEL.c: 85: dataCtrl('T');
	movlw	(054h)
	fcall	_dataCtrl
	line	86
	
l743:	
;ME_SANIEL.c: 86: dataCtrl('i');
	movlw	(069h)
	fcall	_dataCtrl
	line	87
	
l745:	
;ME_SANIEL.c: 87: dataCtrl('m');
	movlw	(06Dh)
	fcall	_dataCtrl
	line	88
	
l747:	
;ME_SANIEL.c: 88: dataCtrl('e');
	movlw	(065h)
	fcall	_dataCtrl
	line	89
	
l749:	
;ME_SANIEL.c: 89: dataCtrl('r');
	movlw	(072h)
	fcall	_dataCtrl
	line	90
	
l751:	
;ME_SANIEL.c: 90: dataCtrl(':');
	movlw	(03Ah)
	fcall	_dataCtrl
	line	91
	
l753:	
;ME_SANIEL.c: 91: instCtrl(0x9D);
	movlw	(09Dh)
	fcall	_instCtrl
	line	92
	
l755:	
;ME_SANIEL.c: 92: dataCtrl('1');
	movlw	(031h)
	fcall	_dataCtrl
	line	93
	
l757:	
;ME_SANIEL.c: 93: dataCtrl('4');
	movlw	(034h)
	fcall	_dataCtrl
	line	94
	
l759:	
;ME_SANIEL.c: 94: instCtrl(0xD4);
	movlw	(0D4h)
	fcall	_instCtrl
	line	96
;ME_SANIEL.c: 96: int count = 14;
	movlw	low(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@count)
	movlw	high(0Eh)
	movwf	((main@count))+1
	line	97
	
l761:	
;ME_SANIEL.c: 97: unsigned char my_count= 0;
	clrf	(main@my_count)
	goto	l52
	line	98
;ME_SANIEL.c: 98: while(1){
	
l51:	
	line	99
;ME_SANIEL.c: 99: while(!RB0){
	goto	l52
	
l53:	
	line	100
;ME_SANIEL.c: 100: while(count!=0){
	goto	l769
	
l55:	
	line	101
	
l763:	
;ME_SANIEL.c: 101: count--;
	movlw	low(-1)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(-1)
	addwf	(main@count+1),f
	line	102
	
l765:	
;ME_SANIEL.c: 102: delay(98);
	movlw	low(062h)
	movwf	(delay@ms)
	movlw	high(062h)
	movwf	((delay@ms))+1
	fcall	_delay
	line	103
	
l767:	
;ME_SANIEL.c: 103: current_count = count;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@count),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_current_count)
	line	104
;ME_SANIEL.c: 104: dataCtrl(current_count);
	movf	(_current_count),w
	fcall	_dataCtrl
	goto	l769
	line	105
	
l54:	
	line	100
	
l769:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((main@count+1)),w
	iorwf	((main@count)),w
	skipz
	goto	u181
	goto	u180
u181:
	goto	l763
u180:
	goto	l52
	
l56:	
	line	106
	
l52:	
	line	99
	btfss	(48/8),(48)&7	;volatile
	goto	u191
	goto	u190
u191:
	goto	l769
u190:
	goto	l52
	
l57:	
	goto	l52
	line	108
	
l58:	
	line	98
	goto	l52
	
l59:	
	line	109
	
l60:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 52 in file "Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	52
global __ptext1
__ptext1:	;psect for function _initLCD
psect	text1
	file	"Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
	line	52
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	54
	
l717:	
;ME_SANIEL.c: 54: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	55
;ME_SANIEL.c: 55: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	56
;ME_SANIEL.c: 56: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	57
;ME_SANIEL.c: 57: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	58
;ME_SANIEL.c: 58: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	59
;ME_SANIEL.c: 59: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	60
;ME_SANIEL.c: 60: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	63
	
l45:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 42 in file "Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	42
global __ptext2
__ptext2:	;psect for function _instCtrl
psect	text2
	file	"Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
	line	42
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
;instCtrl@data stored from wreg
	movwf	(instCtrl@data)
	line	44
	
l705:	
;ME_SANIEL.c: 44: PORTC= data;
	movf	(instCtrl@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	45
	
l707:	
;ME_SANIEL.c: 45: RB5=0;
	bcf	(53/8),(53)&7	;volatile
	line	46
	
l709:	
;ME_SANIEL.c: 46: RB6=0;
	bcf	(54/8),(54)&7	;volatile
	line	47
	
l711:	
;ME_SANIEL.c: 47: RB7=1;
	bsf	(55/8),(55)&7	;volatile
	line	48
	
l713:	
;ME_SANIEL.c: 48: delay(2);
	movlw	low(02h)
	movwf	(delay@ms)
	movlw	high(02h)
	movwf	((delay@ms))+1
	fcall	_delay
	line	49
	
l715:	
;ME_SANIEL.c: 49: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	50
	
l42:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 65 in file "Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
;; Parameters:    Size  Location     Type
;;  b               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b               1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	65
global __ptext3
__ptext3:	;psect for function _dataCtrl
psect	text3
	file	"Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
	line	65
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@b stored from wreg
	movwf	(dataCtrl@b)
	line	67
	
l719:	
;ME_SANIEL.c: 67: PORTC=b;
	movf	(dataCtrl@b),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	68
	
l721:	
;ME_SANIEL.c: 68: RB5=1;
	bsf	(53/8),(53)&7	;volatile
	line	69
	
l723:	
;ME_SANIEL.c: 69: RB6=0;
	bcf	(54/8),(54)&7	;volatile
	line	70
	
l725:	
;ME_SANIEL.c: 70: RB7=1;
	bsf	(55/8),(55)&7	;volatile
	line	71
	
l727:	
;ME_SANIEL.c: 71: delay(2);
	movlw	low(02h)
	movwf	(delay@ms)
	movlw	high(02h)
	movwf	((delay@ms))+1
	fcall	_delay
	line	72
	
l729:	
;ME_SANIEL.c: 72: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	73
	
l48:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 20 in file "Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
;; Parameters:    Size  Location     Type
;;  ms              2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  k               2    2[BANK0 ] unsigned int 
;;  i               2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_instCtrl
;;		_dataCtrl
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	20
global __ptext4
__ptext4:	;psect for function _delay
psect	text4
	file	"Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
	line	20
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+status,2]
	line	22
	
l693:	
;ME_SANIEL.c: 21: unsigned int i, k;
;ME_SANIEL.c: 22: for(i = 0; i < ms; i++) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@i)
	clrf	(delay@i+1)
	goto	l29
	
l30:	
	line	23
	
l695:	
;ME_SANIEL.c: 23: for(k = 0; k < 1000; k++);
	clrf	(delay@k)
	clrf	(delay@k+1)
	
l697:	
	movlw	high(03E8h)
	subwf	(delay@k+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay@k),w
	skipc
	goto	u151
	goto	u150
u151:
	goto	l701
u150:
	goto	l703
	
l699:	
	goto	l703
	
l31:	
	
l701:	
	movlw	low(01h)
	addwf	(delay@k),f
	skipnc
	incf	(delay@k+1),f
	movlw	high(01h)
	addwf	(delay@k+1),f
	movlw	high(03E8h)
	subwf	(delay@k+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay@k),w
	skipc
	goto	u161
	goto	u160
u161:
	goto	l701
u160:
	goto	l703
	
l32:	
	line	22
	
l703:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l29:	
	movf	(delay@ms+1),w
	subwf	(delay@i+1),w
	skipz
	goto	u175
	movf	(delay@ms),w
	subwf	(delay@i),w
u175:
	skipc
	goto	u171
	goto	u170
u171:
	goto	l695
u170:
	goto	l34
	
l33:	
	line	25
	
l34:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 27 in file "Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	27
global __ptext5
__ptext5:	;psect for function _ISR
psect	text5
	file	"Z:\CPE3201_SANIEL\Midterms\ME_SANIEL.c"
	line	27
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _ISR: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text5
	line	30
	
i1l643:	
;ME_SANIEL.c: 30: if (INTF == 1) {
	btfss	(89/8),(89)&7	;volatile
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l649
u11_20:
	line	31
	
i1l645:	
;ME_SANIEL.c: 31: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	33
	
i1l647:	
;ME_SANIEL.c: 33: PORTC = current_count;
	movf	(_current_count),w
	movwf	(7)	;volatile
	goto	i1l649
	line	34
	
i1l37:	
	line	36
	
i1l649:	
;ME_SANIEL.c: 34: }
;ME_SANIEL.c: 36: if (T0IF == 1) {
	btfss	(90/8),(90)&7	;volatile
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l39
u12_20:
	line	37
	
i1l651:	
;ME_SANIEL.c: 37: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	goto	i1l39
	line	38
	
i1l38:	
	line	39
	
i1l39:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
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
