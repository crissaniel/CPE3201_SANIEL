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
	FNCALL	_main,_I2C_Receive
	FNCALL	_main,_I2C_RepeatedStart
	FNCALL	_main,_I2C_Send
	FNCALL	_main,_I2C_Start
	FNCALL	_main,_I2C_Stop
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___lwtoft
	FNCALL	_main,_delay_ms
	FNCALL	_main,_dispRH
	FNCALL	_main,_dispT
	FNCALL	_main,_initLCD
	FNCALL	_main,_init_I2C_Master
	FNCALL	_main,_pow
	FNCALL	_pow,___ftge
	FNCALL	_pow,___ftmul
	FNCALL	_pow,___ftneg
	FNCALL	_pow,___fttol
	FNCALL	_pow,___lltoft
	FNCALL	_pow,_exp
	FNCALL	_pow,_log
	FNCALL	_log,___awtoft
	FNCALL	_log,___ftadd
	FNCALL	_log,___ftge
	FNCALL	_log,___ftmul
	FNCALL	_log,_eval_poly
	FNCALL	_log,_frexp
	FNCALL	_exp,___awtoft
	FNCALL	_exp,___ftdiv
	FNCALL	_exp,___ftge
	FNCALL	_exp,___ftmul
	FNCALL	_exp,___ftneg
	FNCALL	_exp,___ftsub
	FNCALL	_exp,___fttol
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_ldexp,___ftge
	FNCALL	_ldexp,___ftneg
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,_frexp
	FNCALL	___altoft,___ftpack
	FNCALL	_eval_poly,___bmul
	FNCALL	_eval_poly,___ftadd
	FNCALL	_eval_poly,___ftmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	_initLCD,_dataCtrl
	FNCALL	_initLCD,_delay_ms
	FNCALL	_initLCD,_instCtrl
	FNCALL	_dispT,___fttol
	FNCALL	_dispT,_dataCtrl
	FNCALL	_dispT,_instCtrl
	FNCALL	_dispT,_sprintf
	FNCALL	_dispRH,_dataCtrl
	FNCALL	_dispRH,_instCtrl
	FNCALL	_dispRH,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_instCtrl,_delay_ms
	FNCALL	_dataCtrl,_delay_ms
	FNCALL	___lwtoft,___ftpack
	FNCALL	_I2C_Stop,_I2C_Wait
	FNCALL	_I2C_Start,_I2C_Wait
	FNCALL	_I2C_Send,_I2C_Wait
	FNCALL	_I2C_RepeatedStart,_I2C_Wait
	FNCALL	_I2C_Receive,_I2C_Wait
	FNROOT	_main
	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	exp@coeff
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	17
exp@coeff:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x72
	retlw	0x31
	retlw	0x3f

	retlw	0xfe
	retlw	0x75
	retlw	0x3e

	retlw	0x58
	retlw	0x63
	retlw	0x3d

	retlw	0x95
	retlw	0x1d
	retlw	0x3c

	retlw	0xc5
	retlw	0xae
	retlw	0x3a

	retlw	0x79
	retlw	0x21
	retlw	0x39

	retlw	0x94
	retlw	0x80
	retlw	0x37

	retlw	0x93
	retlw	0xa7
	retlw	0x35

	retlw	0x56
	retlw	0x15
	retlw	0x34

	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	9
log@coeff:
	retlw	0x0
	retlw	0x0
	retlw	0x0

	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xf0
	retlw	0xff
	retlw	0xbe

	retlw	0xe2
	retlw	0xa9
	retlw	0x3e

	retlw	0x83
	retlw	0x76
	retlw	0xbe

	retlw	0xae
	retlw	0x2b
	retlw	0x3e

	retlw	0x3c
	retlw	0xc3
	retlw	0xbd

	retlw	0xd2
	retlw	0x13
	retlw	0x3d

	retlw	0x78
	retlw	0xd3
	retlw	0xbb

	global __end_oflog@coeff
__end_oflog@coeff:
	global	_dpowers
	global	exp@coeff
	global	log@coeff
	global	_T
	global	_RH
	global	_errno
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_TRISB
_TRISB	set	0x86
	global	_TRISD
_TRISD	set	0x88
	global	_ACKDT
_ACKDT	set	0x48D
	global	_ACKEN
_ACKEN	set	0x48C
	global	_PEN
_PEN	set	0x48A
	global	_RCEN
_RCEN	set	0x48B
	global	_RSEN
_RSEN	set	0x489
	global	_SEN
_SEN	set	0x488
	global	_TRISC3
_TRISC3	set	0x43B
	global	_TRISC4
_TRISC4	set	0x43C
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_2	equ	STR_1+0
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
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"LE7-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_T:
       ds      3

_RH:
       ds      2

_errno:
       ds      2

	line	#
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
	clrf	((__pbssBANK1)+6)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_exp$649
_exp$649:	; 3 bytes @ 0x0
	global	dispRH@val
dispRH@val:	; 10 bytes @ 0x0
	global	dispT@val
dispT@val:	; 10 bytes @ 0x0
	ds	3
	global	_exp$440
_exp$440:	; 3 bytes @ 0x3
	ds	3
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x6
	ds	2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x8
	ds	1
	global	?_pow
?_pow:	; 3 bytes @ 0x9
	global	pow@x
pow@x:	; 3 bytes @ 0x9
	ds	1
	global	dispRH@i
dispRH@i:	; 2 bytes @ 0xA
	global	dispT@i
dispT@i:	; 2 bytes @ 0xA
	ds	2
	global	pow@y
pow@y:	; 3 bytes @ 0xC
	ds	3
??_pow:	; 0 bytes @ 0xF
	ds	1
	global	_pow$647
_pow$647:	; 3 bytes @ 0x10
	ds	3
	global	_pow$648
_pow$648:	; 3 bytes @ 0x13
	ds	3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x16
	ds	1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x17
	ds	4
??_main:	; 0 bytes @ 0x1B
	ds	2
	global	_main$646
_main$646:	; 3 bytes @ 0x1D
	ds	3
	global	main@res
main@res:	; 2 bytes @ 0x20
	ds	2
	global	main@RH_temp
main@RH_temp:	; 2 bytes @ 0x22
	ds	2
	global	main@T_temp
main@T_temp:	; 2 bytes @ 0x24
	ds	2
	global	main@temp
main@temp:	; 1 bytes @ 0x26
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_I2C_Master:	; 0 bytes @ 0x0
??_init_I2C_Master:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_I2C_Start:	; 0 bytes @ 0x0
??_I2C_Start:	; 0 bytes @ 0x0
?_I2C_Send:	; 0 bytes @ 0x0
??_I2C_Send:	; 0 bytes @ 0x0
?_I2C_RepeatedStart:	; 0 bytes @ 0x0
??_I2C_RepeatedStart:	; 0 bytes @ 0x0
??_I2C_Receive:	; 0 bytes @ 0x0
?_I2C_Stop:	; 0 bytes @ 0x0
??_I2C_Stop:	; 0 bytes @ 0x0
?_delay_ms:	; 0 bytes @ 0x0
?_dispRH:	; 0 bytes @ 0x0
?_dispT:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_I2C_Wait:	; 0 bytes @ 0x0
??_I2C_Wait:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
?_I2C_Receive:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?_frexp
?_frexp:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	I2C_Send@data
I2C_Send@data:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	delay_ms@cnt
delay_ms@cnt:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	frexp@value
frexp@value:	; 3 bytes @ 0x0
	ds	1
??___bmul:	; 0 bytes @ 0x1
	global	I2C_Receive@ack
I2C_Receive@ack:	; 1 bytes @ 0x1
	ds	1
??_delay_ms:	; 0 bytes @ 0x2
	global	I2C_Receive@temp
I2C_Receive@temp:	; 1 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_dataCtrl:	; 0 bytes @ 0x3
??_instCtrl:	; 0 bytes @ 0x3
??___ftneg:	; 0 bytes @ 0x3
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x3
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??_initLCD:	; 0 bytes @ 0x4
??_frexp:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??___ftge:	; 0 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
??___awtoft:	; 0 bytes @ 0xB
??___lwtoft:	; 0 bytes @ 0xB
	ds	1
??___lltoft:	; 0 bytes @ 0xC
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xD
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
??___ftsub:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	3
??___ftdiv:	; 0 bytes @ 0x6
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xA
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xB
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xE
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0xF
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x10
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x10
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x13
	ds	3
??___ftmul:	; 0 bytes @ 0x16
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1A
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x20
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x20
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x23
	ds	3
??___ftadd:	; 0 bytes @ 0x26
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2A
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2B
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2C
	ds	1
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x2D
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x2D
	global	?___fttol
?___fttol:	; 4 bytes @ 0x2D
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x2D
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x2D
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x2D
	ds	3
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x30
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x30
	ds	1
??___fttol:	; 0 bytes @ 0x31
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x31
	ds	2
??_eval_poly:	; 0 bytes @ 0x33
	ds	1
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x34
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x35
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x36
	ds	1
	global	?_log
?_log:	; 3 bytes @ 0x37
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x37
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x37
	global	log@x
log@x:	; 3 bytes @ 0x37
	ds	3
??_log:	; 0 bytes @ 0x3A
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x3A
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x3A
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x3B
	global	?___altoft
?___altoft:	; 3 bytes @ 0x3B
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x3B
	global	log@exponent
log@exponent:	; 2 bytes @ 0x3B
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x3B
	ds	1
??_ldexp:	; 0 bytes @ 0x3C
	ds	2
??_sprintf:	; 0 bytes @ 0x3E
	global	_ldexp$477
_ldexp$477:	; 3 bytes @ 0x3E
	ds	1
??___altoft:	; 0 bytes @ 0x3F
	ds	2
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x41
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x41
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x42
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x42
	ds	1
	global	?_floor
?_floor:	; 3 bytes @ 0x43
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x43
	global	floor@x
floor@x:	; 3 bytes @ 0x43
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x44
	ds	2
??_floor:	; 0 bytes @ 0x46
	ds	1
	global	floor@i
floor@i:	; 3 bytes @ 0x47
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x48
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x49
	ds	1
??_dispRH:	; 0 bytes @ 0x4A
??_dispT:	; 0 bytes @ 0x4A
	global	floor@expon
floor@expon:	; 2 bytes @ 0x4A
	ds	2
	global	?_exp
?_exp:	; 3 bytes @ 0x4C
	global	exp@x
exp@x:	; 3 bytes @ 0x4C
	ds	3
??_exp:	; 0 bytes @ 0x4F
	ds	1
;!
;!Data Sizes:
;!    Strings     3
;!    Constant    67
;!    Data        0
;!    BSS         7
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     80      80
;!    BANK1            80     39      46
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 30
;!		 -> log@coeff(CODE[27]), exp@coeff(CODE[30]), 
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> log@exponent(BANK0[2]), floor@expon(BANK0[2]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;!		 -> STR_2(CODE[3]), STR_1(CODE[3]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;!		 -> dispT@val(BANK1[10]), dispRH@val(BANK1[10]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S155$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___awtoft
;!    _pow->___lltoft
;!    _log->___awtoft
;!    _exp->___awtoft
;!    ___ftmul->___awtoft
;!    ___ftsub->___awtoft
;!    ___ftadd->___awtoft
;!    ___ftdiv->___awtoft
;!    ___awtoft->___ftpack
;!    ___lltoft->___ftpack
;!    _initLCD->_dataCtrl
;!    _initLCD->_instCtrl
;!    ___fttol->___awtoft
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _instCtrl->_delay_ms
;!    _dataCtrl->_delay_ms
;!    ___lwtoft->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    _pow->_exp
;!    _log->_eval_poly
;!    _exp->_floor
;!    _ldexp->_eval_poly
;!    _floor->___altoft
;!    ___altoft->___fttol
;!    _eval_poly->___ftadd
;!    ___ftmul->___ftdiv
;!    ___ftsub->___ftadd
;!    ___ftadd->___ftmul
;!    _dispT->_sprintf
;!    ___fttol->___ftadd
;!    _dispRH->_sprintf
;!    _sprintf->___fttol
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_pow
;!    _pow->_exp
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
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
;! (0) _main                                                12    12      0   75320
;!                                             27 BANK1     12    12      0
;!                        _I2C_Receive
;!                  _I2C_RepeatedStart
;!                           _I2C_Send
;!                          _I2C_Start
;!                           _I2C_Stop
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                           ___lwtoft
;!                           _delay_ms
;!                             _dispRH
;!                              _dispT
;!                            _initLCD
;!                    _init_I2C_Master
;!                                _pow
;! ---------------------------------------------------------------------------------
;! (1) _pow                                                 18    12      6   54326
;!                                              9 BANK1     18    12      6
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lltoft
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (2) _log                                                  6     3      3   17213
;!                                             55 BANK0      6     3      3
;!                           ___awtoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) _exp                                                 13    10      3   29857
;!                                             76 BANK0      4     1      3
;!                                              0 BANK1      9     9      0
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;!                                _log (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _ldexp                                               10     5      5    1725
;!                                             55 BANK0     10     5      5
;!                             ___ftge
;!                            ___ftneg
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftneg                                              3     0      3     257
;!                                              0 COMMON     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _floor                                                9     6      3    7777
;!                                             67 BANK0      9     6      3
;!                           ___altoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (3) _frexp                                                6     2      4     436
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                              12     6      6    1090
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (4) ___altoft                                             8     4      4    1993
;!                                             59 BANK0      8     4      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _eval_poly                                           10     4      6    6990
;!                                             45 BANK0     10     4      6
;!                             ___bmul
;!                            ___ftadd
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (4) ___ftmul                                             16    10      6    2950
;!                                             16 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___bmul                                               4     3      1     160
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (3) ___ftsub                                              6     0      6    3535
;!                                             45 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (4) ___ftadd                                             13     7      6    3384
;!                                             32 BANK0     13     7      6
;!                           ___awtoft (ARG)
;!                             ___bmul (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftdiv                                             16    10      6    2400
;!                                              0 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awtoft                                             6     3      3    2105
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             6     2      4    1924
;!                                              8 COMMON     6     2      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _init_I2C_Master                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0    1544
;!                           _dataCtrl
;!                           _delay_ms
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _dispT                                               13    13      0    2906
;!                                             74 BANK0      1     1      0
;!                                              0 BANK1     12    12      0
;!                            ___fttol
;!                           _dataCtrl
;!                           _instCtrl
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (4) ___fttol                                             14    10      4     570
;!                                             45 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _dispRH                                              13    13      0    2336
;!                                             74 BANK0      1     1      0
;!                                              0 BANK1     12    12      0
;!                           _dataCtrl
;!                           _instCtrl
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             15    12      3    1170
;!                                             59 BANK0     15    12      3
;!                            ___fttol (ARG)
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     265
;!                                              8 COMMON     6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     268
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             1     1      0     522
;!                                              3 COMMON     1     1      0
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0     522
;!                                              3 COMMON     1     1      0
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (3) _delay_ms                                             3     1      2     500
;!                                              0 COMMON     3     1      2
;! ---------------------------------------------------------------------------------
;! (1) ___lwtoft                                             4     1      3    1930
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___ftpack                                             8     3      5    1802
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Stop                                             0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Start                                            0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Send                                             1     1      0      22
;!                                              0 COMMON     1     1      0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_RepeatedStart                                    0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Receive                                          3     3      0      45
;!                                              0 COMMON     3     3      0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Wait                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2C_Receive
;!     _I2C_Wait
;!   _I2C_RepeatedStart
;!     _I2C_Wait
;!   _I2C_Send
;!     _I2C_Wait
;!   _I2C_Start
;!     _I2C_Wait
;!   _I2C_Stop
;!     _I2C_Wait
;!   ___awtoft
;!     ___ftpack
;!   ___ftadd
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___bmul (ARG)
;!     ___ftdiv (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _frexp (ARG)
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!     _frexp (ARG)
;!   ___ftdiv
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___ftmul
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftdiv (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!     _frexp (ARG)
;!   ___fttol
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftadd (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___bmul (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _frexp (ARG)
;!     ___ftdiv (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _frexp (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___lwtoft
;!     ___ftpack
;!   _delay_ms
;!   _dispRH
;!     _dataCtrl
;!       _delay_ms
;!     _instCtrl
;!       _delay_ms
;!     _sprintf
;!       ___fttol (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwdiv (ARG)
;!       ___lwmod (ARG)
;!         ___lwdiv (ARG)
;!   _dispT
;!     ___fttol
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     _dataCtrl
;!       _delay_ms
;!     _instCtrl
;!       _delay_ms
;!     _sprintf
;!       ___fttol (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwdiv (ARG)
;!       ___lwmod (ARG)
;!         ___lwdiv (ARG)
;!   _initLCD
;!     _dataCtrl
;!       _delay_ms
;!     _delay_ms
;!     _instCtrl
;!       _delay_ms
;!   _init_I2C_Master
;!   _pow
;!     ___ftge
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _frexp (ARG)
;!     ___ftneg
;!     ___fttol
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lltoft
;!       ___ftpack
;!     _exp
;!       ___awtoft
;!         ___ftpack
;!       ___ftdiv
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftge
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___ftneg
;!       ___ftsub
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!       ___fttol
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       _eval_poly
;!         ___bmul
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!       _floor
;!         ___altoft
;!           ___ftpack
;!           ___fttol (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftge
;!         ___fttol
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         _frexp
;!       _ldexp
;!         ___ftge
;!         ___ftneg
;!         _eval_poly (ARG)
;!           ___bmul
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!       _log (ARG)
;!         ___awtoft
;!           ___ftpack
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftge
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         _eval_poly
;!           ___bmul
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!         _frexp
;!     _log
;!       ___awtoft
;!         ___ftpack
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___ftge
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       _eval_poly
;!         ___bmul
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!       _frexp
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
;!ABS                  0      0      8C       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     50      50       5      100.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50     27      2E       7       57.5%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      8C      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 46 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  T_temp          2   36[BANK1 ] unsigned int 
;;  RH_temp         2   34[BANK1 ] unsigned int 
;;  res             2   32[BANK1 ] int 
;;  temp            1   38[BANK1 ] unsigned char 
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
;;      Locals:         0       0      10       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0      12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_Receive
;;		_I2C_RepeatedStart
;;		_I2C_Send
;;		_I2C_Start
;;		_I2C_Stop
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___lwtoft
;;		_delay_ms
;;		_dispRH
;;		_dispT
;;		_initLCD
;;		_init_I2C_Master
;;		_pow
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	46
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	46
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l2342:	
;LE7-3.c: 47: int res = (int)(pow(2,14));
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y)^080h
	movlw	0x60
	movwf	(pow@y+1)^080h
	movlw	0x41
	movwf	(pow@y+2)^080h
	movlw	0x0
	movwf	(pow@x)^080h
	movlw	0x0
	movwf	(pow@x+1)^080h
	movlw	0x40
	movwf	(pow@x+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	movwf	(_main$646)^080h
	movf	(1+(?_pow))^080h,w
	movwf	(_main$646+1)^080h
	movf	(2+(?_pow))^080h,w
	movwf	(_main$646+2)^080h
	
l2344:	
;LE7-3.c: 47: int res = (int)(pow(2,14));
	movf	(_main$646)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$646+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$646+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@res+1)^080h
	addwf	(main@res+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@res)^080h
	addwf	(main@res)^080h

	line	48
	
l2346:	
;LE7-3.c: 48: unsigned int RH_temp = 0x0000, T_temp = 0x0000;
	clrf	(main@RH_temp)^080h
	clrf	(main@RH_temp+1)^080h
	
l2348:	
	clrf	(main@T_temp)^080h
	clrf	(main@T_temp+1)^080h
	line	49
	
l2350:	
;LE7-3.c: 49: unsigned char temp = 0x00;
	clrf	(main@temp)^080h
	line	50
	
l2352:	
;LE7-3.c: 50: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	51
	
l2354:	
;LE7-3.c: 51: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	52
	
l2356:	
;LE7-3.c: 52: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	53
	
l2358:	
;LE7-3.c: 53: PORTD = 0x00;
	clrf	(8)	;volatile
	line	54
	
l2360:	
;LE7-3.c: 54: init_I2C_Master();
	fcall	_init_I2C_Master
	line	56
	
l2362:	
;LE7-3.c: 56: initLCD();
	fcall	_initLCD
	goto	l2364
	line	59
;LE7-3.c: 58: for(;;)
	
l73:	
	line	61
	
l2364:	
;LE7-3.c: 59: {
;LE7-3.c: 61: I2C_Start();
	fcall	_I2C_Start
	line	62
	
l2366:	
;LE7-3.c: 62: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	63
	
l2368:	
;LE7-3.c: 63: I2C_Send(0xE5);
	movlw	(0E5h)
	fcall	_I2C_Send
	line	64
	
l2370:	
;LE7-3.c: 64: I2C_RepeatedStart();
	fcall	_I2C_RepeatedStart
	line	65
	
l2372:	
;LE7-3.c: 65: I2C_Send(0x81);
	movlw	(081h)
	fcall	_I2C_Send
	line	66
	
l2374:	
;LE7-3.c: 66: RH_temp = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@RH_temp)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@RH_temp+1)^080h
	line	67
	
l2376:	
;LE7-3.c: 67: temp = I2C_Receive(0);
	movlw	(0)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(main@temp)^080h
	line	68
	
l2378:	
;LE7-3.c: 68: I2C_Stop();
	fcall	_I2C_Stop
	line	69
	
l2380:	
;LE7-3.c: 69: delay_ms(20);
	movlw	low(014h)
	movwf	(delay_ms@cnt)
	movlw	high(014h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	71
	
l2382:	
;LE7-3.c: 71: RH_temp = RH_temp << 6;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@RH_temp+1)^080h,w
	movwf	(??_main+0)^080h+0+1
	movf	(main@RH_temp)^080h,w
	movwf	(??_main+0)^080h+0
	movlw	06h
	movwf	btemp+1
u2715:
	clrc
	rlf	(??_main+0)^080h+0,f
	rlf	(??_main+0)^080h+1,f
	decfsz	btemp+1,f
	goto	u2715
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@RH_temp)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@RH_temp+1)^080h
	line	72
	
l2384:	
;LE7-3.c: 72: temp = temp >> 2;
	movf	(main@temp)^080h,w
	movwf	(??_main+0)^080h+0
	movlw	02h
u2725:
	clrc
	rrf	(??_main+0)^080h+0,f
	addlw	-1
	skipz
	goto	u2725
	movf	0+(??_main+0)^080h+0,w
	movwf	(??_main+1)^080h+0
	movf	(??_main+1)^080h+0,w
	movwf	(main@temp)^080h
	line	73
	
l2386:	
;LE7-3.c: 73: RH_temp = RH_temp | temp;
	movf	(main@RH_temp)^080h,w
	iorwf	(main@temp)^080h,w
	movwf	(main@RH_temp)^080h
	movf	(main@RH_temp+1)^080h,w
	movwf	1+(main@RH_temp)^080h
	line	75
	
l2388:	
;LE7-3.c: 75: RH = (int)(-6+(125*((float)RH_temp/(float)res)));
	movf	(main@RH_temp+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(main@RH_temp)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@res+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(main@res)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xfa
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xc0
	movwf	(___ftadd@f1+1)
	movlw	0xc0
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_RH+1)^080h
	addwf	(_RH+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_RH)^080h
	addwf	(_RH)^080h

	line	78
	
l2390:	
;LE7-3.c: 78: I2C_Start();
	fcall	_I2C_Start
	line	79
	
l2392:	
;LE7-3.c: 79: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	80
	
l2394:	
;LE7-3.c: 80: I2C_Send(0xE3);
	movlw	(0E3h)
	fcall	_I2C_Send
	line	81
	
l2396:	
;LE7-3.c: 81: I2C_Stop();
	fcall	_I2C_Stop
	line	82
	
l2398:	
;LE7-3.c: 82: delay_ms(20);
	movlw	low(014h)
	movwf	(delay_ms@cnt)
	movlw	high(014h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	84
	
l2400:	
;LE7-3.c: 84: temp = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@temp)^080h
	line	87
	
l2402:	
;LE7-3.c: 87: I2C_Start();
	fcall	_I2C_Start
	line	88
	
l2404:	
;LE7-3.c: 88: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	89
	
l2406:	
;LE7-3.c: 89: I2C_Send(0xE3);
	movlw	(0E3h)
	fcall	_I2C_Send
	line	90
	
l2408:	
;LE7-3.c: 90: I2C_RepeatedStart();
	fcall	_I2C_RepeatedStart
	line	91
	
l2410:	
;LE7-3.c: 91: I2C_Send(0x81);
	movlw	(081h)
	fcall	_I2C_Send
	line	92
	
l2412:	
;LE7-3.c: 92: T_temp = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@T_temp)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@T_temp+1)^080h
	line	93
	
l2414:	
;LE7-3.c: 93: temp = I2C_Receive(0);
	movlw	(0)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(main@temp)^080h
	line	94
	
l2416:	
;LE7-3.c: 94: I2C_Stop();
	fcall	_I2C_Stop
	line	95
	
l2418:	
;LE7-3.c: 95: delay_ms(20);
	movlw	low(014h)
	movwf	(delay_ms@cnt)
	movlw	high(014h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	97
	
l2420:	
;LE7-3.c: 97: T_temp = T_temp << 6;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@T_temp+1)^080h,w
	movwf	(??_main+0)^080h+0+1
	movf	(main@T_temp)^080h,w
	movwf	(??_main+0)^080h+0
	movlw	06h
	movwf	btemp+1
u2735:
	clrc
	rlf	(??_main+0)^080h+0,f
	rlf	(??_main+0)^080h+1,f
	decfsz	btemp+1,f
	goto	u2735
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@T_temp)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@T_temp+1)^080h
	line	98
	
l2422:	
;LE7-3.c: 98: temp = temp >> 2;
	movf	(main@temp)^080h,w
	movwf	(??_main+0)^080h+0
	movlw	02h
u2745:
	clrc
	rrf	(??_main+0)^080h+0,f
	addlw	-1
	skipz
	goto	u2745
	movf	0+(??_main+0)^080h+0,w
	movwf	(??_main+1)^080h+0
	movf	(??_main+1)^080h+0,w
	movwf	(main@temp)^080h
	line	99
	
l2424:	
;LE7-3.c: 99: T_temp = T_temp | temp;
	movf	(main@T_temp)^080h,w
	iorwf	(main@temp)^080h,w
	movwf	(main@T_temp)^080h
	movf	(main@T_temp+1)^080h,w
	movwf	1+(main@T_temp)^080h
	line	101
	
l2426:	
;LE7-3.c: 101: T = (float)(-46.85+(175.72*((float)T_temp/(float)res)));
	movlw	0x66
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x3b
	movwf	(___ftadd@f1+1)
	movlw	0xc2
	movwf	(___ftadd@f1+2)
	movlw	0xb8
	movwf	(___ftmul@f1)
	movlw	0x2f
	movwf	(___ftmul@f1+1)
	movlw	0x43
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@res+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(main@res)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@T_temp+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(main@T_temp)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_T)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_T+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_T+2)^080h
	line	104
	
l2428:	
;LE7-3.c: 104: I2C_Start();
	fcall	_I2C_Start
	line	105
	
l2430:	
;LE7-3.c: 105: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	106
	
l2432:	
;LE7-3.c: 106: I2C_Send(0xE5);
	movlw	(0E5h)
	fcall	_I2C_Send
	line	107
	
l2434:	
;LE7-3.c: 107: I2C_Stop();
	fcall	_I2C_Stop
	line	108
	
l2436:	
;LE7-3.c: 108: delay_ms(20);
	movlw	low(014h)
	movwf	(delay_ms@cnt)
	movlw	high(014h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	110
	
l2438:	
;LE7-3.c: 110: dispRH();
	fcall	_dispRH
	line	111
	
l2440:	
;LE7-3.c: 111: dispT();
	fcall	_dispT
	line	112
;LE7-3.c: 112: }
	goto	l2364
	
l74:	
	line	113
	
l75:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
;; Parameters:    Size  Location     Type
;;  x               3    9[BANK1 ] unsigned char 
;;  y               3   12[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  yi              4   23[BANK1 ] unsigned long 
;;  sign            1   22[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    9[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0      18       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lltoft
;;		_exp
;;		_log
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
	line	5
global __ptext1
__ptext1:	;psect for function _pow
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:	
;incstack = 0
	opt	stack 3
; Regs used in _pow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l2230:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(pow@sign)^080h
	line	10
	
l2232:	
	movf	(pow@x+2)^080h,w
	iorwf	(pow@x+1)^080h,w
	iorwf	(pow@x)^080h,w
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l2240
u2610:
	line	11
	
l2234:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x0
	movwf	(___ftge@ff1+2)
	movf	(pow@y)^080h,w
	movwf	(___ftge@ff2)
	movf	(pow@y+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(pow@y+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2621
	goto	u2620
u2621:
	goto	l599
u2620:
	line	12
	
l2236:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	13
	
l599:	
	line	14
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l600
	
l2238:	
	goto	l600
	line	15
	
l598:	
	line	16
	
l2240:	
	movf	(pow@y+2)^080h,w
	iorwf	(pow@y+1)^080h,w
	iorwf	(pow@y)^080h,w
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l2246
u2630:
	line	17
	
l2242:	
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x80
	movwf	(?_pow+1)^080h
	movlw	0x3f
	movwf	(?_pow+2)^080h
	goto	l600
	
l2244:	
	goto	l600
	
l601:	
	line	18
	
l2246:	
	movf	(pow@x)^080h,w
	movwf	(___ftge@ff1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2641
	goto	u2640
u2641:
	goto	l2258
u2640:
	line	19
	
l2248:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi)^080h

	line	20
	movf	(pow@yi+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(pow@yi+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(pow@yi+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(pow@yi)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	xorwf	(2+(?___lltoft)),w
	skipz
	goto	u2655
	movf	(pow@y+1)^080h,w
	xorwf	(1+(?___lltoft)),w
	skipz
	goto	u2655
	movf	(pow@y)^080h,w
	xorwf	(0+(?___lltoft)),w
u2655:
	skipnz
	goto	u2651
	goto	u2650
u2651:
	goto	l2254
u2650:
	line	21
	
l2250:	
	movlw	low(021h)
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	22
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l600
	
l2252:	
	goto	l600
	line	23
	
l603:	
	line	24
	
l2254:	
	movf	(pow@yi)^080h,w
	andlw	01h
	movwf	(??_pow+0)^080h+0
	movf	(??_pow+0)^080h+0,w
	movwf	(pow@sign)^080h
	line	25
	
l2256:	
	movf	(pow@x)^080h,w
	movwf	(___ftneg@f1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	movf	(1+(?___ftneg)),w
	movwf	(pow@x+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(pow@x+2)^080h
	goto	l2258
	line	26
	
l602:	
	line	27
	
l2258:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x+2)
	fcall	_log
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$647)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$647+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$647+2)^080h
	
l2260:	
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$647)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$647+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$647+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$648)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$648+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$648+2)^080h
	
l2262:	
	movf	(_pow$648)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$648+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$648+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x+2)
	fcall	_exp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_exp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_exp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_exp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+2)^080h
	line	28
	
l2264:	
	movf	(pow@sign)^080h,w
	skipz
	goto	u2660
	goto	l604
u2660:
	line	29
	
l2266:	
	movf	(pow@x)^080h,w
	movwf	(___ftneg@f1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movf	(1+(?___ftneg)),w
	movwf	(?_pow+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(?_pow+2)^080h
	goto	l600
	
l2268:	
	goto	l600
	
l604:	
	line	30
	line	31
	
l600:	
	return
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8315
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               3   55[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   59[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   55[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	5
global __ptext2
__ptext2:	;psect for function _log
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
;incstack = 0
	opt	stack 3
; Regs used in _log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l2154:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x),w
	movwf	(___ftge@ff1)
	movf	(log@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(log@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2531
	goto	u2530
u2531:
	goto	l2160
u2530:
	line	25
	
l2156:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	26
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l678
	
l2158:	
	goto	l678
	line	27
	
l677:	
	line	28
	
l2160:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x+2),w
	iorwf	(log@x+1),w
	iorwf	(log@x),w
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l2166
u2540:
	line	29
	
l2162:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	30
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l678
	
l2164:	
	goto	l678
	line	31
	
l679:	
	line	32
	
l2166:	
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x40
	movwf	(___ftmul@f1+2)
	movlw	(log@exponent)&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	(frexp@eptr)
	movf	(log@x),w
	movwf	(frexp@value)
	movf	(log@x+1),w
	movwf	(frexp@value+1)
	movf	(log@x+2),w
	movwf	(frexp@value+2)
	fcall	_frexp
	movf	(0+(?_frexp)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?_frexp)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?_frexp)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(log@x)
	movf	(1+(?___ftadd)),w
	movwf	(log@x+1)
	movf	(2+(?___ftadd)),w
	movwf	(log@x+2)
	line	33
	
l2168:	
	movlw	low(-1)
	addwf	(log@exponent),f
	skipnc
	incf	(log@exponent+1),f
	movlw	high(-1)
	addwf	(log@exponent+1),f
	line	34
	
l2170:	
	movf	(log@x),w
	movwf	(eval_poly@x)
	movf	(log@x+1),w
	movwf	(eval_poly@x+1)
	movf	(log@x+2),w
	movwf	(eval_poly@x+2)
	movlw	((log@coeff)-__stringbase)&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	(eval_poly@d)
	movlw	low(08h)
	movwf	(eval_poly@n)
	movlw	high(08h)
	movwf	((eval_poly@n))+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(log@x)
	movf	(1+(?_eval_poly)),w
	movwf	(log@x+1)
	movf	(2+(?_eval_poly)),w
	movwf	(log@x+2)
	line	35
	
l2172:	
	movf	(log@x),w
	movwf	(___ftadd@f1)
	movf	(log@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(log@x+2),w
	movwf	(___ftadd@f1+2)
	movlw	0x72
	movwf	(___ftmul@f1)
	movlw	0x31
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(log@exponent+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(log@exponent),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_log)
	movf	(1+(?___ftadd)),w
	movwf	(?_log+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_log+2)
	goto	l678
	
l2174:	
	line	36
	
l678:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4219
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
;; Parameters:    Size  Location     Type
;;  x               3   76[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  exponent        2    6[BANK1 ] int 
;;  sign            1    8[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   76[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       9       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       9       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	12
global __ptext3
__ptext3:	;psect for function _exp
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:	
;incstack = 0
	opt	stack 3
; Regs used in _exp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l2176:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+2),w
	iorwf	(exp@x+1),w
	iorwf	(exp@x),w
	skipz
	goto	u2551
	goto	u2550
u2551:
	goto	l2182
u2550:
	line	32
	
l2178:	
	movlw	0x0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x3f
	movwf	(?_exp+2)
	goto	l620
	
l2180:	
	goto	l620
	
l619:	
	line	34
	
l2182:	
	movlw	0x72
	movwf	(___ftge@ff1)
	movlw	0x31
	movwf	(___ftge@ff1+1)
	movlw	0x44
	movwf	(___ftge@ff1+2)
	movf	(exp@x),w
	movwf	(___ftge@ff2)
	movf	(exp@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2561
	goto	u2560
u2561:
	goto	l2192
u2560:
	line	35
	
l2184:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	36
	goto	l2188
	
l2186:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l620
	
l623:	
	
l2188:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_exp)
	movlw	0x7f
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l620
	
l625:	
	goto	l620
	
l2190:	
	goto	l620
	line	37
	
l621:	
	line	38
	
l2192:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	movwf	(___ftge@ff1)
	movf	(exp@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x49
	movwf	(___ftge@ff2)
	movlw	0x3a
	movwf	(___ftge@ff2+1)
	movlw	0xc4
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2571
	goto	u2570
u2571:
	goto	l2198
u2570:
	line	39
	
l2194:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	40
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l620
	
l2196:	
	goto	l620
	line	41
	
l626:	
	line	43
	
l2198:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	movwf	(___ftge@ff1)
	movf	(exp@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	movlw	0
	btfss	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@sign)^080h
	line	44
	
l2200:	
	movf	(exp@sign)^080h,w
	skipz
	goto	u2580
	goto	l2204
u2580:
	line	45
	
l2202:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	movwf	(___ftneg@f1)
	movf	(exp@x+1),w
	movwf	(___ftneg@f1+1)
	movf	(exp@x+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x)
	movf	(1+(?___ftneg)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftneg)),w
	movwf	(exp@x+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	goto	l2204
	
l627:	
	line	46
	
l2204:	
	movlw	0xaa
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xb8
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(exp@x),w
	movwf	(___ftmul@f2)
	movf	(exp@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(exp@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(exp@x)
	movf	(1+(?___ftmul)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftmul)),w
	movwf	(exp@x+2)
	line	47
	
l2206:	
	movf	(exp@x),w
	movwf	(floor@x)
	movf	(exp@x+1),w
	movwf	(floor@x+1)
	movf	(exp@x+2),w
	movwf	(floor@x+2)
	fcall	_floor
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$649)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$649+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$649+2)^080h
	
l2208:	
	movf	(_exp$649)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_exp$649+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_exp$649+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(exp@exponent+1)^080h
	addwf	(exp@exponent+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(exp@exponent)^080h
	addwf	(exp@exponent)^080h

	line	48
	
l2210:	
	movf	(exp@exponent+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(exp@exponent)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftsub@f2+2)
	movf	(exp@x),w
	movwf	(___ftsub@f1)
	movf	(exp@x+1),w
	movwf	(___ftsub@f1+1)
	movf	(exp@x+2),w
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	movwf	(exp@x)
	movf	(1+(?___ftsub)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftsub)),w
	movwf	(exp@x+2)
	line	49
	
l2212:	
	movf	(exp@x),w
	movwf	(eval_poly@x)
	movf	(exp@x+1),w
	movwf	(eval_poly@x+1)
	movf	(exp@x+2),w
	movwf	(eval_poly@x+2)
	movlw	((exp@coeff)-__stringbase)&0ffh
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	movwf	(eval_poly@d)
	movlw	low(09h)
	movwf	(eval_poly@n)
	movlw	high(09h)
	movwf	((eval_poly@n))+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(ldexp@value)
	movf	(1+(?_eval_poly)),w
	movwf	(ldexp@value+1)
	movf	(2+(?_eval_poly)),w
	movwf	(ldexp@value+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exponent+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ldexp@newexp+1)
	addwf	(ldexp@newexp+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exponent)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ldexp@newexp)
	addwf	(ldexp@newexp)

	fcall	_ldexp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ldexp)),w
	movwf	(exp@x)
	movf	(1+(?_ldexp)),w
	movwf	(exp@x+1)
	movf	(2+(?_ldexp)),w
	movwf	(exp@x+2)
	line	50
	
l2214:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@sign)^080h,w
	skipz
	goto	u2590
	goto	l628
u2590:
	goto	l2220
	line	52
	
l2216:	
	goto	l2220
	
l2218:	
	movlw	0x0
	movwf	(_exp$440)^080h
	movlw	0x80
	movwf	(_exp$440+1)^080h
	movlw	0x7f
	movwf	(_exp$440+2)^080h
	goto	l633
	
l631:	
	
l2220:	
	movlw	0xff
	movwf	(_exp$440)^080h
	movlw	0x7f
	movwf	(_exp$440+1)^080h
	movlw	0x7f
	movwf	(_exp$440+2)^080h
	
l633:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_exp$440+2)^080h,w
	skipz
	goto	u2605
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_exp$440+1)^080h,w
	skipz
	goto	u2605
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_exp$440)^080h,w
u2605:
	skipz
	goto	u2601
	goto	u2600
u2601:
	goto	l2226
u2600:
	line	53
	
l2222:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l620
	
l2224:	
	goto	l620
	
l629:	
	line	54
	
l2226:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(exp@x),w
	movwf	(___ftdiv@f2)
	movf	(exp@x+1),w
	movwf	(___ftdiv@f2+1)
	movf	(exp@x+2),w
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftdiv@f1)
	movlw	0x80
	movwf	(___ftdiv@f1+1)
	movlw	0x3f
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(?_exp)
	movf	(1+(?___ftdiv)),w
	movwf	(?_exp+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?_exp+2)
	goto	l620
	
l2228:	
	goto	l620
	line	55
	
l628:	
	line	56
	line	57
	
l620:	
	return
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4219
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   55[BANK0 ] unsigned char 
;;  newexp          2   58[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   55[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	277
global __ptext4
__ptext4:	;psect for function _ldexp
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:	
;incstack = 0
	opt	stack 4
; Regs used in _ldexp: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	279
	
l2012:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value+2),w
	iorwf	(ldexp@value+1),w
	iorwf	(ldexp@value),w
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l2018
u2370:
	line	280
	
l2014:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l652
	
l2016:	
	goto	l652
	
l651:	
	line	282
	
l2018:	
	movf	0+(ldexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	clrc
	rlf	(??_ldexp+0)+0,f
	rlf	(??_ldexp+0)+1,f
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	283
	rlf	0+(ldexp@value)+01h,w
	rlf	0+(ldexp@value)+01h,w
	andlw	1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	287
	
l2020:	
	btfss	(ldexp@newexp+1),7
	goto	u2381
	goto	u2380
u2381:
	goto	l2028
u2380:
	line	288
	
l2022:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	289
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l652
	
l2024:	
	goto	l652
	line	290
	
l2026:	
	goto	l2054
	line	291
	
l653:	
	
l2028:	
	movf	(ldexp@newexp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2395
	movlw	low(0100h)
	subwf	(ldexp@newexp),w
u2395:

	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2052
u2390:
	line	292
	
l2030:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	293
	
l2032:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value),w
	movwf	(___ftge@ff1)
	movf	(ldexp@value+1),w
	movwf	(___ftge@ff1+1)
	movf	(ldexp@value+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2401
	goto	u2400
u2401:
	goto	l2048
u2400:
	goto	l2038
	line	294
	
l2034:	
	goto	l2038
	
l2036:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$477)
	movlw	0x80
	movwf	(_ldexp$477+1)
	movlw	0x7f
	movwf	(_ldexp$477+2)
	goto	l2040
	
l658:	
	
l2038:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$477)
	movlw	0x7f
	movwf	(_ldexp$477+1)
	movlw	0x7f
	movwf	(_ldexp$477+2)
	goto	l2040
	
l660:	
	
l2040:	
	movf	(_ldexp$477),w
	movwf	(___ftneg@f1)
	movf	(_ldexp$477+1),w
	movwf	(___ftneg@f1+1)
	movf	(_ldexp$477+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movf	(1+(?___ftneg)),w
	movwf	(?_ldexp+1)
	movf	(2+(?___ftneg)),w
	movwf	(?_ldexp+2)
	goto	l652
	
l2042:	
	goto	l652
	
l2044:	
	goto	l2054
	line	295
	
l656:	
	line	296
	goto	l2048
	
l2046:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x80
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l652
	
l663:	
	
l2048:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x7f
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l652
	
l665:	
	goto	l652
	
l2050:	
	goto	l652
	
l661:	
	line	297
	goto	l2054
	line	298
	
l655:	
	line	300
	
l2052:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@newexp+1),w
	movwf	(??_ldexp+0)+0+1
	movf	(ldexp@newexp),w
	movwf	(??_ldexp+0)+0
	rlf	(??_ldexp+0)+1,w
	rrf	(??_ldexp+0)+1,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+02h,w
	xorwf	0+(??_ldexp+0)+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+02h
	line	301
	movf	(ldexp@newexp),w
	andlw	01h
	movwf	(??_ldexp+0)+0
	rrf	(??_ldexp+0)+0,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+01h,w
	xorwf	(??_ldexp+0)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+01h
	goto	l2054
	line	305
	
l666:	
	goto	l2054
	
l654:	
	line	306
	
l2054:	
	goto	l652
	
l2056:	
	line	307
	
l652:	
	return
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8315
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pow
;;		_exp
;;		_ldexp
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext5
__ptext5:	;psect for function ___ftneg
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftneg: [wreg]
	line	17
	
l1788:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u1971
	goto	u1970
u1971:
	goto	l1792
u1970:
	line	18
	
l1790:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l1792
	
l470:	
	line	19
	
l1792:	
	goto	l471
	
l1794:	
	line	20
	
l471:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   67[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  i               3   71[BANK0 ] float 
;;  expon           2   74[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   67[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___altoft
;;		___ftadd
;;		___ftge
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
global __ptext6
__ptext6:	;psect for function _floor
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
;incstack = 0
	opt	stack 3
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l1974:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@x),w
	movwf	(frexp@value)
	movf	(floor@x+1),w
	movwf	(frexp@value+1)
	movf	(floor@x+2),w
	movwf	(frexp@value+2)
	movlw	(floor@expon)&0ffh
	movwf	(??_floor+0)+0
	movf	(??_floor+0)+0,w
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
l1976:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(floor@expon+1),7
	goto	u2321
	goto	u2320
u2321:
	goto	l1988
u2320:
	line	20
	
l1978:	
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2331
	goto	u2330
u2331:
	goto	l1984
u2330:
	line	21
	
l1980:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x80
	movwf	(?_floor+1)
	movlw	0xbf
	movwf	(?_floor+2)
	goto	l640
	
l1982:	
	goto	l640
	
l639:	
	line	22
	
l1984:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x0
	movwf	(?_floor+1)
	movlw	0x0
	movwf	(?_floor+2)
	goto	l640
	
l1986:	
	goto	l640
	line	23
	
l638:	
	line	24
	
l1988:	
	movlw	high(015h)
	subwf	(floor@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(floor@expon),w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l1992
u2340:
	line	25
	
l1990:	
	goto	l640
	
l641:	
	line	26
	
l1992:	
	movf	(floor@x),w
	movwf	(___fttol@f1)
	movf	(floor@x+1),w
	movwf	(___fttol@f1+1)
	movf	(floor@x+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	movwf	(___altoft@c+3)
	movf	(2+(?___fttol)),w
	movwf	(___altoft@c+2)
	movf	(1+(?___fttol)),w
	movwf	(___altoft@c+1)
	movf	(0+(?___fttol)),w
	movwf	(___altoft@c)

	fcall	___altoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___altoft)),w
	movwf	(floor@i)
	movf	(1+(?___altoft)),w
	movwf	(floor@i+1)
	movf	(2+(?___altoft)),w
	movwf	(floor@i+2)
	line	27
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movf	(floor@i),w
	movwf	(___ftge@ff2)
	movf	(floor@i+1),w
	movwf	(___ftge@ff2+1)
	movf	(floor@i+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2351
	goto	u2350
u2351:
	goto	l1998
u2350:
	line	28
	
l1994:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movf	(floor@i),w
	movwf	(___ftadd@f2)
	movf	(floor@i+1),w
	movwf	(___ftadd@f2+1)
	movf	(floor@i+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_floor)
	movf	(1+(?___ftadd)),w
	movwf	(?_floor+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_floor+2)
	goto	l640
	
l1996:	
	goto	l640
	
l642:	
	line	29
	
l1998:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@i),w
	movwf	(?_floor)
	movf	(floor@i+1),w
	movwf	(?_floor+1)
	movf	(floor@i+2),w
	movwf	(?_floor+2)
	goto	l640
	
l2000:	
	line	30
	
l640:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[COMMON] int 
;;  eptr            1    3[COMMON] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
global __ptext7
__ptext7:	;psect for function _frexp
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
;incstack = 0
	opt	stack 5
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l1840:	
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u2081
	goto	u2080
u2081:
	goto	l1848
u2080:
	line	257
	
l1842:	
	movf	(frexp@eptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	258
	
l1844:	
	movlw	0x0
	movwf	(?_frexp)
	movlw	0x0
	movwf	(?_frexp+1)
	movlw	0x0
	movwf	(?_frexp+2)
	goto	l648
	
l1846:	
	goto	l648
	line	259
	
l647:	
	line	261
	
l1848:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	rlf	0+(frexp@value)+01h,w
	rlf	0+(frexp@value)+01h,w
	andlw	1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	iorwf	indf,f
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	iorwf	indf,f
	line	263
	
l1850:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(-126)
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movlw	high(-126)
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	268
	
l1852:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l1854:	
	bcf	0+(frexp@value)+01h,7
	line	273
	
l1856:	
	goto	l648
	
l1858:	
	line	274
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
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
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pow
;;		_exp
;;		_floor
;;		_ldexp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext8
__ptext8:	;psect for function ___ftge
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1718:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l1722
u1780:
	line	7
	
l1720:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1791
	goto	u1792
u1791:
	addwf	(??___ftge+0)+1,f
	
u1792:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1793
	goto	u1794
u1793:
	addwf	(??___ftge+0)+2,f
	
u1794:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l1722
	
l452:	
	line	8
	
l1722:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u1801
	goto	u1800
u1801:
	goto	l1726
u1800:
	line	9
	
l1724:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1811
	goto	u1812
u1811:
	addwf	(??___ftge+0)+1,f
	
u1812:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1813
	goto	u1814
u1813:
	addwf	(??___ftge+0)+2,f
	
u1814:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l1726
	
l453:	
	line	10
	
l1726:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1728:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1730:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u1825
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u1825
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u1825:
	skipnc
	goto	u1821
	goto	u1820
u1821:
	goto	l1734
u1820:
	
l1732:	
	clrc
	
	goto	l454
	
l1580:	
	
l1734:	
	setc
	
	goto	l454
	
l1582:	
	goto	l454
	
l1736:	
	line	13
	
l454:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   59[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   66[BANK0 ] unsigned char 
;;  exp             1   65[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   59[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
global __ptext9
__ptext9:	;psect for function ___altoft
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
;incstack = 0
	opt	stack 3
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l1630:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
l1632:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l1634:	
	btfss	(___altoft@c+3),7
	goto	u1511
	goto	u1510
u1511:
	goto	l1640
u1510:
	line	48
	
l1636:	
	comf	(___altoft@c),f
	comf	(___altoft@c+1),f
	comf	(___altoft@c+2),f
	comf	(___altoft@c+3),f
	incf	(___altoft@c),f
	skipnz
	incf	(___altoft@c+1),f
	skipnz
	incf	(___altoft@c+2),f
	skipnz
	incf	(___altoft@c+3),f
	line	49
	clrf	(___altoft@sign)
	incf	(___altoft@sign),f
	goto	l1640
	line	50
	
l321:	
	line	52
	goto	l1640
	
l323:	
	line	53
	
l1638:	
	movlw	01h
u1525:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u1525

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	l1640
	line	55
	
l322:	
	line	52
	
l1640:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l1638
u1530:
	goto	l1642
	
l324:	
	line	56
	
l1642:	
	movf	(___altoft@c),w
	movwf	(___ftpack@arg)
	movf	(___altoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___altoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___altoft@exp),w
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___altoft@sign),w
	movwf	(??___altoft+1)+0
	movf	(??___altoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	goto	l325
	
l1644:	
	line	57
	
l325:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   45[BANK0 ] float 
;;  d               1   48[BANK0 ] PTR const 
;;		 -> log@coeff(27), exp@coeff(30), 
;;  n               2   49[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   52[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   45[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		___ftadd
;;		___ftmul
;; This function is called by:
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
	line	4
global __ptext10
__ptext10:	;psect for function _eval_poly
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
;incstack = 0
	opt	stack 3
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l2002:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(eval_poly@n),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(eval_poly@res)
	fcall	stringdir
	movwf	(eval_poly@res+1)
	fcall	stringdir
	movwf	(eval_poly@res+2)
	line	9
	goto	l2006
	
l686:	
	line	10
	
l2004:	
	movlw	(03h)
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(-1)
	addwf	(eval_poly@n),f
	skipnc
	incf	(eval_poly@n+1),f
	movlw	high(-1)
	addwf	(eval_poly@n+1),f
	movf	((eval_poly@n)),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(___ftadd@f1)
	fcall	stringdir
	movwf	(___ftadd@f1+1)
	fcall	stringdir
	movwf	(___ftadd@f1+2)
	movf	(eval_poly@res),w
	movwf	(___ftmul@f1)
	movf	(eval_poly@res+1),w
	movwf	(___ftmul@f1+1)
	movf	(eval_poly@res+2),w
	movwf	(___ftmul@f1+2)
	movf	(eval_poly@x),w
	movwf	(___ftmul@f2)
	movf	(eval_poly@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(eval_poly@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(eval_poly@res)
	movf	(1+(?___ftadd)),w
	movwf	(eval_poly@res+1)
	movf	(2+(?___ftadd)),w
	movwf	(eval_poly@res+2)
	goto	l2006
	
l685:	
	line	9
	
l2006:	
	movf	((eval_poly@n+1)),w
	iorwf	((eval_poly@n)),w
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l2004
u2360:
	goto	l2008
	
l687:	
	line	11
	
l2008:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	goto	l688
	
l2010:	
	line	12
	
l688:	
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12411
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;;  f2              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   27[BANK0 ] unsigned um
;;  sign            1   31[BANK0 ] unsigned char 
;;  cntr            1   30[BANK0 ] unsigned char 
;;  exp             1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_pow
;;		_exp
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext11
__ptext11:	;psect for function ___ftmul
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1738:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u1831
	goto	u1830
u1831:
	goto	l1744
u1830:
	line	68
	
l1740:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l460
	
l1742:	
	goto	l460
	
l459:	
	line	69
	
l1744:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u1841
	goto	u1840
u1841:
	goto	l1750
u1840:
	line	70
	
l1746:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l460
	
l1748:	
	goto	l460
	
l461:	
	line	71
	
l1750:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1855:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1850:
	addlw	-1
	skipz
	goto	u1855
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1865:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1860:
	addlw	-1
	skipz
	goto	u1865
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1752:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1754:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1756:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1758:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1760:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1762
	line	135
	
l462:	
	line	136
	
l1762:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1871
	goto	u1870
u1871:
	goto	l1766
u1870:
	line	137
	
l1764:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1881
	addwf	(___ftmul@f3_as_product+1),f
u1881:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1882
	addwf	(___ftmul@f3_as_product+2),f
u1882:

	goto	l1766
	
l463:	
	line	138
	
l1766:	
	movlw	01h
u1895:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1895

	line	139
	
l1768:	
	movlw	01h
u1905:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1905
	line	140
	
l1770:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l1762
u1910:
	goto	l1772
	
l464:	
	line	143
	
l1772:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1774
	line	144
	
l465:	
	line	145
	
l1774:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l1778
u1920:
	line	146
	
l1776:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1931
	addwf	(___ftmul@f3_as_product+1),f
u1931:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1932
	addwf	(___ftmul@f3_as_product+2),f
u1932:

	goto	l1778
	
l466:	
	line	147
	
l1778:	
	movlw	01h
u1945:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1945

	line	148
	
l1780:	
	movlw	01h
u1955:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1955

	line	149
	
l1782:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l1774
u1960:
	goto	l1784
	
l467:	
	line	156
	
l1784:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l460
	
l1786:	
	line	157
	
l460:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
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
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext12
__ptext12:	;psect for function ___bmul
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l1614:	
	clrf	(___bmul@product)
	goto	l1616
	line	42
	
l255:	
	line	43
	
l1616:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l1620
u1490:
	line	44
	
l1618:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l1620
	
l256:	
	line	45
	
l1620:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1622:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l1624:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u1501
	goto	u1500
u1501:
	goto	l1616
u1500:
	goto	l1626
	
l257:	
	line	50
	
l1626:	
	movf	(___bmul@product),w
	goto	l258
	
l1628:	
	line	51
	
l258:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 18 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   45[BANK0 ] float 
;;  f1              3   48[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   45[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
global __ptext13
__ptext13:	;psect for function ___ftsub
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l1920:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	24
	
l1922:	
	movf	(___ftsub@f1),w
	movwf	(___ftadd@f1)
	movf	(___ftsub@f1+1),w
	movwf	(___ftadd@f1+1)
	movf	(___ftsub@f1+2),w
	movwf	(___ftadd@f1+2)
	movf	(___ftsub@f2),w
	movwf	(___ftadd@f2)
	movf	(___ftsub@f2+1),w
	movwf	(___ftadd@f2+1)
	movf	(___ftsub@f2+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	goto	l476
	
l1924:	
	line	25
	
l476:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   32[BANK0 ] float 
;;  f2              3   35[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   44[BANK0 ] unsigned char 
;;  exp2            1   43[BANK0 ] unsigned char 
;;  sign            1   42[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		___ftsub
;;		_floor
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext14
__ptext14:	;psect for function ___ftadd
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1646:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l1648:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u1540
	goto	l1654
u1540:
	
l1650:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1551
	goto	u1550
u1551:
	goto	l1658
u1550:
	
l1652:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1561
	goto	u1560
u1561:
	goto	l1658
u1560:
	goto	l1654
	
l413:	
	line	93
	
l1654:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l414
	
l1656:	
	goto	l414
	
l411:	
	line	94
	
l1658:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u1570
	goto	l417
u1570:
	
l1660:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1581
	goto	u1580
u1581:
	goto	l1664
u1580:
	
l1662:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1591
	goto	u1590
u1591:
	goto	l1664
u1590:
	
l417:	
	line	95
	goto	l414
	
l415:	
	line	96
	
l1664:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1666:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l418
u1600:
	line	98
	
l1668:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l418:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1611
	goto	u1610
u1611:
	goto	l419
u1610:
	line	100
	
l1670:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l419:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1672:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1674:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1621
	goto	u1620
u1621:
	goto	l1686
u1620:
	goto	l1676
	line	109
	
l421:	
	line	110
	
l1676:	
	movlw	01h
u1635:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u1635
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l1678:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1641
	goto	u1640
u1641:
	goto	l1684
u1640:
	
l1680:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l1676
u1650:
	goto	l1684
	
l423:	
	goto	l1684
	
l424:	
	line	113
	goto	l1684
	
l426:	
	line	114
	
l1682:	
	movlw	01h
u1665:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u1665

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l1684
	line	116
	
l425:	
	line	113
	
l1684:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l1682
u1670:
	goto	l428
	
l427:	
	line	117
	goto	l428
	
l420:	
	
l1686:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1681
	goto	u1680
u1681:
	goto	l428
u1680:
	goto	l1688
	line	120
	
l430:	
	line	121
	
l1688:	
	movlw	01h
u1695:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u1695
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l1690:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1701
	goto	u1700
u1701:
	goto	l1696
u1700:
	
l1692:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l1688
u1710:
	goto	l1696
	
l432:	
	goto	l1696
	
l433:	
	line	124
	goto	l1696
	
l435:	
	line	125
	
l1694:	
	movlw	01h
u1725:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u1725

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l1696
	line	127
	
l434:	
	line	124
	
l1696:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1731
	goto	u1730
u1731:
	goto	l1694
u1730:
	goto	l428
	
l436:	
	goto	l428
	line	128
	
l429:	
	line	129
	
l428:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1741
	goto	u1740
u1741:
	goto	l1700
u1740:
	line	131
	
l1698:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l1700
	line	133
	
l437:	
	line	134
	
l1700:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1751
	goto	u1750
u1751:
	goto	l1704
u1750:
	line	136
	
l1702:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l1704
	line	138
	
l438:	
	line	139
	
l1704:	
	clrf	(___ftadd@sign)
	line	140
	
l1706:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1761
	addwf	(___ftadd@f2+1),f
u1761:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1762
	addwf	(___ftadd@f2+2),f
u1762:

	line	141
	
l1708:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l1714
u1770:
	line	142
	
l1710:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l1712:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l1714
	line	145
	
l439:	
	line	146
	
l1714:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l414
	
l1716:	
	line	148
	
l414:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK0 ] float 
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   11[BANK0 ] float 
;;  sign            1   15[BANK0 ] unsigned char 
;;  exp             1   14[BANK0 ] unsigned char 
;;  cntr            1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext15
__ptext15:	;psect for function ___ftdiv
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l1878:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u2111
	goto	u2110
u2111:
	goto	l1884
u2110:
	line	56
	
l1880:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l445
	
l1882:	
	goto	l445
	
l444:	
	line	57
	
l1884:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u2121
	goto	u2120
u2121:
	goto	l1890
u2120:
	line	58
	
l1886:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l445
	
l1888:	
	goto	l445
	
l446:	
	line	59
	
l1890:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l1892:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l1894:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2135:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2130:
	addlw	-1
	skipz
	goto	u2135
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l1896:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2145:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2140:
	addlw	-1
	skipz
	goto	u2145
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l1898:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l1900:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l1902:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l1904
	line	69
	
l447:	
	line	70
	
l1904:	
	movlw	01h
u2155:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2155
	line	71
	
l1906:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2165
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2165
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2165:
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l1912
u2160:
	line	72
	
l1908:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l1910:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l1912
	line	74
	
l448:	
	line	75
	
l1912:	
	movlw	01h
u2175:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2175
	line	76
	
l1914:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l1904
u2180:
	goto	l1916
	
l449:	
	line	77
	
l1916:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l445
	
l1918:	
	line	78
	
l445:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext16
__ptext16:	;psect for function ___awtoft
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1866:	
	clrf	(___awtoft@sign)
	line	37
	
l1868:	
	btfss	(___awtoft@c+1),7
	goto	u2101
	goto	u2100
u2101:
	goto	l1874
u2100:
	line	38
	
l1870:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1872:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l1874
	line	40
	
l388:	
	line	41
	
l1874:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l389
	
l1876:	
	line	42
	
l389:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
global __ptext17
__ptext17:	;psect for function ___lltoft
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l2144:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l2148
	
l537:	
	line	42
	
l2146:	
	movlw	01h
u2515:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u2515

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l2148
	line	44
	
l536:	
	line	41
	
l2148:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l2146
u2520:
	goto	l2150
	
l538:	
	line	45
	
l2150:	
	movf	(___lltoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lltoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___lltoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l539
	
l2152:	
	line	46
	
l539:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	_init_I2C_Master

;; *************** function _init_I2C_Master *****************
;; Defined at:
;;		line 212 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	212
global __ptext18
__ptext18:	;psect for function _init_I2C_Master
psect	text18
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	212
	global	__size_of_init_I2C_Master
	__size_of_init_I2C_Master	equ	__end_of_init_I2C_Master-_init_I2C_Master
	
_init_I2C_Master:	
;incstack = 0
	opt	stack 7
; Regs used in _init_I2C_Master: [wreg+status,2]
	line	213
	
l2270:	
;LE7-3.c: 213: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7	;volatile
	line	214
;LE7-3.c: 214: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7	;volatile
	line	215
	
l2272:	
;LE7-3.c: 215: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	216
	
l2274:	
;LE7-3.c: 216: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	219
	
l2276:	
;LE7-3.c: 219: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	220
;LE7-3.c: 220: SSPADD = 0x09;
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	221
	
l105:	
	return
	opt stack 0
GLOBAL	__end_of_init_I2C_Master
	__end_of_init_I2C_Master:
	signat	_init_I2C_Master,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 133 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;;		_delay_ms
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	133
global __ptext19
__ptext19:	;psect for function _initLCD
psect	text19
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	133
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	134
	
l2278:	
;LE7-3.c: 134: delay_ms(20);
	movlw	low(014h)
	movwf	(delay_ms@cnt)
	movlw	high(014h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	135
;LE7-3.c: 135: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	136
;LE7-3.c: 136: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	137
;LE7-3.c: 137: delay_ms(5);
	movlw	low(05h)
	movwf	(delay_ms@cnt)
	movlw	high(05h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	138
;LE7-3.c: 138: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	139
;LE7-3.c: 139: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	141
;LE7-3.c: 141: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	142
;LE7-3.c: 142: dataCtrl('H');
	movlw	(048h)
	fcall	_dataCtrl
	line	143
;LE7-3.c: 143: dataCtrl('u');
	movlw	(075h)
	fcall	_dataCtrl
	line	144
;LE7-3.c: 144: dataCtrl('m');
	movlw	(06Dh)
	fcall	_dataCtrl
	line	145
;LE7-3.c: 145: dataCtrl('i');
	movlw	(069h)
	fcall	_dataCtrl
	line	146
;LE7-3.c: 146: dataCtrl('d');
	movlw	(064h)
	fcall	_dataCtrl
	line	147
;LE7-3.c: 147: dataCtrl('i');
	movlw	(069h)
	fcall	_dataCtrl
	line	148
;LE7-3.c: 148: dataCtrl('t');
	movlw	(074h)
	fcall	_dataCtrl
	line	149
;LE7-3.c: 149: dataCtrl('y');
	movlw	(079h)
	fcall	_dataCtrl
	line	150
;LE7-3.c: 150: dataCtrl(':');
	movlw	(03Ah)
	fcall	_dataCtrl
	line	152
;LE7-3.c: 152: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	153
;LE7-3.c: 153: dataCtrl('T');
	movlw	(054h)
	fcall	_dataCtrl
	line	154
;LE7-3.c: 154: dataCtrl('e');
	movlw	(065h)
	fcall	_dataCtrl
	line	155
;LE7-3.c: 155: dataCtrl('m');
	movlw	(06Dh)
	fcall	_dataCtrl
	line	156
;LE7-3.c: 156: dataCtrl('p');
	movlw	(070h)
	fcall	_dataCtrl
	line	157
;LE7-3.c: 157: dataCtrl('e');
	movlw	(065h)
	fcall	_dataCtrl
	line	158
;LE7-3.c: 158: dataCtrl('r');
	movlw	(072h)
	fcall	_dataCtrl
	line	159
;LE7-3.c: 159: dataCtrl('a');
	movlw	(061h)
	fcall	_dataCtrl
	line	160
;LE7-3.c: 160: dataCtrl('t');
	movlw	(074h)
	fcall	_dataCtrl
	line	161
;LE7-3.c: 161: dataCtrl('u');
	movlw	(075h)
	fcall	_dataCtrl
	line	162
;LE7-3.c: 162: dataCtrl('r');
	movlw	(072h)
	fcall	_dataCtrl
	line	163
;LE7-3.c: 163: dataCtrl('e');
	movlw	(065h)
	fcall	_dataCtrl
	line	164
;LE7-3.c: 164: dataCtrl(':');
	movlw	(03Ah)
	fcall	_dataCtrl
	line	165
	
l87:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_dispT

;; *************** function _dispT *****************
;; Defined at:
;;		line 192 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   10[BANK1 ] int 
;;  val            10    0[BANK1 ] unsigned char [10]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      12       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1      12       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___fttol
;;		_dataCtrl
;;		_instCtrl
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	192
global __ptext20
__ptext20:	;psect for function _dispT
psect	text20
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	192
	global	__size_of_dispT
	__size_of_dispT	equ	__end_of_dispT-_dispT
	
_dispT:	
;incstack = 0
	opt	stack 5
; Regs used in _dispT: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	193
	
l2324:	
;LE7-3.c: 193: instCtrl(0xCD);
	movlw	(0CDh)
	fcall	_instCtrl
	line	199
	
l2326:	
;LE7-3.c: 195: char val[10];
;LE7-3.c: 199: sprintf(val, "%d", (int)T);
	movlw	((STR_2)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispT+0)+0
	movf	(??_dispT+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_T)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_T+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_T+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	0+(((0+(?___fttol)))),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(dispT@val)&0ffh
	fcall	_sprintf
	line	201
	
l2328:	
;LE7-3.c: 201: for(int i = 0; val[i] != '\0'; i++) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(dispT@i)^080h
	clrf	(dispT@i+1)^080h
	goto	l2334
	
l100:	
	line	202
	
l2330:	
;LE7-3.c: 202: dataCtrl(val[i]);
	movf	(dispT@i)^080h,w
	addlw	dispT@val&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_dataCtrl
	line	201
	
l2332:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(dispT@i)^080h,f
	skipnc
	incf	(dispT@i+1)^080h,f
	movlw	high(01h)
	addwf	(dispT@i+1)^080h,f
	goto	l2334
	
l99:	
	
l2334:	
	movf	(dispT@i)^080h,w
	addlw	dispT@val&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,f
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l2330
u2700:
	goto	l2336
	
l101:	
	line	205
	
l2336:	
;LE7-3.c: 203: }
;LE7-3.c: 205: dataCtrl(' ');
	movlw	(020h)
	fcall	_dataCtrl
	line	206
;LE7-3.c: 206: dataCtrl('C');
	movlw	(043h)
	fcall	_dataCtrl
	line	207
;LE7-3.c: 207: dataCtrl(' ');
	movlw	(020h)
	fcall	_dataCtrl
	line	208
;LE7-3.c: 208: dataCtrl(' ');
	movlw	(020h)
	fcall	_dataCtrl
	line	209
	
l102:	
	return
	opt stack 0
GLOBAL	__end_of_dispT
	__end_of_dispT:
	signat	_dispT,88
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   45[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   54[BANK0 ] unsigned long 
;;  exp1            1   58[BANK0 ] unsigned char 
;;  sign1           1   53[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   45[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_dispT
;;		_pow
;;		_exp
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext21
__ptext21:	;psect for function ___fttol
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1796:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u1981
	goto	u1980
u1981:
	goto	l1802
u1980:
	line	50
	
l1798:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l480
	
l1800:	
	goto	l480
	
l479:	
	line	51
	
l1802:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1995:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1990:
	addlw	-1
	skipz
	goto	u1995
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1804:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1806:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1808:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1810:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l1812:	
	btfss	(___fttol@exp1),7
	goto	u2001
	goto	u2000
u2001:
	goto	l1822
u2000:
	line	57
	
l1814:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2011
	goto	u2010
u2011:
	goto	l1820
u2010:
	line	58
	
l1816:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l480
	
l1818:	
	goto	l480
	
l482:	
	goto	l1820
	line	59
	
l483:	
	line	60
	
l1820:	
	movlw	01h
u2025:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2025

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2031
	goto	u2030
u2031:
	goto	l1820
u2030:
	goto	l1832
	
l484:	
	line	62
	goto	l1832
	
l481:	
	line	63
	
l1822:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l1830
u2040:
	line	64
	
l1824:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l480
	
l1826:	
	goto	l480
	
l486:	
	line	65
	goto	l1830
	
l488:	
	line	66
	
l1828:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2055:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2055
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l1830
	line	68
	
l487:	
	line	65
	
l1830:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2061
	goto	u2060
u2061:
	goto	l1828
u2060:
	goto	l1832
	
l489:	
	goto	l1832
	line	69
	
l485:	
	line	70
	
l1832:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2070
	goto	l1836
u2070:
	line	71
	
l1834:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l1836
	
l490:	
	line	72
	
l1836:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l480
	
l1838:	
	line	73
	
l480:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	_dispRH

;; *************** function _dispRH *****************
;; Defined at:
;;		line 176 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   10[BANK1 ] int 
;;  val            10    0[BANK1 ] unsigned char [10]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      12       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1      12       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;;		_instCtrl
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	176
global __ptext22
__ptext22:	;psect for function _dispRH
psect	text22
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	176
	global	__size_of_dispRH
	__size_of_dispRH	equ	__end_of_dispRH-_dispRH
	
_dispRH:	
;incstack = 0
	opt	stack 5
; Regs used in _dispRH: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	177
	
l2310:	
;LE7-3.c: 177: instCtrl(0x8A);
	movlw	(08Ah)
	fcall	_instCtrl
	line	180
	
l2312:	
;LE7-3.c: 179: char val[10];
;LE7-3.c: 180: sprintf(val, "%d", RH);
	movlw	((STR_1)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispRH+0)+0
	movf	(??_dispRH+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_RH+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_RH)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(dispRH@val)&0ffh
	fcall	_sprintf
	line	183
	
l2314:	
;LE7-3.c: 183: for(int i = 0; val[i] != '\0'; i++) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(dispRH@i)^080h
	clrf	(dispRH@i+1)^080h
	goto	l2320
	
l94:	
	line	184
	
l2316:	
;LE7-3.c: 184: dataCtrl(val[i]);
	movf	(dispRH@i)^080h,w
	addlw	dispRH@val&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_dataCtrl
	line	183
	
l2318:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(dispRH@i)^080h,f
	skipnc
	incf	(dispRH@i+1)^080h,f
	movlw	high(01h)
	addwf	(dispRH@i+1)^080h,f
	goto	l2320
	
l93:	
	
l2320:	
	movf	(dispRH@i)^080h,w
	addlw	dispRH@val&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,f
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2316
u2690:
	goto	l2322
	
l95:	
	line	187
	
l2322:	
;LE7-3.c: 185: }
;LE7-3.c: 187: dataCtrl('%');
	movlw	(025h)
	fcall	_dataCtrl
	line	188
;LE7-3.c: 188: dataCtrl(' ');
	movlw	(020h)
	fcall	_dataCtrl
	line	189
;LE7-3.c: 189: dataCtrl(' ');
	movlw	(020h)
	fcall	_dataCtrl
	line	190
	
l96:	
	return
	opt stack 0
GLOBAL	__end_of_dispRH
	__end_of_dispRH:
	signat	_dispRH,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> dispT@val(10), dispRH@val(10), 
;;  f               1   59[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(3), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   72[BANK0 ] PTR unsigned char 
;;		 -> dispT@val(10), dispRH@val(10), 
;;  _val            4   68[BANK0 ] struct .
;;  c               1   73[BANK0 ] char 
;;  prec            1   67[BANK0 ] char 
;;  flag            1   66[BANK0 ] unsigned char 
;;  ap              1   65[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   59[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_dispRH
;;		_dispT
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext23
__ptext23:	;psect for function _sprintf
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 5
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	542
	
l2080:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l2132
	
l136:	
	line	547
	
l2082:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2411
	goto	u2410
u2411:
	goto	l2088
u2410:
	line	550
	
l2084:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2086:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
;doprnt.c: 551: continue;
	goto	l2132
	line	552
	
l137:	
	line	557
	
l2088:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l2092
	line	646
;doprnt.c: 646: case 0:
	
l139:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l2134
	line	706
;doprnt.c: 706: case 'd':
	
l141:	
	goto	l2094
	line	707
	
l142:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l2094
	line	811
;doprnt.c: 811: default:
	
l144:	
	line	822
;doprnt.c: 822: continue;
	goto	l2132
	line	831
	
l2090:	
;doprnt.c: 831: }
	goto	l2094
	line	644
	
l138:	
	
l2092:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2134
	xorlw	100^0	; case 100
	skipnz
	goto	l2094
	xorlw	105^100	; case 105
	skipnz
	goto	l2094
	goto	l2132
	opt asmopt_on

	line	831
	
l143:	
	line	1268
	
l2094:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l2096:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l2098:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u2421
	goto	u2420
u2421:
	goto	l2104
u2420:
	line	1271
	
l2100:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l2102:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l2104
	line	1273
	
l145:	
	line	1314
	
l2104:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l2108
u2430:
	goto	l2116
	
l2106:	
	goto	l2116
	line	1315
	
l146:	
	
l2108:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u2445
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u2445:
	skipnc
	goto	u2441
	goto	u2440
u2441:
	goto	l2112
u2440:
	goto	l2116
	line	1316
	
l2110:	
;doprnt.c: 1316: break;
	goto	l2116
	
l148:	
	line	1314
	
l2112:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2114:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l2108
u2450:
	goto	l2116
	
l147:	
	line	1447
	
l2116:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l2122
u2460:
	line	1448
	
l2118:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2120:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2122
	
l149:	
	line	1481
	
l2122:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l2130
	
l151:	
	line	1498
	
l2124:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@_val+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(sprintf@_val),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1533
	
l2126:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2128:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2130
	line	1534
	
l150:	
	line	1483
	
l2130:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l2124
u2470:
	goto	l2132
	
l152:	
	goto	l2132
	line	1542
	
l135:	
	line	545
	
l2132:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l2082
u2480:
	goto	l2134
	
l153:	
	goto	l2134
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l140:	
	line	1547
	
l2134:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l154
	line	1549
	
l2136:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l154:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext24
__ptext24:	;psect for function ___lwmod
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1952:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2261
	goto	u2260
u2261:
	goto	l1970
u2260:
	line	14
	
l1954:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1960
	
l579:	
	line	16
	
l1956:	
	movlw	01h
	
u2275:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2275
	line	17
	
l1958:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1960
	line	18
	
l578:	
	line	15
	
l1960:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l1956
u2280:
	goto	l1962
	
l580:	
	goto	l1962
	line	19
	
l581:	
	line	20
	
l1962:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2295
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2295:
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l1966
u2290:
	line	21
	
l1964:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1966
	
l582:	
	line	22
	
l1966:	
	movlw	01h
	
u2305:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2305
	line	23
	
l1968:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l1962
u2310:
	goto	l1970
	
l583:	
	goto	l1970
	line	24
	
l577:	
	line	25
	
l1970:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l584
	
l1972:	
	line	26
	
l584:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext25
__ptext25:	;psect for function ___lwdiv
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1926:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1928:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2191
	goto	u2190
u2191:
	goto	l1948
u2190:
	line	16
	
l1930:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1936
	
l569:	
	line	18
	
l1932:	
	movlw	01h
	
u2205:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2205
	line	19
	
l1934:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1936
	line	20
	
l568:	
	line	17
	
l1936:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l1932
u2210:
	goto	l1938
	
l570:	
	goto	l1938
	line	21
	
l571:	
	line	22
	
l1938:	
	movlw	01h
	
u2225:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2225
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2235
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2235:
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l1944
u2230:
	line	24
	
l1940:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1942:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1944
	line	26
	
l572:	
	line	27
	
l1944:	
	movlw	01h
	
u2245:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2245
	line	28
	
l1946:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l1938
u2250:
	goto	l1948
	
l573:	
	goto	l1948
	line	29
	
l567:	
	line	30
	
l1948:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l574
	
l1950:	
	line	31
	
l574:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 124 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    3[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_initLCD
;;		_dispRH
;;		_dispT
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	124
global __ptext26
__ptext26:	;psect for function _instCtrl
psect	text26
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	124
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	125
	
l2058:	
;LE7-3.c: 125: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	126
	
l2060:	
;LE7-3.c: 126: RD0 = 0;
	bcf	(64/8),(64)&7	;volatile
	line	127
	
l2062:	
;LE7-3.c: 127: RD1 = 1;
	bsf	(65/8),(65)&7	;volatile
	line	128
	
l2064:	
;LE7-3.c: 128: delay_ms(1);
	movlw	low(01h)
	movwf	(delay_ms@cnt)
	movlw	high(01h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	129
	
l2066:	
;LE7-3.c: 129: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7	;volatile
	line	130
	
l2068:	
;LE7-3.c: 130: delay_ms(1);
	movlw	low(01h)
	movwf	(delay_ms@cnt)
	movlw	high(01h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	131
	
l84:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 167 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    3[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_initLCD
;;		_dispRH
;;		_dispT
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	line	167
global __ptext27
__ptext27:	;psect for function _dataCtrl
psect	text27
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	167
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	168
	
l2070:	
;LE7-3.c: 168: PORTB = DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	169
	
l2072:	
;LE7-3.c: 169: RD0 = 1;
	bsf	(64/8),(64)&7	;volatile
	line	170
	
l2074:	
;LE7-3.c: 170: RD1 = 1;
	bsf	(65/8),(65)&7	;volatile
	line	171
	
l2076:	
;LE7-3.c: 171: delay_ms(1);
	movlw	low(01h)
	movwf	(delay_ms@cnt)
	movlw	high(01h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	172
	
l2078:	
;LE7-3.c: 172: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7	;volatile
	line	173
	
l90:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 115 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_instCtrl
;;		_initLCD
;;		_dataCtrl
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	line	115
global __ptext28
__ptext28:	;psect for function _delay_ms
psect	text28
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	115
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 5
; Regs used in _delay_ms: [wreg+btemp+1]
	line	116
	
l1860:	
;LE7-3.c: 116: while(cnt > 0) {
	goto	l1864
	
l79:	
	line	117
	
l1862:	
;LE7-3.c: 117: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_delay_ms+0)+0,f
u2757:
	nop
decfsz	(??_delay_ms+0)+0,f
	goto	u2757
	nop2	;nop
	nop
opt asmopt_on

	line	118
;LE7-3.c: 118: cnt--;
	movlw	low(-1)
	addwf	(delay_ms@cnt),f
	skipnc
	incf	(delay_ms@cnt+1),f
	movlw	high(-1)
	addwf	(delay_ms@cnt+1),f
	goto	l1864
	line	119
	
l78:	
	line	116
	
l1864:	
	movf	(delay_ms@cnt+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2095
	movlw	low(01h)
	subwf	(delay_ms@cnt),w
u2095:

	skipnc
	goto	u2091
	goto	u2090
u2091:
	goto	l1862
u2090:
	goto	l81
	
l80:	
	line	120
	
l81:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext29
__ptext29:	;psect for function ___lwtoft
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2338:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l589
	
l2340:	
	line	31
	
l589:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lltoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext30
__ptext30:	;psect for function ___ftpack
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1584:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1380
	goto	l1588
u1380:
	
l1586:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1391
	goto	u1390
u1391:
	goto	l1594
u1390:
	goto	l1588
	
l394:	
	line	65
	
l1588:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l395
	
l1590:	
	goto	l395
	
l392:	
	line	66
	goto	l1594
	
l397:	
	line	67
	
l1592:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1405:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1405

	goto	l1594
	line	69
	
l396:	
	line	66
	
l1594:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l1592
u1410:
	goto	l399
	
l398:	
	line	70
	goto	l399
	
l400:	
	line	71
	
l1596:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1598:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1600:	
	movlw	01h
u1425:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1425

	line	74
	
l399:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1431
	goto	u1430
u1431:
	goto	l1596
u1430:
	goto	l1604
	
l401:	
	line	75
	goto	l1604
	
l403:	
	line	76
	
l1602:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1445:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1445
	goto	l1604
	line	78
	
l402:	
	line	75
	
l1604:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1451
	goto	u1450
u1451:
	goto	l1602
u1450:
	
l404:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1461
	goto	u1460
u1461:
	goto	l405
u1460:
	line	80
	
l1606:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l405:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1608:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1475:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1470:
	addlw	-1
	skipz
	goto	u1475
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1610:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1480
	goto	l406
u1480:
	line	84
	
l1612:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l406:	
	line	85
	line	86
	
l395:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_I2C_Stop

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 236 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	236
global __ptext31
__ptext31:	;psect for function _I2C_Stop
psect	text31
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	236
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	238
	
l2306:	
;LE7-3.c: 238: I2C_Wait();
	fcall	_I2C_Wait
	line	240
	
l2308:	
;LE7-3.c: 240: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7	;volatile
	line	241
	
l117:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
	signat	_I2C_Stop,88
	global	_I2C_Start

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 229 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	line	229
global __ptext32
__ptext32:	;psect for function _I2C_Start
psect	text32
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	229
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Start: [wreg+status,2+status,0+pclath+cstack]
	line	231
	
l2280:	
;LE7-3.c: 231: I2C_Wait();
	fcall	_I2C_Wait
	line	233
	
l2282:	
;LE7-3.c: 233: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	234
	
l114:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
	signat	_I2C_Start,88
	global	_I2C_Send

;; *************** function _I2C_Send *****************
;; Defined at:
;;		line 250 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	line	250
global __ptext33
__ptext33:	;psect for function _I2C_Send
psect	text33
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	250
	global	__size_of_I2C_Send
	__size_of_I2C_Send	equ	__end_of_I2C_Send-_I2C_Send
	
_I2C_Send:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Send: [wreg+status,2+status,0+pclath+cstack]
;I2C_Send@data stored from wreg
	movwf	(I2C_Send@data)
	line	252
	
l2284:	
;LE7-3.c: 252: I2C_Wait();
	fcall	_I2C_Wait
	line	254
	
l2286:	
;LE7-3.c: 254: SSPBUF = data;
	movf	(I2C_Send@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	255
	
l123:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send
	__end_of_I2C_Send:
	signat	_I2C_Send,4216
	global	_I2C_RepeatedStart

;; *************** function _I2C_RepeatedStart *****************
;; Defined at:
;;		line 243 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	line	243
global __ptext34
__ptext34:	;psect for function _I2C_RepeatedStart
psect	text34
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	243
	global	__size_of_I2C_RepeatedStart
	__size_of_I2C_RepeatedStart	equ	__end_of_I2C_RepeatedStart-_I2C_RepeatedStart
	
_I2C_RepeatedStart:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_RepeatedStart: [wreg+status,2+status,0+pclath+cstack]
	line	245
	
l2288:	
;LE7-3.c: 245: I2C_Wait();
	fcall	_I2C_Wait
	line	247
	
l2290:	
;LE7-3.c: 247: RSEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7	;volatile
	line	248
	
l120:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_RepeatedStart
	__end_of_I2C_RepeatedStart:
	signat	_I2C_RepeatedStart,88
	global	_I2C_Receive

;; *************** function _I2C_Receive *****************
;; Defined at:
;;		line 257 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1    1[COMMON] unsigned char 
;;  temp            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	line	257
global __ptext35
__ptext35:	;psect for function _I2C_Receive
psect	text35
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	257
	global	__size_of_I2C_Receive
	__size_of_I2C_Receive	equ	__end_of_I2C_Receive-_I2C_Receive
	
_I2C_Receive:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Receive: [wreg+status,2+status,0+pclath+cstack]
;I2C_Receive@ack stored from wreg
	movwf	(I2C_Receive@ack)
	line	259
	
l2292:	
;LE7-3.c: 258: unsigned char temp;
;LE7-3.c: 259: I2C_Wait();
	fcall	_I2C_Wait
	line	260
	
l2294:	
;LE7-3.c: 260: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7	;volatile
	line	261
;LE7-3.c: 261: I2C_Wait();
	fcall	_I2C_Wait
	line	262
	
l2296:	
;LE7-3.c: 262: temp = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Receive+0)+0
	movf	(??_I2C_Receive+0)+0,w
	movwf	(I2C_Receive@temp)
	line	263
	
l2298:	
;LE7-3.c: 263: I2C_Wait();
	fcall	_I2C_Wait
	line	264
	
l2300:	
;LE7-3.c: 264: ACKDT = (ack)?0:1;
	movf	(I2C_Receive@ack)
	skipnz
	goto	u2671
	goto	u2670
	
u2671:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	goto	u2684
u2670:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7	;volatile
u2684:
	line	265
	
l2302:	
;LE7-3.c: 265: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	266
;LE7-3.c: 266: return temp;
	movf	(I2C_Receive@temp),w
	goto	l126
	
l2304:	
	line	267
	
l126:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Receive
	__end_of_I2C_Receive:
	signat	_I2C_Receive,4217
	global	_I2C_Wait

;; *************** function _I2C_Wait *****************
;; Defined at:
;;		line 223 in file "Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_RepeatedStart
;;		_I2C_Send
;;		_I2C_Receive
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	line	223
global __ptext36
__ptext36:	;psect for function _I2C_Wait
psect	text36
	file	"Z:\CPE3201_SANIEL\PracticalActivities\PA7\LE7-3.c"
	line	223
	global	__size_of_I2C_Wait
	__size_of_I2C_Wait	equ	__end_of_I2C_Wait-_I2C_Wait
	
_I2C_Wait:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Wait: [wreg+status,2]
	line	226
	
l2138:	
;LE7-3.c: 226: while((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
	goto	l2140
	
l109:	
	goto	l2140
	
l108:	
	
l2140:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(145)^080h,w	;volatile
	andlw	01Fh
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2140
u2490:
	
l2142:	
	btfsc	(148)^080h,(2)&7	;volatile
	goto	u2501
	goto	u2500
u2501:
	goto	l2140
u2500:
	goto	l111
	
l110:	
	line	227
	
l111:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Wait
	__end_of_I2C_Wait:
	signat	_I2C_Wait,88
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
