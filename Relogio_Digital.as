opt subtitle "Microchip Technology Omniscient Code Generator v1.44 (Free mode) build 201709140600"

opt pagewidth 120

	opt lm

	processor	16F877A
opt include "C:\Program Files (x86)\Microchip\xc8\v1.44\include\16f877a.cgen.inc"
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
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
INDF equ 00h ;# 
# 59 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 66 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PCL equ 02h ;# 
# 73 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
STATUS equ 03h ;# 
# 159 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
FSR equ 04h ;# 
# 166 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PORTA equ 05h ;# 
# 216 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PORTB equ 06h ;# 
# 278 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PORTC equ 07h ;# 
# 340 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PORTD equ 08h ;# 
# 402 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PORTE equ 09h ;# 
# 434 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 454 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 532 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 634 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 641 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 648 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 655 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
T1CON equ 010h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
T2CON equ 012h ;# 
# 808 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 815 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 885 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 892 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 899 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 906 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 964 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1059 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1066 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1073 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1080 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1087 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1094 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1152 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1159 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1255 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1325 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1375 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1437 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1499 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1561 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1618 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1680 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1720 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1754 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1816 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1830 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1999 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2080 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2087 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2157 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2222 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2229 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2288 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2295 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2302 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2309 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2316 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2361 "C:\Program Files (x86)\Microchip\xc8\v1.44\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_LCD_Clear
	FNCALL	_main,_LCD_Cursor
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_executaAcaoPrimeiroBotao
	FNCALL	_main,_executaAcaoSegundoBotao
	FNCALL	_main,_exibeTela
	FNCALL	_exibeTela,_LCD_Clear
	FNCALL	_exibeTela,_exibeHorarioNormalmente
	FNCALL	_exibeTela,_exibeHorarioPiscando
	FNCALL	_exibeTela,_exibeHorarioPiscandoAlarme
	FNCALL	_exibeTela,_mostraMenuOpcoes
	FNCALL	_exibeTela,_opcoesDeExibicaoHorario
	FNCALL	_opcoesDeExibicaoHorario,_LCD_Cursor
	FNCALL	_opcoesDeExibicaoHorario,_LCD_WriteString
	FNCALL	_mostraMenuOpcoes,_LCD_Cursor
	FNCALL	_mostraMenuOpcoes,_LCD_WriteString
	FNCALL	_exibeHorarioPiscandoAlarme,_LCD_Cursor
	FNCALL	_exibeHorarioPiscandoAlarme,_LCD_WriteString
	FNCALL	_exibeHorarioPiscandoAlarme,_deveExibirHoras
	FNCALL	_exibeHorarioPiscandoAlarme,_deveExibirMinutos
	FNCALL	_exibeHorarioPiscando,_LCD_Cursor
	FNCALL	_exibeHorarioPiscando,_LCD_WriteString
	FNCALL	_exibeHorarioPiscando,_deveExibirHoras
	FNCALL	_exibeHorarioPiscando,_deveExibirMinutos
	FNCALL	_exibeHorarioPiscando,_deveExibirSegundos
	FNCALL	_deveExibirSegundos,___awdiv
	FNCALL	_deveExibirSegundos,___awmod
	FNCALL	_deveExibirMinutos,___awdiv
	FNCALL	_deveExibirMinutos,___awmod
	FNCALL	_deveExibirHoras,___awdiv
	FNCALL	_deveExibirHoras,___awmod
	FNCALL	_exibeHorarioNormalmente,_LCD_Cursor
	FNCALL	_exibeHorarioNormalmente,_LCD_WriteString
	FNCALL	_exibeHorarioNormalmente,___awdiv
	FNCALL	_exibeHorarioNormalmente,___awmod
	FNCALL	_LCD_WriteString,_LCD_WriteData
	FNCALL	_LCD_Clear,_LCD_WriteCmd
	FNCALL	_executaAcaoSegundoBotao,_diminuirOpcaoMenu
	FNCALL	_executaAcaoSegundoBotao,_diminuirValorDoLadoEscolhido
	FNCALL	_executaAcaoSegundoBotao,_diminuirValorDoLadoEscolhidoAlarme
	FNCALL	_executaAcaoSegundoBotao,_trocaDeLadoEdicao
	FNCALL	_executaAcaoSegundoBotao,_trocaExibicaoHorario
	FNCALL	_executaAcaoSegundoBotao,_trocarSubMenuEscolhido
	FNCALL	_executaAcaoPrimeiroBotao,_aumentarOpcaoMenu
	FNCALL	_executaAcaoPrimeiroBotao,_aumentarValorDoLadoEscolhido
	FNCALL	_executaAcaoPrimeiroBotao,_aumentarValorDoLadoEscolhidoAlarme
	FNCALL	_executaAcaoPrimeiroBotao,_trocaDeLadoEdicao
	FNCALL	_executaAcaoPrimeiroBotao,_trocarSubMenuEscolhido
	FNCALL	_LCD_Init,_LCD_WriteCmd
	FNROOT	_main
	FNCALL	_ISR,_adicionaTempoSegurandoPrimeiroBotao
	FNCALL	_ISR,_adicionaTempoSegurandoSegundoBotao
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_escolhaMenu
	global	_limiteHorario
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	37

;initializer for _escolhaMenu
	retlw	02h
	retlw	0

	line	36

;initializer for _limiteHorario
	retlw	018h
	retlw	0

	global	_escolhaModo
	global	_flagEditandoUmLado
	global	_escolhaSubMenu
	global	_flagPm
	global	_flagLimparTela
	global	_flagEstadoPiscando
	global	_flagLadoParaEditar
	global	_flagB1
	global	_flagB0
	global	_tempoSegurandoSegundoBotaoMili
	global	_tempoSegurandoPrimeiroBotaoMili
	global	_horasAlarme
	global	_minutosAlarme
	global	_milissegundos
	global	_horas
	global	_minutos
	global	_segundos
	global	_textoNaTela
	global	_PORTE
_PORTE	set	0x9
	global	_PORTC
_PORTC	set	0x7
	global	_PORTB
_PORTB	set	0x6
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_TMR0
_TMR0	set	0x1
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_PORTEbits
_PORTEbits	set	0x9
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_TRISE
_TRISE	set	0x89
	global	_TRISD
_TRISD	set	0x88
	global	_TRISC
_TRISC	set	0x87
	global	_TRISB
_TRISB	set	0x86
	global	_ADCON1bits
_ADCON1bits	set	0x9F
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
	
STR_9:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	50	;'2'
	retlw	52	;'4'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	50	;'2'
	retlw	52	;'4'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	72	;'H'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	98	;'b'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	65	;'A'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_8:	
	retlw	72	;'H'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	32	;' '
	retlw	65	;'A'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	0
psect	strings
STR_10	equ	STR_8+0
STR_7	equ	STR_5+0
STR_11	equ	STR_5+0
; #config settings
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
	file	"Relogio_Digital.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_escolhaModo:
       ds      2

_flagEditandoUmLado:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_escolhaSubMenu:
       ds      2

_flagPm:
       ds      2

_flagLimparTela:
       ds      2

_flagEstadoPiscando:
       ds      2

_flagLadoParaEditar:
       ds      2

_flagB1:
       ds      2

_flagB0:
       ds      2

_tempoSegurandoSegundoBotaoMili:
       ds      2

_tempoSegurandoPrimeiroBotaoMili:
       ds      2

_horasAlarme:
       ds      2

_minutosAlarme:
       ds      2

_milissegundos:
       ds      2

_horas:
       ds      2

_minutos:
       ds      2

_segundos:
       ds      2

_textoNaTela:
       ds      9

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	37
_escolhaMenu:
       ds      2

psect	dataBANK0
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	36
_limiteHorario:
       ds      2

	file	"Relogio_Digital.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+027h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_LCD_WriteCmd:	; 1 bytes @ 0x0
?_LCD_WriteData:	; 1 bytes @ 0x0
?_LCD_Clear:	; 1 bytes @ 0x0
?_LCD_Init:	; 1 bytes @ 0x0
?_adicionaTempoSegurandoPrimeiroBotao:	; 1 bytes @ 0x0
??_adicionaTempoSegurandoPrimeiroBotao:	; 1 bytes @ 0x0
?_adicionaTempoSegurandoSegundoBotao:	; 1 bytes @ 0x0
??_adicionaTempoSegurandoSegundoBotao:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
??_ISR:	; 1 bytes @ 0x0
?_aumentarValorDoLadoEscolhido:	; 1 bytes @ 0x0
?_diminuirValorDoLadoEscolhido:	; 1 bytes @ 0x0
?_aumentarValorDoLadoEscolhidoAlarme:	; 1 bytes @ 0x0
?_diminuirValorDoLadoEscolhidoAlarme:	; 1 bytes @ 0x0
?_trocaDeLadoEdicao:	; 1 bytes @ 0x0
?_aumentarOpcaoMenu:	; 1 bytes @ 0x0
?_diminuirOpcaoMenu:	; 1 bytes @ 0x0
?_trocarSubMenuEscolhido:	; 1 bytes @ 0x0
?_trocaExibicaoHorario:	; 1 bytes @ 0x0
?_executaAcaoPrimeiroBotao:	; 1 bytes @ 0x0
?_executaAcaoSegundoBotao:	; 1 bytes @ 0x0
?_deveExibirHoras:	; 1 bytes @ 0x0
?_deveExibirMinutos:	; 1 bytes @ 0x0
?_deveExibirSegundos:	; 1 bytes @ 0x0
?_exibeHorarioPiscando:	; 1 bytes @ 0x0
?_exibeHorarioPiscandoAlarme:	; 1 bytes @ 0x0
?_opcoesDeExibicaoHorario:	; 1 bytes @ 0x0
?_mostraMenuOpcoes:	; 1 bytes @ 0x0
?_exibeHorarioNormalmente:	; 1 bytes @ 0x0
?_exibeTela:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	ds	5
??_LCD_WriteString:	; 1 bytes @ 0x5
??_diminuirValorDoLadoEscolhido:	; 1 bytes @ 0x5
??_diminuirValorDoLadoEscolhidoAlarme:	; 1 bytes @ 0x5
??_trocaDeLadoEdicao:	; 1 bytes @ 0x5
??_aumentarOpcaoMenu:	; 1 bytes @ 0x5
??_diminuirOpcaoMenu:	; 1 bytes @ 0x5
??_trocarSubMenuEscolhido:	; 1 bytes @ 0x5
??_trocaExibicaoHorario:	; 1 bytes @ 0x5
??_executaAcaoPrimeiroBotao:	; 1 bytes @ 0x5
??_executaAcaoSegundoBotao:	; 1 bytes @ 0x5
??_opcoesDeExibicaoHorario:	; 1 bytes @ 0x5
??_mostraMenuOpcoes:	; 1 bytes @ 0x5
??_exibeTela:	; 1 bytes @ 0x5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_LCD_Cursor:	; 1 bytes @ 0x0
??_LCD_WriteCmd:	; 1 bytes @ 0x0
??_LCD_WriteData:	; 1 bytes @ 0x0
??_aumentarValorDoLadoEscolhido:	; 1 bytes @ 0x0
??_aumentarValorDoLadoEscolhidoAlarme:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	LCD_Cursor@Col
LCD_Cursor@Col:	; 1 bytes @ 0x0
	global	executaAcaoSegundoBotao@tempoSegurando
executaAcaoSegundoBotao@tempoSegurando:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
??_LCD_Cursor:	; 1 bytes @ 0x1
	global	LCD_WriteCmd@Byte
LCD_WriteCmd@Byte:	; 1 bytes @ 0x1
	global	LCD_WriteData@Byte
LCD_WriteData@Byte:	; 1 bytes @ 0x1
	global	executaAcaoPrimeiroBotao@tempoSegurando
executaAcaoPrimeiroBotao@tempoSegurando:	; 2 bytes @ 0x1
	ds	1
?_LCD_WriteString:	; 1 bytes @ 0x2
??_LCD_Clear:	; 1 bytes @ 0x2
??_LCD_Init:	; 1 bytes @ 0x2
	global	LCD_Cursor@Row
LCD_Cursor@Row:	; 1 bytes @ 0x2
	global	LCD_WriteString@Str
LCD_WriteString@Str:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
??___awdiv:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
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
	ds	2
??_deveExibirHoras:	; 1 bytes @ 0x9
??_deveExibirMinutos:	; 1 bytes @ 0x9
??_deveExibirSegundos:	; 1 bytes @ 0x9
??_exibeHorarioNormalmente:	; 1 bytes @ 0x9
	ds	1
	global	deveExibirHoras@horasSendoExibidas
deveExibirHoras@horasSendoExibidas:	; 2 bytes @ 0xA
	global	deveExibirMinutos@minutosSendoExibidos
deveExibirMinutos@minutosSendoExibidos:	; 2 bytes @ 0xA
	ds	2
??_exibeHorarioPiscando:	; 1 bytes @ 0xC
??_exibeHorarioPiscandoAlarme:	; 1 bytes @ 0xC
	ds	1
??_main:	; 1 bytes @ 0xD
	ds	1
;!
;!Data Sizes:
;!    Strings     136
;!    Constant    0
;!    Data        4
;!    BSS         43
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5       9
;!    BANK0            80     14      57
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    LCD_WriteString@Str	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_11(CODE[17]), STR_10(CODE[17]), STR_9(CODE[17]), STR_8(CODE[17]), 
;!		 -> STR_7(CODE[17]), STR_6(CODE[17]), STR_5(CODE[17]), STR_4(CODE[17]), 
;!		 -> STR_3(CODE[17]), STR_2(CODE[17]), STR_1(CODE[17]), textoNaTela(BANK0[9]), 
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
;!    _exibeTela->_exibeHorarioPiscando
;!    _exibeTela->_exibeHorarioPiscandoAlarme
;!    _opcoesDeExibicaoHorario->_LCD_WriteString
;!    _mostraMenuOpcoes->_LCD_WriteString
;!    _exibeHorarioPiscandoAlarme->_deveExibirHoras
;!    _exibeHorarioPiscandoAlarme->_deveExibirMinutos
;!    _exibeHorarioPiscando->_deveExibirHoras
;!    _exibeHorarioPiscando->_deveExibirMinutos
;!    _deveExibirSegundos->___awdiv
;!    _deveExibirMinutos->___awdiv
;!    _deveExibirHoras->___awdiv
;!    _exibeHorarioNormalmente->___awdiv
;!    _LCD_WriteString->_LCD_WriteData
;!    _LCD_Clear->_LCD_WriteCmd
;!    _executaAcaoPrimeiroBotao->_aumentarValorDoLadoEscolhido
;!    _executaAcaoPrimeiroBotao->_aumentarValorDoLadoEscolhidoAlarme
;!    _LCD_Init->_LCD_WriteCmd
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
;! (0) _main                                                 1     1      0   26933
;!                                             13 BANK0      1     1      0
;!                          _LCD_Clear
;!                         _LCD_Cursor
;!                           _LCD_Init
;!           _executaAcaoPrimeiroBotao
;!            _executaAcaoSegundoBotao
;!                          _exibeTela
;! ---------------------------------------------------------------------------------
;! (1) _exibeTela                                            0     0      0   25301
;!                          _LCD_Clear
;!            _exibeHorarioNormalmente
;!               _exibeHorarioPiscando
;!         _exibeHorarioPiscandoAlarme
;!                   _mostraMenuOpcoes
;!            _opcoesDeExibicaoHorario
;! ---------------------------------------------------------------------------------
;! (2) _opcoesDeExibicaoHorario                              0     0      0    2074
;!                         _LCD_Cursor
;!                    _LCD_WriteString
;! ---------------------------------------------------------------------------------
;! (2) _mostraMenuOpcoes                                     0     0      0    2074
;!                         _LCD_Cursor
;!                    _LCD_WriteString
;! ---------------------------------------------------------------------------------
;! (2) _exibeHorarioPiscandoAlarme                           1     1      0    7086
;!                                             12 BANK0      1     1      0
;!                         _LCD_Cursor
;!                    _LCD_WriteString
;!                    _deveExibirHoras
;!                  _deveExibirMinutos
;! ---------------------------------------------------------------------------------
;! (2) _exibeHorarioPiscando                                 1     1      0    9524
;!                                             12 BANK0      1     1      0
;!                         _LCD_Cursor
;!                    _LCD_WriteString
;!                    _deveExibirHoras
;!                  _deveExibirMinutos
;!                 _deveExibirSegundos
;! ---------------------------------------------------------------------------------
;! (3) _deveExibirSegundos                                   1     1      0    2438
;!                                              9 BANK0      1     1      0
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) _deveExibirMinutos                                    3     3      0    2506
;!                                              9 BANK0      3     3      0
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) _deveExibirHoras                                      3     3      0    2506
;!                                              9 BANK0      3     3      0
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) _exibeHorarioNormalmente                              1     1      0    4512
;!                                              9 BANK0      1     1      0
;!                         _LCD_Cursor
;!                    _LCD_WriteString
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (4) ___awmod                                              7     3      4    1213
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (4) ___awdiv                                              9     5      4    1225
;!                                              0 BANK0      9     5      4
;! ---------------------------------------------------------------------------------
;! (3) _LCD_WriteString                                      2     0      2    1006
;!                                              2 BANK0      2     0      2
;!                      _LCD_WriteData
;! ---------------------------------------------------------------------------------
;! (4) _LCD_WriteData                                        2     2      0      31
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _LCD_Cursor                                           3     2      1    1068
;!                                              0 BANK0      3     2      1
;! ---------------------------------------------------------------------------------
;! (2) _LCD_Clear                                            2     2      0      31
;!                                              2 BANK0      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (1) _executaAcaoSegundoBotao                              2     2      0     282
;!                                              0 BANK0      2     2      0
;!                  _diminuirOpcaoMenu
;!       _diminuirValorDoLadoEscolhido
;! _diminuirValorDoLadoEscolhidoAlarme
;!                  _trocaDeLadoEdicao
;!               _trocaExibicaoHorario
;!             _trocarSubMenuEscolhido
;! ---------------------------------------------------------------------------------
;! (2) _trocaExibicaoHorario                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _diminuirValorDoLadoEscolhidoAlarme                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _diminuirValorDoLadoEscolhido                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _diminuirOpcaoMenu                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _executaAcaoPrimeiroBotao                             2     2      0     220
;!                                              1 BANK0      2     2      0
;!                  _aumentarOpcaoMenu
;!       _aumentarValorDoLadoEscolhido
;! _aumentarValorDoLadoEscolhidoAlarme
;!                  _trocaDeLadoEdicao
;!             _trocarSubMenuEscolhido
;! ---------------------------------------------------------------------------------
;! (2) _trocarSubMenuEscolhido                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _trocaDeLadoEdicao                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _aumentarValorDoLadoEscolhidoAlarme                   1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _aumentarValorDoLadoEscolhido                         1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _aumentarOpcaoMenu                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             2     2      0      31
;!                                              2 BANK0      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (3) _LCD_WriteCmd                                         2     2      0      31
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  5     5      0       0
;!                                              0 COMMON     5     5      0
;!_adicionaTempoSegurandoPrimeiroBotao
;! _adicionaTempoSegurandoSegundoBotao
;! ---------------------------------------------------------------------------------
;! (6) _adicionaTempoSegurandoSegundoBotao                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _adicionaTempoSegurandoPrimeiroBotao                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _LCD_Clear
;!     _LCD_WriteCmd
;!   _LCD_Cursor
;!   _LCD_Init
;!     _LCD_WriteCmd
;!   _executaAcaoPrimeiroBotao
;!     _aumentarOpcaoMenu
;!     _aumentarValorDoLadoEscolhido
;!     _aumentarValorDoLadoEscolhidoAlarme
;!     _trocaDeLadoEdicao
;!     _trocarSubMenuEscolhido
;!   _executaAcaoSegundoBotao
;!     _diminuirOpcaoMenu
;!     _diminuirValorDoLadoEscolhido
;!     _diminuirValorDoLadoEscolhidoAlarme
;!     _trocaDeLadoEdicao
;!     _trocaExibicaoHorario
;!     _trocarSubMenuEscolhido
;!   _exibeTela
;!     _LCD_Clear
;!       _LCD_WriteCmd
;!     _exibeHorarioNormalmente
;!       _LCD_Cursor
;!       _LCD_WriteString
;!         _LCD_WriteData
;!       ___awdiv
;!       ___awmod
;!     _exibeHorarioPiscando
;!       _LCD_Cursor
;!       _LCD_WriteString
;!         _LCD_WriteData
;!       _deveExibirHoras
;!         ___awdiv
;!         ___awmod
;!       _deveExibirMinutos
;!         ___awdiv
;!         ___awmod
;!       _deveExibirSegundos
;!         ___awdiv
;!         ___awmod
;!     _exibeHorarioPiscandoAlarme
;!       _LCD_Cursor
;!       _LCD_WriteString
;!         _LCD_WriteData
;!       _deveExibirHoras
;!         ___awdiv
;!         ___awmod
;!       _deveExibirMinutos
;!         ___awdiv
;!         ___awmod
;!     _mostraMenuOpcoes
;!       _LCD_Cursor
;!       _LCD_WriteString
;!         _LCD_WriteData
;!     _opcoesDeExibicaoHorario
;!       _LCD_Cursor
;!       _LCD_WriteString
;!         _LCD_WriteData
;!
;! _ISR (ROOT)
;!   _adicionaTempoSegurandoPrimeiroBotao
;!   _adicionaTempoSegurandoSegundoBotao
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
;!BANK0               50      E      39       5       71.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      5       9       1       64.3%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      42      12        0.0%
;!ABS                  0      0      42       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 642 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_Clear
;;		_LCD_Cursor
;;		_LCD_Init
;;		_executaAcaoPrimeiroBotao
;;		_executaAcaoSegundoBotao
;;		_exibeTela
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	642
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	642
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	644
	
l2958:	
;Relogio_digital_timer0.c: 644: TRISB = 0b00000011;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	645
	
l2960:	
;Relogio_digital_timer0.c: 645: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	646
	
l2962:	
;Relogio_digital_timer0.c: 646: TRISC = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	647
	
l2964:	
;Relogio_digital_timer0.c: 647: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	648
	
l2966:	
;Relogio_digital_timer0.c: 648: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	649
	
l2968:	
;Relogio_digital_timer0.c: 649: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	650
	
l2970:	
;Relogio_digital_timer0.c: 650: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	651
	
l2972:	
;Relogio_digital_timer0.c: 651: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	653
	
l2974:	
;Relogio_digital_timer0.c: 653: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	654
	
l2976:	
;Relogio_digital_timer0.c: 654: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	655
	
l2978:	
;Relogio_digital_timer0.c: 655: INTCONbits.TMR0IE = 1;
	bsf	(11),5	;volatile
	line	657
	
l2980:	
;Relogio_digital_timer0.c: 657: OPTION_REGbits.T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h,5	;volatile
	line	658
	
l2982:	
;Relogio_digital_timer0.c: 658: OPTION_REGbits.T0SE = 0;
	bcf	(129)^080h,4	;volatile
	line	659
	
l2984:	
;Relogio_digital_timer0.c: 659: OPTION_REGbits.PSA = 0;
	bcf	(129)^080h,3	;volatile
	line	660
	
l2986:	
;Relogio_digital_timer0.c: 660: OPTION_REGbits.PS2 = 1;
	bsf	(129)^080h,2	;volatile
	line	661
	
l2988:	
;Relogio_digital_timer0.c: 661: OPTION_REGbits.PS1 = 0;
	bcf	(129)^080h,1	;volatile
	line	662
	
l2990:	
;Relogio_digital_timer0.c: 662: OPTION_REGbits.PS0 = 0;
	bcf	(129)^080h,0	;volatile
	line	663
	
l2992:	
;Relogio_digital_timer0.c: 663: TMR0 = 112;
	movlw	low(070h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	665
;Relogio_digital_timer0.c: 665: segundos = 0;
	clrf	(_segundos)
	clrf	(_segundos+1)
	line	666
;Relogio_digital_timer0.c: 666: minutos = 0;
	clrf	(_minutos)
	clrf	(_minutos+1)
	line	667
;Relogio_digital_timer0.c: 667: horas = 0;
	clrf	(_horas)
	clrf	(_horas+1)
	line	668
	
l2994:	
;Relogio_digital_timer0.c: 668: textoNaTela[0] = '0';
	movlw	low(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_textoNaTela)
	line	669
	
l2996:	
;Relogio_digital_timer0.c: 669: textoNaTela[1] = '0';
	movlw	low(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_textoNaTela)+01h
	line	670
	
l2998:	
;Relogio_digital_timer0.c: 670: textoNaTela[2] = ':';
	movlw	low(03Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_textoNaTela)+02h
	line	671
	
l3000:	
;Relogio_digital_timer0.c: 671: textoNaTela[3] = '0';
	movlw	low(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_textoNaTela)+03h
	line	672
	
l3002:	
;Relogio_digital_timer0.c: 672: textoNaTela[4] = '0';
	movlw	low(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_textoNaTela)+04h
	line	673
	
l3004:	
;Relogio_digital_timer0.c: 673: textoNaTela[5] = ':';
	movlw	low(03Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_textoNaTela)+05h
	line	674
	
l3006:	
;Relogio_digital_timer0.c: 674: textoNaTela[6] = '0';
	movlw	low(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_textoNaTela)+06h
	line	675
	
l3008:	
;Relogio_digital_timer0.c: 675: textoNaTela[7] = '0';
	movlw	low(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_textoNaTela)+07h
	line	676
;Relogio_digital_timer0.c: 676: textoNaTela[8] = '\0';
	clrf	0+(_textoNaTela)+08h
	line	679
	
l3010:	
;Relogio_digital_timer0.c: 679: LCD_Init();
	fcall	_LCD_Init
	line	680
	
l3012:	
;Relogio_digital_timer0.c: 680: LCD_Clear();
	fcall	_LCD_Clear
	line	681
	
l3014:	
;Relogio_digital_timer0.c: 681: LCD_Cursor(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_Cursor@Col)
	movlw	low(0)
	fcall	_LCD_Cursor
	goto	l3016
	line	683
;Relogio_digital_timer0.c: 683: while(1) {
	
l249:	
	line	684
	
l3016:	
;Relogio_digital_timer0.c: 684: if (milissegundos >= 500) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_milissegundos+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(01h)^80h
	subwf	btemp+1,w
	skipz
	goto	u3575
	movlw	0F4h
	subwf	(_milissegundos),w
u3575:

	skipc
	goto	u3571
	goto	u3570
u3571:
	goto	l3020
u3570:
	line	685
	
l3018:	
;Relogio_digital_timer0.c: 685: flagEstadoPiscando = 1;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_flagEstadoPiscando)
	movlw	0
	movwf	((_flagEstadoPiscando))+1
	line	686
;Relogio_digital_timer0.c: 686: } else {
	goto	l3022
	
l250:	
	line	687
	
l3020:	
;Relogio_digital_timer0.c: 687: flagEstadoPiscando = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagEstadoPiscando)
	clrf	(_flagEstadoPiscando+1)
	goto	l3022
	line	688
	
l251:	
	line	690
	
l3022:	
;Relogio_digital_timer0.c: 688: }
;Relogio_digital_timer0.c: 690: exibeTela();
	fcall	_exibeTela
	line	692
	
l3024:	
;Relogio_digital_timer0.c: 692: if(PORTBbits.RB0) flagB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),0	;volatile
	goto	u3581
	goto	u3580
u3581:
	goto	l3028
u3580:
	
l3026:	
	movlw	01h
	movwf	(_flagB0)
	movlw	0
	movwf	((_flagB0))+1
	goto	l3028
	
l252:	
	line	693
	
l3028:	
;Relogio_digital_timer0.c: 693: if(PORTBbits.RB1) flagB1 = 1;
	btfss	(6),1	;volatile
	goto	u3591
	goto	u3590
u3591:
	goto	l253
u3590:
	
l3030:	
	movlw	01h
	movwf	(_flagB1)
	movlw	0
	movwf	((_flagB1))+1
	
l253:	
	line	695
;Relogio_digital_timer0.c: 695: if (horas == horasAlarme && minutos == minutosAlarme) {
	movf	(_horasAlarme+1),w
	xorwf	(_horas+1),w
	skipz
	goto	u3605
	movf	(_horasAlarme),w
	xorwf	(_horas),w
u3605:

	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l254
u3600:
	
l3032:	
	movf	(_minutosAlarme+1),w
	xorwf	(_minutos+1),w
	skipz
	goto	u3615
	movf	(_minutosAlarme),w
	xorwf	(_minutos),w
u3615:

	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l254
u3610:
	line	696
	
l3034:	
;Relogio_digital_timer0.c: 696: PORTBbits.RB4 = 1;
	bsf	(6),4	;volatile
	line	697
;Relogio_digital_timer0.c: 697: } else {
	goto	l255
	
l254:	
	line	698
;Relogio_digital_timer0.c: 698: PORTBbits.RB4 = 0;
	bcf	(6),4	;volatile
	line	699
	
l255:	
	line	701
;Relogio_digital_timer0.c: 699: }
;Relogio_digital_timer0.c: 701: if (PORTBbits.RB0 == 0 && flagB0) {
	btfsc	(6),0	;volatile
	goto	u3621
	goto	u3620
u3621:
	goto	l3042
u3620:
	
l3036:	
	movf	((_flagB0)),w
iorwf	((_flagB0+1)),w
	btfsc	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l3042
u3630:
	line	702
	
l3038:	
;Relogio_digital_timer0.c: 702: executaAcaoPrimeiroBotao();
	fcall	_executaAcaoPrimeiroBotao
	line	704
	
l3040:	
;Relogio_digital_timer0.c: 704: flagB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagB0)
	clrf	(_flagB0+1)
	goto	l3042
	line	705
	
l256:	
	line	707
	
l3042:	
;Relogio_digital_timer0.c: 705: }
;Relogio_digital_timer0.c: 707: if (PORTBbits.RB1 == 0 && flagB1) {
	btfsc	(6),1	;volatile
	goto	u3641
	goto	u3640
u3641:
	goto	l3016
u3640:
	
l3044:	
	movf	((_flagB1)),w
iorwf	((_flagB1+1)),w
	btfsc	status,2
	goto	u3651
	goto	u3650
u3651:
	goto	l3016
u3650:
	line	708
	
l3046:	
;Relogio_digital_timer0.c: 708: executaAcaoSegundoBotao();
	fcall	_executaAcaoSegundoBotao
	line	710
	
l3048:	
;Relogio_digital_timer0.c: 710: flagB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagB1)
	clrf	(_flagB1+1)
	goto	l3016
	line	711
	
l257:	
	goto	l3016
	line	712
	
l258:	
	line	683
	goto	l3016
	
l259:	
	line	713
	
l260:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_exibeTela

;; *************** function _exibeTela *****************
;; Defined at:
;;		line 616 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_Clear
;;		_exibeHorarioNormalmente
;;		_exibeHorarioPiscando
;;		_exibeHorarioPiscandoAlarme
;;		_mostraMenuOpcoes
;;		_opcoesDeExibicaoHorario
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	616
global __ptext1
__ptext1:	;psect for function _exibeTela
psect	text1
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	616
	global	__size_of_exibeTela
	__size_of_exibeTela	equ	__end_of_exibeTela-_exibeTela
	
_exibeTela:	
;incstack = 0
	opt	stack 2
; Regs used in _exibeTela: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	618
	
l2934:	
;Relogio_digital_timer0.c: 618: if (flagLimparTela == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((_flagLimparTela)),w
iorwf	((_flagLimparTela+1)),w
	btfss	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l2952
u3560:
	line	619
	
l2936:	
;Relogio_digital_timer0.c: 619: LCD_Clear();
	fcall	_LCD_Clear
	line	620
	
l2938:	
;Relogio_digital_timer0.c: 620: flagLimparTela = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagLimparTela)
	clrf	(_flagLimparTela+1)
	goto	l2952
	line	621
	
l236:	
	line	623
;Relogio_digital_timer0.c: 621: }
;Relogio_digital_timer0.c: 623: switch(escolhaModo) {
	goto	l2952
	line	624
;Relogio_digital_timer0.c: 624: case relogio:
	
l238:	
	line	625
	
l2940:	
;Relogio_digital_timer0.c: 625: exibeHorarioNormalmente();
	fcall	_exibeHorarioNormalmente
	line	626
;Relogio_digital_timer0.c: 626: break;
	goto	l244
	line	627
;Relogio_digital_timer0.c: 627: case menu:
	
l240:	
	line	628
	
l2942:	
;Relogio_digital_timer0.c: 628: mostraMenuOpcoes();
	fcall	_mostraMenuOpcoes
	line	629
;Relogio_digital_timer0.c: 629: break;
	goto	l244
	line	630
;Relogio_digital_timer0.c: 630: case edicaoHorario:
	
l241:	
	line	631
	
l2944:	
;Relogio_digital_timer0.c: 631: exibeHorarioPiscando();
	fcall	_exibeHorarioPiscando
	line	632
;Relogio_digital_timer0.c: 632: break;
	goto	l244
	line	633
;Relogio_digital_timer0.c: 633: case alarme:
	
l242:	
	line	634
	
l2946:	
;Relogio_digital_timer0.c: 634: exibeHorarioPiscandoAlarme();
	fcall	_exibeHorarioPiscandoAlarme
	line	635
;Relogio_digital_timer0.c: 635: break;
	goto	l244
	line	636
;Relogio_digital_timer0.c: 636: case exibicaoHorario:
	
l243:	
	line	637
	
l2948:	
;Relogio_digital_timer0.c: 637: opcoesDeExibicaoHorario();
	fcall	_opcoesDeExibicaoHorario
	line	638
;Relogio_digital_timer0.c: 638: break;
	goto	l244
	line	639
	
l2950:	
;Relogio_digital_timer0.c: 639: }
	goto	l244
	line	623
	
l237:	
	
l2952:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_escolhaModo+1),w
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3070
	goto	l244
	opt asmopt_pop
	
l3070:	
; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_escolhaModo),w
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2940
	xorlw	1^0	; case 1
	skipnz
	goto	l2942
	xorlw	2^1	; case 2
	skipnz
	goto	l2944
	xorlw	3^2	; case 3
	skipnz
	goto	l2946
	xorlw	4^3	; case 4
	skipnz
	goto	l2948
	goto	l244
	opt asmopt_pop

	line	639
	
l239:	
	line	640
	
l244:	
	return
	opt stack 0
GLOBAL	__end_of_exibeTela
	__end_of_exibeTela:
	signat	_exibeTela,89
	global	_opcoesDeExibicaoHorario

;; *************** function _opcoesDeExibicaoHorario *****************
;; Defined at:
;;		line 546 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_Cursor
;;		_LCD_WriteString
;; This function is called by:
;;		_exibeTela
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	546
global __ptext2
__ptext2:	;psect for function _opcoesDeExibicaoHorario
psect	text2
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	546
	global	__size_of_opcoesDeExibicaoHorario
	__size_of_opcoesDeExibicaoHorario	equ	__end_of_opcoesDeExibicaoHorario-_opcoesDeExibicaoHorario
	
_opcoesDeExibicaoHorario:	
;incstack = 0
	opt	stack 2
; Regs used in _opcoesDeExibicaoHorario: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	548
	
l2650:	
;Relogio_digital_timer0.c: 548: if (escolhaSubMenu == 0 && flagEstadoPiscando == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_escolhaSubMenu)),w
iorwf	((_escolhaSubMenu+1)),w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l2660
u3020:
	
l2652:	
		decf	((_flagEstadoPiscando)),w
iorwf	((_flagEstadoPiscando+1)),w
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l2660
u3030:
	line	549
	
l2654:	
;Relogio_digital_timer0.c: 549: LCD_Cursor(0,0);
	clrf	(LCD_Cursor@Col)
	movlw	low(0)
	fcall	_LCD_Cursor
	line	550
	
l2656:	
;Relogio_digital_timer0.c: 550: LCD_WriteString("     12         ");
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	goto	l223
	line	551
	
l2658:	
;Relogio_digital_timer0.c: 551: return;
	goto	l223
	line	552
	
l222:	
	line	554
	
l2660:	
;Relogio_digital_timer0.c: 552: }
;Relogio_digital_timer0.c: 554: if (escolhaSubMenu == 1 && flagEstadoPiscando == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((_escolhaSubMenu)),w
iorwf	((_escolhaSubMenu+1)),w
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l2670
u3040:
	
l2662:	
		decf	((_flagEstadoPiscando)),w
iorwf	((_flagEstadoPiscando+1)),w
	btfss	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l2670
u3050:
	line	555
	
l2664:	
;Relogio_digital_timer0.c: 555: LCD_Cursor(0,0);
	clrf	(LCD_Cursor@Col)
	movlw	low(0)
	fcall	_LCD_Cursor
	line	556
	
l2666:	
;Relogio_digital_timer0.c: 556: LCD_WriteString("24              ");
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	goto	l223
	line	557
	
l2668:	
;Relogio_digital_timer0.c: 557: return;
	goto	l223
	line	558
	
l224:	
	line	560
	
l2670:	
;Relogio_digital_timer0.c: 558: }
;Relogio_digital_timer0.c: 560: LCD_Cursor(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_Cursor@Col)
	movlw	low(0)
	fcall	_LCD_Cursor
	line	561
	
l2672:	
;Relogio_digital_timer0.c: 561: LCD_WriteString("24   12         ");
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	goto	l223
	line	563
	
l2674:	
	line	564
;Relogio_digital_timer0.c: 563: return;
	
l223:	
	return
	opt stack 0
GLOBAL	__end_of_opcoesDeExibicaoHorario
	__end_of_opcoesDeExibicaoHorario:
	signat	_opcoesDeExibicaoHorario,89
	global	_mostraMenuOpcoes

;; *************** function _mostraMenuOpcoes *****************
;; Defined at:
;;		line 566 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_Cursor
;;		_LCD_WriteString
;; This function is called by:
;;		_exibeTela
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	566
global __ptext3
__ptext3:	;psect for function _mostraMenuOpcoes
psect	text3
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	566
	global	__size_of_mostraMenuOpcoes
	__size_of_mostraMenuOpcoes	equ	__end_of_mostraMenuOpcoes-_mostraMenuOpcoes
	
_mostraMenuOpcoes:	
;incstack = 0
	opt	stack 2
; Regs used in _mostraMenuOpcoes: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	568
	
l2676:	
;Relogio_digital_timer0.c: 568: if (escolhaMenu == edicaoHorario && flagEstadoPiscando == 1) {
		movlw	2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_escolhaMenu)),w
iorwf	((_escolhaMenu+1)),w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l2688
u3060:
	
l2678:	
		decf	((_flagEstadoPiscando)),w
iorwf	((_flagEstadoPiscando+1)),w
	btfss	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l2688
u3070:
	line	569
	
l2680:	
;Relogio_digital_timer0.c: 569: LCD_Cursor(0,0);
	clrf	(LCD_Cursor@Col)
	movlw	low(0)
	fcall	_LCD_Cursor
	line	570
	
l2682:	
;Relogio_digital_timer0.c: 570: LCD_WriteString("         Alarme ");
	movlw	(low((((STR_4)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	line	571
	
l2684:	
;Relogio_digital_timer0.c: 571: LCD_Cursor(1,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_Cursor@Col)
	movlw	low(01h)
	fcall	_LCD_Cursor
	line	572
;Relogio_digital_timer0.c: 572: LCD_WriteString("Modo Exibicao   ");
	movlw	(low((((STR_5)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	goto	l228
	line	573
	
l2686:	
;Relogio_digital_timer0.c: 573: return;
	goto	l228
	line	574
	
l227:	
	line	576
	
l2688:	
;Relogio_digital_timer0.c: 574: }
;Relogio_digital_timer0.c: 576: if (escolhaMenu == alarme && flagEstadoPiscando == 1) {
		movlw	3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_escolhaMenu)),w
iorwf	((_escolhaMenu+1)),w
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l2700
u3080:
	
l2690:	
		decf	((_flagEstadoPiscando)),w
iorwf	((_flagEstadoPiscando+1)),w
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l2700
u3090:
	line	577
	
l2692:	
;Relogio_digital_timer0.c: 577: LCD_Cursor(0,0);
	clrf	(LCD_Cursor@Col)
	movlw	low(0)
	fcall	_LCD_Cursor
	line	578
	
l2694:	
;Relogio_digital_timer0.c: 578: LCD_WriteString("Horario         ");
	movlw	(low((((STR_6)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	line	579
	
l2696:	
;Relogio_digital_timer0.c: 579: LCD_Cursor(1,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_Cursor@Col)
	movlw	low(01h)
	fcall	_LCD_Cursor
	line	580
;Relogio_digital_timer0.c: 580: LCD_WriteString("Modo Exibicao   ");
	movlw	(low((((STR_7)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	goto	l228
	line	581
	
l2698:	
;Relogio_digital_timer0.c: 581: return;
	goto	l228
	line	582
	
l229:	
	line	584
	
l2700:	
;Relogio_digital_timer0.c: 582: }
;Relogio_digital_timer0.c: 584: if (escolhaMenu == exibicaoHorario && flagEstadoPiscando == 1) {
		movlw	4
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_escolhaMenu)),w
iorwf	((_escolhaMenu+1)),w
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l2712
u3100:
	
l2702:	
		decf	((_flagEstadoPiscando)),w
iorwf	((_flagEstadoPiscando+1)),w
	btfss	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l2712
u3110:
	line	585
	
l2704:	
;Relogio_digital_timer0.c: 585: LCD_Cursor(0,0);
	clrf	(LCD_Cursor@Col)
	movlw	low(0)
	fcall	_LCD_Cursor
	line	586
	
l2706:	
;Relogio_digital_timer0.c: 586: LCD_WriteString("Horario  Alarme ");
	movlw	(low((((STR_8)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	line	587
	
l2708:	
;Relogio_digital_timer0.c: 587: LCD_Cursor(1,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_Cursor@Col)
	movlw	low(01h)
	fcall	_LCD_Cursor
	line	588
;Relogio_digital_timer0.c: 588: LCD_WriteString("                ");
	movlw	(low((((STR_9)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	goto	l228
	line	589
	
l2710:	
;Relogio_digital_timer0.c: 589: return;
	goto	l228
	line	590
	
l230:	
	line	592
	
l2712:	
;Relogio_digital_timer0.c: 590: }
;Relogio_digital_timer0.c: 592: LCD_Cursor(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_Cursor@Col)
	movlw	low(0)
	fcall	_LCD_Cursor
	line	593
	
l2714:	
;Relogio_digital_timer0.c: 593: LCD_WriteString("Horario  Alarme ");
	movlw	(low((((STR_10)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	line	594
	
l2716:	
;Relogio_digital_timer0.c: 594: LCD_Cursor(1,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_Cursor@Col)
	movlw	low(01h)
	fcall	_LCD_Cursor
	line	595
;Relogio_digital_timer0.c: 595: LCD_WriteString("Modo Exibicao   ");
	movlw	(low((((STR_11)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	goto	l228
	line	597
	
l2718:	
	line	598
;Relogio_digital_timer0.c: 597: return;
	
l228:	
	return
	opt stack 0
GLOBAL	__end_of_mostraMenuOpcoes
	__end_of_mostraMenuOpcoes:
	signat	_mostraMenuOpcoes,89
	global	_exibeHorarioPiscandoAlarme

;; *************** function _exibeHorarioPiscandoAlarme *****************
;; Defined at:
;;		line 535 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_Cursor
;;		_LCD_WriteString
;;		_deveExibirHoras
;;		_deveExibirMinutos
;; This function is called by:
;;		_exibeTela
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	535
global __ptext4
__ptext4:	;psect for function _exibeHorarioPiscandoAlarme
psect	text4
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	535
	global	__size_of_exibeHorarioPiscandoAlarme
	__size_of_exibeHorarioPiscandoAlarme	equ	__end_of_exibeHorarioPiscandoAlarme-_exibeHorarioPiscandoAlarme
	
_exibeHorarioPiscandoAlarme:	
;incstack = 0
	opt	stack 2
; Regs used in _exibeHorarioPiscandoAlarme: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	537
	
l2640:	
;Relogio_digital_timer0.c: 537: deveExibirHoras();
	fcall	_deveExibirHoras
	line	538
;Relogio_digital_timer0.c: 538: deveExibirMinutos();
	fcall	_deveExibirMinutos
	line	539
	
l2642:	
;Relogio_digital_timer0.c: 539: textoNaTela[2] = ':';
	movlw	low(03Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_exibeHorarioPiscandoAlarme+0)+0
	movf	(??_exibeHorarioPiscandoAlarme+0)+0,w
	movwf	0+(_textoNaTela)+02h
	line	540
	
l2644:	
;Relogio_digital_timer0.c: 540: textoNaTela[5] = '\0';
	clrf	0+(_textoNaTela)+05h
	line	542
	
l2646:	
;Relogio_digital_timer0.c: 542: LCD_Cursor(0,0);
	clrf	(LCD_Cursor@Col)
	movlw	low(0)
	fcall	_LCD_Cursor
	line	543
	
l2648:	
;Relogio_digital_timer0.c: 543: LCD_WriteString(textoNaTela);
	movlw	(low(_textoNaTela|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	(0x0)
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	line	544
	
l219:	
	return
	opt stack 0
GLOBAL	__end_of_exibeHorarioPiscandoAlarme
	__end_of_exibeHorarioPiscandoAlarme:
	signat	_exibeHorarioPiscandoAlarme,89
	global	_exibeHorarioPiscando

;; *************** function _exibeHorarioPiscando *****************
;; Defined at:
;;		line 522 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_Cursor
;;		_LCD_WriteString
;;		_deveExibirHoras
;;		_deveExibirMinutos
;;		_deveExibirSegundos
;; This function is called by:
;;		_exibeTela
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	522
global __ptext5
__ptext5:	;psect for function _exibeHorarioPiscando
psect	text5
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	522
	global	__size_of_exibeHorarioPiscando
	__size_of_exibeHorarioPiscando	equ	__end_of_exibeHorarioPiscando-_exibeHorarioPiscando
	
_exibeHorarioPiscando:	
;incstack = 0
	opt	stack 2
; Regs used in _exibeHorarioPiscando: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	524
	
l2628:	
;Relogio_digital_timer0.c: 524: deveExibirHoras();
	fcall	_deveExibirHoras
	line	525
;Relogio_digital_timer0.c: 525: deveExibirMinutos();
	fcall	_deveExibirMinutos
	line	526
;Relogio_digital_timer0.c: 526: deveExibirSegundos();
	fcall	_deveExibirSegundos
	line	527
	
l2630:	
;Relogio_digital_timer0.c: 527: textoNaTela[2] = ':';
	movlw	low(03Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_exibeHorarioPiscando+0)+0
	movf	(??_exibeHorarioPiscando+0)+0,w
	movwf	0+(_textoNaTela)+02h
	line	528
	
l2632:	
;Relogio_digital_timer0.c: 528: textoNaTela[5] = ':';
	movlw	low(03Ah)
	movwf	(??_exibeHorarioPiscando+0)+0
	movf	(??_exibeHorarioPiscando+0)+0,w
	movwf	0+(_textoNaTela)+05h
	line	529
	
l2634:	
;Relogio_digital_timer0.c: 529: textoNaTela[8] = '\0';
	clrf	0+(_textoNaTela)+08h
	line	531
	
l2636:	
;Relogio_digital_timer0.c: 531: LCD_Cursor(0,0);
	clrf	(LCD_Cursor@Col)
	movlw	low(0)
	fcall	_LCD_Cursor
	line	532
	
l2638:	
;Relogio_digital_timer0.c: 532: LCD_WriteString(textoNaTela);
	movlw	(low(_textoNaTela|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	(0x0)
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	line	533
	
l216:	
	return
	opt stack 0
GLOBAL	__end_of_exibeHorarioPiscando
	__end_of_exibeHorarioPiscando:
	signat	_exibeHorarioPiscando,89
	global	_deveExibirSegundos

;; *************** function _deveExibirSegundos *****************
;; Defined at:
;;		line 516 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_exibeHorarioPiscando
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	516
global __ptext6
__ptext6:	;psect for function _deveExibirSegundos
psect	text6
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	516
	global	__size_of_deveExibirSegundos
	__size_of_deveExibirSegundos	equ	__end_of_deveExibirSegundos-_deveExibirSegundos
	
_deveExibirSegundos:	
;incstack = 0
	opt	stack 2
; Regs used in _deveExibirSegundos: [wreg+status,2+status,0+pclath+cstack]
	line	518
	
l2476:	
;Relogio_digital_timer0.c: 518: textoNaTela[6] = segundos/10 + '0';
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_segundos+1),w
	movwf	(___awdiv@dividend+1)
	movf	(_segundos),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(??_deveExibirSegundos+0)+0
	movf	(??_deveExibirSegundos+0)+0,w
	movwf	0+(_textoNaTela)+06h
	line	519
;Relogio_digital_timer0.c: 519: textoNaTela[7] = segundos%10 + '0';
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_segundos+1),w
	movwf	(___awmod@dividend+1)
	movf	(_segundos),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	movwf	(??_deveExibirSegundos+0)+0
	movf	(??_deveExibirSegundos+0)+0,w
	movwf	0+(_textoNaTela)+07h
	line	520
	
l213:	
	return
	opt stack 0
GLOBAL	__end_of_deveExibirSegundos
	__end_of_deveExibirSegundos:
	signat	_deveExibirSegundos,89
	global	_deveExibirMinutos

;; *************** function _deveExibirMinutos *****************
;; Defined at:
;;		line 495 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  minutosSendo    2   10[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_exibeHorarioPiscando
;;		_exibeHorarioPiscandoAlarme
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	495
global __ptext7
__ptext7:	;psect for function _deveExibirMinutos
psect	text7
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	495
	global	__size_of_deveExibirMinutos
	__size_of_deveExibirMinutos	equ	__end_of_deveExibirMinutos-_deveExibirMinutos
	
_deveExibirMinutos:	
;incstack = 0
	opt	stack 2
; Regs used in _deveExibirMinutos: [wreg+status,2+status,0+pclath+cstack]
	line	499
	
l2458:	
;Relogio_digital_timer0.c: 497: int minutosSendoExibidos;
;Relogio_digital_timer0.c: 499: if (flagLadoParaEditar == 0 && flagEstadoPiscando == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_flagLadoParaEditar)),w
iorwf	((_flagLadoParaEditar+1)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l2466
u2730:
	
l2460:	
		decf	((_flagEstadoPiscando)),w
iorwf	((_flagEstadoPiscando+1)),w
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l2466
u2740:
	line	500
	
l2462:	
;Relogio_digital_timer0.c: 500: textoNaTela[3] = ' ';
	movlw	low(020h)
	movwf	(??_deveExibirMinutos+0)+0
	movf	(??_deveExibirMinutos+0)+0,w
	movwf	0+(_textoNaTela)+03h
	line	501
;Relogio_digital_timer0.c: 501: textoNaTela[4] = ' ';
	movlw	low(020h)
	movwf	(??_deveExibirMinutos+0)+0
	movf	(??_deveExibirMinutos+0)+0,w
	movwf	0+(_textoNaTela)+04h
	goto	l208
	line	503
	
l2464:	
;Relogio_digital_timer0.c: 503: return;
	goto	l208
	line	504
	
l207:	
	line	506
	
l2466:	
;Relogio_digital_timer0.c: 504: }
;Relogio_digital_timer0.c: 506: if (escolhaModo == alarme) {
		movlw	3
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l2470
u2750:
	line	507
	
l2468:	
;Relogio_digital_timer0.c: 507: minutosSendoExibidos = minutosAlarme;
	movf	(_minutosAlarme+1),w
	movwf	(deveExibirMinutos@minutosSendoExibidos+1)
	movf	(_minutosAlarme),w
	movwf	(deveExibirMinutos@minutosSendoExibidos)
	line	508
;Relogio_digital_timer0.c: 508: } else {
	goto	l2472
	
l209:	
	line	509
	
l2470:	
;Relogio_digital_timer0.c: 509: minutosSendoExibidos = minutos;
	movf	(_minutos+1),w
	movwf	(deveExibirMinutos@minutosSendoExibidos+1)
	movf	(_minutos),w
	movwf	(deveExibirMinutos@minutosSendoExibidos)
	goto	l2472
	line	510
	
l210:	
	line	512
	
l2472:	
;Relogio_digital_timer0.c: 510: }
;Relogio_digital_timer0.c: 512: textoNaTela[3] = minutosSendoExibidos/10 + '0';
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(deveExibirMinutos@minutosSendoExibidos+1),w
	movwf	(___awdiv@dividend+1)
	movf	(deveExibirMinutos@minutosSendoExibidos),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(??_deveExibirMinutos+0)+0
	movf	(??_deveExibirMinutos+0)+0,w
	movwf	0+(_textoNaTela)+03h
	line	513
	
l2474:	
;Relogio_digital_timer0.c: 513: textoNaTela[4] = minutosSendoExibidos%10 + '0';
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(deveExibirMinutos@minutosSendoExibidos+1),w
	movwf	(___awmod@dividend+1)
	movf	(deveExibirMinutos@minutosSendoExibidos),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	movwf	(??_deveExibirMinutos+0)+0
	movf	(??_deveExibirMinutos+0)+0,w
	movwf	0+(_textoNaTela)+04h
	line	514
	
l208:	
	return
	opt stack 0
GLOBAL	__end_of_deveExibirMinutos
	__end_of_deveExibirMinutos:
	signat	_deveExibirMinutos,89
	global	_deveExibirHoras

;; *************** function _deveExibirHoras *****************
;; Defined at:
;;		line 474 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  horasSendoEx    2   10[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_exibeHorarioPiscando
;;		_exibeHorarioPiscandoAlarme
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	474
global __ptext8
__ptext8:	;psect for function _deveExibirHoras
psect	text8
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	474
	global	__size_of_deveExibirHoras
	__size_of_deveExibirHoras	equ	__end_of_deveExibirHoras-_deveExibirHoras
	
_deveExibirHoras:	
;incstack = 0
	opt	stack 2
; Regs used in _deveExibirHoras: [wreg+status,2+status,0+pclath+cstack]
	line	478
	
l2440:	
;Relogio_digital_timer0.c: 476: int horasSendoExibidas;
;Relogio_digital_timer0.c: 478: if (flagLadoParaEditar == 1 && flagEstadoPiscando == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((_flagLadoParaEditar)),w
iorwf	((_flagLadoParaEditar+1)),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2448
u2700:
	
l2442:	
		decf	((_flagEstadoPiscando)),w
iorwf	((_flagEstadoPiscando+1)),w
	btfss	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l2448
u2710:
	line	479
	
l2444:	
;Relogio_digital_timer0.c: 479: textoNaTela[0] = ' ';
	movlw	low(020h)
	movwf	(??_deveExibirHoras+0)+0
	movf	(??_deveExibirHoras+0)+0,w
	movwf	(_textoNaTela)
	line	480
;Relogio_digital_timer0.c: 480: textoNaTela[1] = ' ';
	movlw	low(020h)
	movwf	(??_deveExibirHoras+0)+0
	movf	(??_deveExibirHoras+0)+0,w
	movwf	0+(_textoNaTela)+01h
	goto	l202
	line	482
	
l2446:	
;Relogio_digital_timer0.c: 482: return;
	goto	l202
	line	483
	
l201:	
	line	485
	
l2448:	
;Relogio_digital_timer0.c: 483: }
;Relogio_digital_timer0.c: 485: if (escolhaModo == alarme) {
		movlw	3
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l2452
u2720:
	line	486
	
l2450:	
;Relogio_digital_timer0.c: 486: horasSendoExibidas = horasAlarme;
	movf	(_horasAlarme+1),w
	movwf	(deveExibirHoras@horasSendoExibidas+1)
	movf	(_horasAlarme),w
	movwf	(deveExibirHoras@horasSendoExibidas)
	line	487
;Relogio_digital_timer0.c: 487: } else {
	goto	l2454
	
l203:	
	line	488
	
l2452:	
;Relogio_digital_timer0.c: 488: horasSendoExibidas = horas;
	movf	(_horas+1),w
	movwf	(deveExibirHoras@horasSendoExibidas+1)
	movf	(_horas),w
	movwf	(deveExibirHoras@horasSendoExibidas)
	goto	l2454
	line	489
	
l204:	
	line	491
	
l2454:	
;Relogio_digital_timer0.c: 489: }
;Relogio_digital_timer0.c: 491: textoNaTela[0] = horasSendoExibidas/10 + '0';
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(deveExibirHoras@horasSendoExibidas+1),w
	movwf	(___awdiv@dividend+1)
	movf	(deveExibirHoras@horasSendoExibidas),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(??_deveExibirHoras+0)+0
	movf	(??_deveExibirHoras+0)+0,w
	movwf	(_textoNaTela)
	line	492
	
l2456:	
;Relogio_digital_timer0.c: 492: textoNaTela[1] = horasSendoExibidas%10 + '0';
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(deveExibirHoras@horasSendoExibidas+1),w
	movwf	(___awmod@dividend+1)
	movf	(deveExibirHoras@horasSendoExibidas),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	movwf	(??_deveExibirHoras+0)+0
	movf	(??_deveExibirHoras+0)+0,w
	movwf	0+(_textoNaTela)+01h
	line	493
	
l202:	
	return
	opt stack 0
GLOBAL	__end_of_deveExibirHoras
	__end_of_deveExibirHoras:
	signat	_deveExibirHoras,89
	global	_exibeHorarioNormalmente

;; *************** function _exibeHorarioNormalmente *****************
;; Defined at:
;;		line 600 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_Cursor
;;		_LCD_WriteString
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_exibeTela
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	600
global __ptext9
__ptext9:	;psect for function _exibeHorarioNormalmente
psect	text9
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	600
	global	__size_of_exibeHorarioNormalmente
	__size_of_exibeHorarioNormalmente	equ	__end_of_exibeHorarioNormalmente-_exibeHorarioNormalmente
	
_exibeHorarioNormalmente:	
;incstack = 0
	opt	stack 2
; Regs used in _exibeHorarioNormalmente: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	602
	
l2720:	
;Relogio_digital_timer0.c: 602: textoNaTela[0] = horas/10 + '0';
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_horas+1),w
	movwf	(___awdiv@dividend+1)
	movf	(_horas),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(??_exibeHorarioNormalmente+0)+0
	movf	(??_exibeHorarioNormalmente+0)+0,w
	movwf	(_textoNaTela)
	line	603
;Relogio_digital_timer0.c: 603: textoNaTela[1] = horas%10 + '0';
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_horas+1),w
	movwf	(___awmod@dividend+1)
	movf	(_horas),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	movwf	(??_exibeHorarioNormalmente+0)+0
	movf	(??_exibeHorarioNormalmente+0)+0,w
	movwf	0+(_textoNaTela)+01h
	line	604
	
l2722:	
;Relogio_digital_timer0.c: 604: textoNaTela[2] = ':';
	movlw	low(03Ah)
	movwf	(??_exibeHorarioNormalmente+0)+0
	movf	(??_exibeHorarioNormalmente+0)+0,w
	movwf	0+(_textoNaTela)+02h
	line	605
	
l2724:	
;Relogio_digital_timer0.c: 605: textoNaTela[3] = minutos/10 + '0';
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_minutos+1),w
	movwf	(___awdiv@dividend+1)
	movf	(_minutos),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(??_exibeHorarioNormalmente+0)+0
	movf	(??_exibeHorarioNormalmente+0)+0,w
	movwf	0+(_textoNaTela)+03h
	line	606
	
l2726:	
;Relogio_digital_timer0.c: 606: textoNaTela[4] = minutos%10 + '0';
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_minutos+1),w
	movwf	(___awmod@dividend+1)
	movf	(_minutos),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	movwf	(??_exibeHorarioNormalmente+0)+0
	movf	(??_exibeHorarioNormalmente+0)+0,w
	movwf	0+(_textoNaTela)+04h
	line	607
	
l2728:	
;Relogio_digital_timer0.c: 607: textoNaTela[5] = ':';
	movlw	low(03Ah)
	movwf	(??_exibeHorarioNormalmente+0)+0
	movf	(??_exibeHorarioNormalmente+0)+0,w
	movwf	0+(_textoNaTela)+05h
	line	608
;Relogio_digital_timer0.c: 608: textoNaTela[6] = segundos/10 + '0';
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(_segundos+1),w
	movwf	(___awdiv@dividend+1)
	movf	(_segundos),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(??_exibeHorarioNormalmente+0)+0
	movf	(??_exibeHorarioNormalmente+0)+0,w
	movwf	0+(_textoNaTela)+06h
	line	609
;Relogio_digital_timer0.c: 609: textoNaTela[7] = segundos%10 + '0';
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(_segundos+1),w
	movwf	(___awmod@dividend+1)
	movf	(_segundos),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	movwf	(??_exibeHorarioNormalmente+0)+0
	movf	(??_exibeHorarioNormalmente+0)+0,w
	movwf	0+(_textoNaTela)+07h
	line	610
	
l2730:	
;Relogio_digital_timer0.c: 610: textoNaTela[8] = '\0';
	clrf	0+(_textoNaTela)+08h
	line	612
	
l2732:	
;Relogio_digital_timer0.c: 612: LCD_Cursor(0,0);
	clrf	(LCD_Cursor@Col)
	movlw	low(0)
	fcall	_LCD_Cursor
	line	613
	
l2734:	
;Relogio_digital_timer0.c: 613: LCD_WriteString(textoNaTela);
	movlw	(low(_textoNaTela|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	(0x0)
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	line	614
	
l233:	
	return
	opt stack 0
GLOBAL	__end_of_exibeHorarioNormalmente
	__end_of_exibeHorarioNormalmente:
	signat	_exibeHorarioNormalmente,89
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.44\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_deveExibirHoras
;;		_deveExibirMinutos
;;		_deveExibirSegundos
;;		_exibeHorarioNormalmente
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.44\sources\common\awmod.c"
	line	6
global __ptext10
__ptext10:	;psect for function ___awmod
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.44\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 2
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l2372:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l2374:	
	btfss	(___awmod@dividend+1),7
	goto	u2591
	goto	u2590
u2591:
	goto	l2380
u2590:
	line	15
	
l2376:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l2378:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l2380
	line	17
	
l479:	
	line	18
	
l2380:	
	btfss	(___awmod@divisor+1),7
	goto	u2601
	goto	u2600
u2601:
	goto	l2384
u2600:
	line	19
	
l2382:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2384
	
l480:	
	line	20
	
l2384:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l2402
u2610:
	line	21
	
l2386:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l2392
	
l483:	
	line	23
	
l2388:	
	movlw	01h
	
u2625:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2625
	line	24
	
l2390:	
	movlw	low(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2392
	line	25
	
l482:	
	line	22
	
l2392:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l2388
u2630:
	goto	l2394
	
l484:	
	goto	l2394
	line	26
	
l485:	
	line	27
	
l2394:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2645
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2645:
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l2398
u2640:
	line	28
	
l2396:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2398
	
l486:	
	line	29
	
l2398:	
	movlw	01h
	
u2655:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2655
	line	30
	
l2400:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l2394
u2660:
	goto	l2402
	
l487:	
	goto	l2402
	line	31
	
l481:	
	line	32
	
l2402:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l2406
u2670:
	line	33
	
l2404:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2406
	
l488:	
	line	34
	
l2406:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	goto	l489
	
l2408:	
	line	35
	
l489:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.44\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] int 
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_deveExibirHoras
;;		_deveExibirMinutos
;;		_deveExibirSegundos
;;		_exibeHorarioNormalmente
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.44\sources\common\awdiv.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___awdiv
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.44\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l2328:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l2330:	
	btfss	(___awdiv@divisor+1),7
	goto	u2491
	goto	u2490
u2491:
	goto	l2336
u2490:
	line	16
	
l2332:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l2334:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l2336
	line	18
	
l466:	
	line	19
	
l2336:	
	btfss	(___awdiv@dividend+1),7
	goto	u2501
	goto	u2500
u2501:
	goto	l2342
u2500:
	line	20
	
l2338:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l2340:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2342
	line	22
	
l467:	
	line	23
	
l2342:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l2344:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l2364
u2510:
	line	25
	
l2346:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l2352
	
l470:	
	line	27
	
l2348:	
	movlw	01h
	
u2525:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2525
	line	28
	
l2350:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2352
	line	29
	
l469:	
	line	26
	
l2352:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l2348
u2530:
	goto	l2354
	
l471:	
	goto	l2354
	line	30
	
l472:	
	line	31
	
l2354:	
	movlw	01h
	
u2545:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2545
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2555
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2555:
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l2360
u2550:
	line	33
	
l2356:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l2358:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2360
	line	35
	
l473:	
	line	36
	
l2360:	
	movlw	01h
	
u2565:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2565
	line	37
	
l2362:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l2354
u2570:
	goto	l2364
	
l474:	
	goto	l2364
	line	38
	
l468:	
	line	39
	
l2364:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l2368
u2580:
	line	40
	
l2366:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2368
	
l475:	
	line	41
	
l2368:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	goto	l476
	
l2370:	
	line	42
	
l476:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_LCD_WriteString

;; *************** function _LCD_WriteString *****************
;; Defined at:
;;		line 93 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;  Str             2    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_11(17), STR_10(17), STR_9(17), STR_8(17), 
;;		 -> STR_7(17), STR_6(17), STR_5(17), STR_4(17), 
;;		 -> STR_3(17), STR_2(17), STR_1(17), textoNaTela(9), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_WriteData
;; This function is called by:
;;		_exibeHorarioPiscando
;;		_exibeHorarioPiscandoAlarme
;;		_opcoesDeExibicaoHorario
;;		_mostraMenuOpcoes
;;		_exibeHorarioNormalmente
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	93
global __ptext12
__ptext12:	;psect for function _LCD_WriteString
psect	text12
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	93
	global	__size_of_LCD_WriteString
	__size_of_LCD_WriteString	equ	__end_of_LCD_WriteString-_LCD_WriteString
	
_LCD_WriteString:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_WriteString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	95
	
l2432:	
;Relogio_digital_timer0.c: 95: while(*Str != '\0')
	goto	l2438
	
l85:	
	line	97
	
l2434:	
;Relogio_digital_timer0.c: 96: {
;Relogio_digital_timer0.c: 97: LCD_WriteData(*Str);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_WriteString@Str+1),w
	movwf	btemp+1
	movf	(LCD_WriteString@Str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_LCD_WriteData
	line	98
	
l2436:	
;Relogio_digital_timer0.c: 98: Str++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCD_WriteString@Str),f
	skipnc
	incf	(LCD_WriteString@Str+1),f
	goto	l2438
	line	99
	
l84:	
	line	95
	
l2438:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_WriteString@Str+1),w
	movwf	btemp+1
	movf	(LCD_WriteString@Str),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2434
u2690:
	goto	l87
	
l86:	
	line	100
	
l87:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteString
	__end_of_LCD_WriteString:
	signat	_LCD_WriteString,4217
	global	_LCD_WriteData

;; *************** function _LCD_WriteData *****************
;; Defined at:
;;		line 79 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_WriteString
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	79
global __ptext13
__ptext13:	;psect for function _LCD_WriteData
psect	text13
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	79
	global	__size_of_LCD_WriteData
	__size_of_LCD_WriteData	equ	__end_of_LCD_WriteData-_LCD_WriteData
	
_LCD_WriteData:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_WriteData: [wreg]
;LCD_WriteData@Byte stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteData@Byte)
	line	81
	
l2320:	
;Relogio_digital_timer0.c: 81: PORTEbits.RE0 = 1;
	bsf	(9),0	;volatile
	line	83
	
l2322:	
;Relogio_digital_timer0.c: 83: PORTD = Byte;
	movf	(LCD_WriteData@Byte),w
	movwf	(8)	;volatile
	line	85
	
l2324:	
;Relogio_digital_timer0.c: 85: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	87
;Relogio_digital_timer0.c: 87: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	60
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_WriteData+0)+0),f
	u3667:
decfsz	(??_LCD_WriteData+0)+0,f
	goto	u3667
	nop
opt asmopt_pop

	line	89
	
l2326:	
;Relogio_digital_timer0.c: 89: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	90
	
l81:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteData
	__end_of_LCD_WriteData:
	signat	_LCD_WriteData,4217
	global	_LCD_Cursor

;; *************** function _LCD_Cursor *****************
;; Defined at:
;;		line 42 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;  Row             1    wreg     unsigned char 
;;  Col             1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Row             1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_exibeHorarioPiscando
;;		_exibeHorarioPiscandoAlarme
;;		_opcoesDeExibicaoHorario
;;		_mostraMenuOpcoes
;;		_exibeHorarioNormalmente
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	42
global __ptext14
__ptext14:	;psect for function _LCD_Cursor
psect	text14
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	42
	global	__size_of_LCD_Cursor
	__size_of_LCD_Cursor	equ	__end_of_LCD_Cursor-_LCD_Cursor
	
_LCD_Cursor:	
;incstack = 0
	opt	stack 3
; Regs used in _LCD_Cursor: [wreg+status,2+status,0]
;LCD_Cursor@Row stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_Cursor@Row)
	line	44
	
l2410:	
;Relogio_digital_timer0.c: 44: PORTEbits.RE0 = 0;
	bcf	(9),0	;volatile
	line	46
	
l2412:	
;Relogio_digital_timer0.c: 46: if (Row == 0)
	movf	((LCD_Cursor@Row)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2416
u2680:
	line	48
	
l2414:	
;Relogio_digital_timer0.c: 47: {
;Relogio_digital_timer0.c: 48: PORTD = 0x80 + Col;
	movf	(LCD_Cursor@Col),w
	addlw	080h
	movwf	(8)	;volatile
	line	49
;Relogio_digital_timer0.c: 49: }
	goto	l2418
	line	50
	
l73:	
	line	52
	
l2416:	
;Relogio_digital_timer0.c: 50: else
;Relogio_digital_timer0.c: 51: {
;Relogio_digital_timer0.c: 52: PORTD = 0xC0 + Col;
	movf	(LCD_Cursor@Col),w
	addlw	0C0h
	movwf	(8)	;volatile
	goto	l2418
	line	53
	
l74:	
	line	56
	
l2418:	
;Relogio_digital_timer0.c: 53: }
;Relogio_digital_timer0.c: 56: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	58
	
l2420:	
;Relogio_digital_timer0.c: 58: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	60
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Cursor+0)+0),f
	u3677:
decfsz	(??_LCD_Cursor+0)+0,f
	goto	u3677
	nop
opt asmopt_pop

	line	60
	
l2422:	
;Relogio_digital_timer0.c: 60: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	61
	
l75:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Cursor
	__end_of_LCD_Cursor:
	signat	_LCD_Cursor,8313
	global	_LCD_Clear

;; *************** function _LCD_Clear *****************
;; Defined at:
;;		line 103 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_exibeTela
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	103
global __ptext15
__ptext15:	;psect for function _LCD_Clear
psect	text15
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	103
	global	__size_of_LCD_Clear
	__size_of_LCD_Clear	equ	__end_of_LCD_Clear-_LCD_Clear
	
_LCD_Clear:	
;incstack = 0
	opt	stack 3
; Regs used in _LCD_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	105
	
l2478:	
;Relogio_digital_timer0.c: 105: LCD_WriteCmd(0x01);
	movlw	low(01h)
	fcall	_LCD_WriteCmd
	line	107
	
l2480:	
;Relogio_digital_timer0.c: 107: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	12
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Clear+0)+0+1),f
	movlw	246
movwf	((??_LCD_Clear+0)+0),f
	u3687:
decfsz	((??_LCD_Clear+0)+0),f
	goto	u3687
	decfsz	((??_LCD_Clear+0)+0+1),f
	goto	u3687
	nop
opt asmopt_pop

	line	109
	
l2482:	
;Relogio_digital_timer0.c: 109: LCD_WriteCmd(0x0C);
	movlw	low(0Ch)
	fcall	_LCD_WriteCmd
	line	111
;Relogio_digital_timer0.c: 111: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	60
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Clear+0)+0),f
	u3697:
decfsz	(??_LCD_Clear+0)+0,f
	goto	u3697
	nop
opt asmopt_pop

	line	113
	
l2484:	
;Relogio_digital_timer0.c: 113: LCD_WriteCmd(0x06);
	movlw	low(06h)
	fcall	_LCD_WriteCmd
	line	115
	
l2486:	
;Relogio_digital_timer0.c: 115: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	60
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Clear+0)+0),f
	u3707:
decfsz	(??_LCD_Clear+0)+0,f
	goto	u3707
	nop
opt asmopt_pop

	line	116
	
l90:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Clear
	__end_of_LCD_Clear:
	signat	_LCD_Clear,89
	global	_executaAcaoSegundoBotao

;; *************** function _executaAcaoSegundoBotao *****************
;; Defined at:
;;		line 418 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempoSeguran    2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_diminuirOpcaoMenu
;;		_diminuirValorDoLadoEscolhido
;;		_diminuirValorDoLadoEscolhidoAlarme
;;		_trocaDeLadoEdicao
;;		_trocaExibicaoHorario
;;		_trocarSubMenuEscolhido
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	418
global __ptext16
__ptext16:	;psect for function _executaAcaoSegundoBotao
psect	text16
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	418
	global	__size_of_executaAcaoSegundoBotao
	__size_of_executaAcaoSegundoBotao	equ	__end_of_executaAcaoSegundoBotao-_executaAcaoSegundoBotao
	
_executaAcaoSegundoBotao:	
;incstack = 0
	opt	stack 4
; Regs used in _executaAcaoSegundoBotao: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	420
	
l2834:	
;Relogio_digital_timer0.c: 420: int tempoSegurando = tempoSegurandoSegundoBotaoMili;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tempoSegurandoSegundoBotaoMili+1),w
	movwf	(executaAcaoSegundoBotao@tempoSegurando+1)
	movf	(_tempoSegurandoSegundoBotaoMili),w
	movwf	(executaAcaoSegundoBotao@tempoSegurando)
	line	421
	
l2836:	
;Relogio_digital_timer0.c: 421: tempoSegurandoSegundoBotaoMili = 0;
	clrf	(_tempoSegurandoSegundoBotaoMili)
	clrf	(_tempoSegurandoSegundoBotaoMili+1)
	line	423
	
l2838:	
;Relogio_digital_timer0.c: 423: if (escolhaModo == menu && tempoSegurando < 3000) {
		decf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l2846
u3300:
	
l2840:	
	movf	(executaAcaoSegundoBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3315
	movlw	0B8h
	subwf	(executaAcaoSegundoBotao@tempoSegurando),w
u3315:

	skipnc
	goto	u3311
	goto	u3310
u3311:
	goto	l2846
u3310:
	line	424
	
l2842:	
;Relogio_digital_timer0.c: 424: diminuirOpcaoMenu();
	fcall	_diminuirOpcaoMenu
	goto	l184
	line	425
	
l2844:	
;Relogio_digital_timer0.c: 425: return;
	goto	l184
	line	426
	
l183:	
	line	428
	
l2846:	
;Relogio_digital_timer0.c: 426: }
;Relogio_digital_timer0.c: 428: if (escolhaModo == menu && tempoSegurando >= 3000) {
		decf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l2858
u3320:
	
l2848:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoSegundoBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3335
	movlw	0B8h
	subwf	(executaAcaoSegundoBotao@tempoSegurando),w
u3335:

	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l2858
u3330:
	line	429
	
l2850:	
;Relogio_digital_timer0.c: 429: escolhaModo = escolhaMenu;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_escolhaMenu+1),w
	movwf	(_escolhaModo+1)
	movf	(_escolhaMenu),w
	movwf	(_escolhaModo)
	line	430
	
l2852:	
;Relogio_digital_timer0.c: 430: flagEditandoUmLado = 0;
	clrf	(_flagEditandoUmLado)
	clrf	(_flagEditandoUmLado+1)
	line	431
	
l2854:	
;Relogio_digital_timer0.c: 431: flagLadoParaEditar = 0;
	clrf	(_flagLadoParaEditar)
	clrf	(_flagLadoParaEditar+1)
	line	432
;Relogio_digital_timer0.c: 432: flagLimparTela = 1;
	movlw	01h
	movwf	(_flagLimparTela)
	movlw	0
	movwf	((_flagLimparTela))+1
	goto	l184
	line	433
	
l2856:	
;Relogio_digital_timer0.c: 433: return;
	goto	l184
	line	434
	
l185:	
	line	436
	
l2858:	
;Relogio_digital_timer0.c: 434: }
;Relogio_digital_timer0.c: 436: if ((escolhaModo == edicaoHorario || escolhaModo == alarme) && flagEditandoUmLado == 0 && tempoSegurando < 3000) {
		movlw	2
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfsc	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l2862
u3340:
	
l2860:	
		movlw	3
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l2870
u3350:
	goto	l2862
	
l188:	
	
l2862:	
	movf	((_flagEditandoUmLado)),w
iorwf	((_flagEditandoUmLado+1)),w
	btfss	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l2870
u3360:
	
l2864:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoSegundoBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3375
	movlw	0B8h
	subwf	(executaAcaoSegundoBotao@tempoSegurando),w
u3375:

	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l2870
u3370:
	line	437
	
l2866:	
;Relogio_digital_timer0.c: 437: trocaDeLadoEdicao();
	fcall	_trocaDeLadoEdicao
	goto	l184
	line	438
	
l2868:	
;Relogio_digital_timer0.c: 438: return;
	goto	l184
	line	439
	
l186:	
	line	441
	
l2870:	
;Relogio_digital_timer0.c: 439: }
;Relogio_digital_timer0.c: 441: if ((escolhaModo == edicaoHorario || escolhaModo == alarme) && flagEditandoUmLado == 0 && tempoSegurando >= 3000) {
		movlw	2
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfsc	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l2874
u3380:
	
l2872:	
		movlw	3
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l2882
u3390:
	goto	l2874
	
l191:	
	
l2874:	
	movf	((_flagEditandoUmLado)),w
iorwf	((_flagEditandoUmLado+1)),w
	btfss	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l2882
u3400:
	
l2876:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoSegundoBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3415
	movlw	0B8h
	subwf	(executaAcaoSegundoBotao@tempoSegurando),w
u3415:

	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l2882
u3410:
	line	442
	
l2878:	
;Relogio_digital_timer0.c: 442: flagEditandoUmLado = 1;
	movlw	01h
	movwf	(_flagEditandoUmLado)
	movlw	0
	movwf	((_flagEditandoUmLado))+1
	goto	l184
	line	443
	
l2880:	
;Relogio_digital_timer0.c: 443: return;
	goto	l184
	line	444
	
l189:	
	line	446
	
l2882:	
;Relogio_digital_timer0.c: 444: }
;Relogio_digital_timer0.c: 446: if (escolhaModo == edicaoHorario && flagEditandoUmLado == 1 && tempoSegurando < 3000) {
		movlw	2
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l2892
u3420:
	
l2884:	
		decf	((_flagEditandoUmLado)),w
iorwf	((_flagEditandoUmLado+1)),w
	btfss	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l2892
u3430:
	
l2886:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoSegundoBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3445
	movlw	0B8h
	subwf	(executaAcaoSegundoBotao@tempoSegurando),w
u3445:

	skipnc
	goto	u3441
	goto	u3440
u3441:
	goto	l2892
u3440:
	line	447
	
l2888:	
;Relogio_digital_timer0.c: 447: diminuirValorDoLadoEscolhido();
	fcall	_diminuirValorDoLadoEscolhido
	goto	l184
	line	448
	
l2890:	
;Relogio_digital_timer0.c: 448: return;
	goto	l184
	line	449
	
l192:	
	line	451
	
l2892:	
;Relogio_digital_timer0.c: 449: }
;Relogio_digital_timer0.c: 451: if (escolhaModo == alarme && flagEditandoUmLado == 1 && tempoSegurando < 3000) {
		movlw	3
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l2902
u3450:
	
l2894:	
		decf	((_flagEditandoUmLado)),w
iorwf	((_flagEditandoUmLado+1)),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l2902
u3460:
	
l2896:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoSegundoBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3475
	movlw	0B8h
	subwf	(executaAcaoSegundoBotao@tempoSegurando),w
u3475:

	skipnc
	goto	u3471
	goto	u3470
u3471:
	goto	l2902
u3470:
	line	452
	
l2898:	
;Relogio_digital_timer0.c: 452: diminuirValorDoLadoEscolhidoAlarme();
	fcall	_diminuirValorDoLadoEscolhidoAlarme
	goto	l184
	line	453
	
l2900:	
;Relogio_digital_timer0.c: 453: return;
	goto	l184
	line	454
	
l193:	
	line	456
	
l2902:	
;Relogio_digital_timer0.c: 454: }
;Relogio_digital_timer0.c: 456: if ((escolhaModo == edicaoHorario || escolhaModo == alarme) && flagEditandoUmLado == 1 && tempoSegurando >= 3000) {
		movlw	2
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfsc	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l2906
u3480:
	
l2904:	
		movlw	3
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l2914
u3490:
	goto	l2906
	
l196:	
	
l2906:	
		decf	((_flagEditandoUmLado)),w
iorwf	((_flagEditandoUmLado+1)),w
	btfss	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l2914
u3500:
	
l2908:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoSegundoBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3515
	movlw	0B8h
	subwf	(executaAcaoSegundoBotao@tempoSegurando),w
u3515:

	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l2914
u3510:
	line	457
	
l2910:	
;Relogio_digital_timer0.c: 457: flagEditandoUmLado = 0;
	clrf	(_flagEditandoUmLado)
	clrf	(_flagEditandoUmLado+1)
	goto	l184
	line	458
	
l2912:	
;Relogio_digital_timer0.c: 458: return;
	goto	l184
	line	459
	
l194:	
	line	461
	
l2914:	
;Relogio_digital_timer0.c: 459: }
;Relogio_digital_timer0.c: 461: if (escolhaModo == exibicaoHorario && tempoSegurando < 3000) {
		movlw	4
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l2922
u3520:
	
l2916:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoSegundoBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3535
	movlw	0B8h
	subwf	(executaAcaoSegundoBotao@tempoSegurando),w
u3535:

	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l2922
u3530:
	line	462
	
l2918:	
;Relogio_digital_timer0.c: 462: trocarSubMenuEscolhido();
	fcall	_trocarSubMenuEscolhido
	goto	l184
	line	463
	
l2920:	
;Relogio_digital_timer0.c: 463: return;
	goto	l184
	line	464
	
l197:	
	line	466
	
l2922:	
;Relogio_digital_timer0.c: 464: }
;Relogio_digital_timer0.c: 466: if (escolhaModo == exibicaoHorario && tempoSegurando >= 3000) {
		movlw	4
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l184
u3540:
	
l2924:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoSegundoBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3555
	movlw	0B8h
	subwf	(executaAcaoSegundoBotao@tempoSegurando),w
u3555:

	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l184
u3550:
	line	467
	
l2926:	
;Relogio_digital_timer0.c: 467: trocaExibicaoHorario();
	fcall	_trocaExibicaoHorario
	line	468
	
l2928:	
;Relogio_digital_timer0.c: 468: escolhaModo = relogio;
	clrf	(_escolhaModo)
	clrf	(_escolhaModo+1)
	line	469
	
l2930:	
;Relogio_digital_timer0.c: 469: flagLimparTela = 1;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_flagLimparTela)
	movlw	0
	movwf	((_flagLimparTela))+1
	goto	l184
	line	470
	
l2932:	
;Relogio_digital_timer0.c: 470: return;
	goto	l184
	line	471
	
l198:	
	line	472
	
l184:	
	return
	opt stack 0
GLOBAL	__end_of_executaAcaoSegundoBotao
	__end_of_executaAcaoSegundoBotao:
	signat	_executaAcaoSegundoBotao,89
	global	_trocaExibicaoHorario

;; *************** function _trocaExibicaoHorario *****************
;; Defined at:
;;		line 345 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
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
;;		Nothing
;; This function is called by:
;;		_executaAcaoSegundoBotao
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	345
global __ptext17
__ptext17:	;psect for function _trocaExibicaoHorario
psect	text17
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	345
	global	__size_of_trocaExibicaoHorario
	__size_of_trocaExibicaoHorario	equ	__end_of_trocaExibicaoHorario-_trocaExibicaoHorario
	
_trocaExibicaoHorario:	
;incstack = 0
	opt	stack 4
; Regs used in _trocaExibicaoHorario: [wreg+status,2+status,0+btemp+1]
	line	347
	
l2604:	
;Relogio_digital_timer0.c: 347: if (escolhaSubMenu == 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_escolhaSubMenu)),w
iorwf	((_escolhaSubMenu+1)),w
	btfss	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l2614
u2980:
	line	348
	
l2606:	
;Relogio_digital_timer0.c: 348: if (flagPm == 1) {
		decf	((_flagPm)),w
iorwf	((_flagPm+1)),w
	btfss	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l2610
u2990:
	line	349
	
l2608:	
;Relogio_digital_timer0.c: 349: horas = horas + 12;
	movf	(_horas),w
	addlw	low(0Ch)
	movwf	(_horas)
	movf	(_horas+1),w
	skipnc
	addlw	1
	addlw	high(0Ch)
	movwf	1+(_horas)
	line	350
;Relogio_digital_timer0.c: 350: horasAlarme = horasAlarme + 12;
	movf	(_horasAlarme),w
	addlw	low(0Ch)
	movwf	(_horasAlarme)
	movf	(_horasAlarme+1),w
	skipnc
	addlw	1
	addlw	high(0Ch)
	movwf	1+(_horasAlarme)
	goto	l2610
	line	351
	
l164:	
	line	353
	
l2610:	
;Relogio_digital_timer0.c: 351: }
;Relogio_digital_timer0.c: 353: limiteHorario = 24;
	movlw	018h
	movwf	(_limiteHorario)
	movlw	0
	movwf	((_limiteHorario))+1
	goto	l165
	line	354
	
l2612:	
;Relogio_digital_timer0.c: 354: return;
	goto	l165
	line	355
	
l163:	
	line	357
	
l2614:	
;Relogio_digital_timer0.c: 355: }
;Relogio_digital_timer0.c: 357: limiteHorario = 12;
	movlw	0Ch
	movwf	(_limiteHorario)
	movlw	0
	movwf	((_limiteHorario))+1
	line	359
	
l2616:	
;Relogio_digital_timer0.c: 359: if (horas >= 12) {
	movf	(_horas+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3005
	movlw	0Ch
	subwf	(_horas),w
u3005:

	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l2622
u3000:
	line	360
	
l2618:	
;Relogio_digital_timer0.c: 360: horas = horas - 12;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_horas),w
	addlw	low(-12)
	movwf	(_horas)
	movf	(_horas+1),w
	skipnc
	addlw	1
	addlw	high(-12)
	movwf	1+(_horas)
	line	361
	
l2620:	
;Relogio_digital_timer0.c: 361: flagPm = 1;
	movlw	01h
	movwf	(_flagPm)
	movlw	0
	movwf	((_flagPm))+1
	line	362
;Relogio_digital_timer0.c: 362: } else {
	goto	l2624
	
l166:	
	line	363
	
l2622:	
;Relogio_digital_timer0.c: 363: flagPm = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagPm)
	clrf	(_flagPm+1)
	goto	l2624
	line	364
	
l167:	
	line	366
	
l2624:	
;Relogio_digital_timer0.c: 364: }
;Relogio_digital_timer0.c: 366: if (horasAlarme >= 12) {
	movf	(_horasAlarme+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3015
	movlw	0Ch
	subwf	(_horasAlarme),w
u3015:

	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l165
u3010:
	line	367
	
l2626:	
;Relogio_digital_timer0.c: 367: horasAlarme = horasAlarme - 12;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_horasAlarme),w
	addlw	low(-12)
	movwf	(_horasAlarme)
	movf	(_horasAlarme+1),w
	skipnc
	addlw	1
	addlw	high(-12)
	movwf	1+(_horasAlarme)
	goto	l165
	line	368
	
l168:	
	line	369
	
l165:	
	return
	opt stack 0
GLOBAL	__end_of_trocaExibicaoHorario
	__end_of_trocaExibicaoHorario:
	signat	_trocaExibicaoHorario,89
	global	_diminuirValorDoLadoEscolhidoAlarme

;; *************** function _diminuirValorDoLadoEscolhidoAlarme *****************
;; Defined at:
;;		line 285 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;;		Nothing
;; This function is called by:
;;		_executaAcaoSegundoBotao
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	285
global __ptext18
__ptext18:	;psect for function _diminuirValorDoLadoEscolhidoAlarme
psect	text18
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	285
	global	__size_of_diminuirValorDoLadoEscolhidoAlarme
	__size_of_diminuirValorDoLadoEscolhidoAlarme	equ	__end_of_diminuirValorDoLadoEscolhidoAlarme-_diminuirValorDoLadoEscolhidoAlarme
	
_diminuirValorDoLadoEscolhidoAlarme:	
;incstack = 0
	opt	stack 4
; Regs used in _diminuirValorDoLadoEscolhidoAlarme: [wreg+status,2+status,0]
	line	287
	
l2554:	
;Relogio_digital_timer0.c: 287: if (flagLadoParaEditar == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((_flagLadoParaEditar)),w
iorwf	((_flagLadoParaEditar+1)),w
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l2564
u2900:
	line	288
	
l2556:	
;Relogio_digital_timer0.c: 288: if (horasAlarme == 0) {
	movf	((_horasAlarme)),w
iorwf	((_horasAlarme+1)),w
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l2560
u2910:
	goto	l142
	line	289
	
l2558:	
;Relogio_digital_timer0.c: 289: return;
	goto	l142
	line	290
	
l141:	
	line	292
	
l2560:	
;Relogio_digital_timer0.c: 290: }
;Relogio_digital_timer0.c: 292: horasAlarme--;
	movlw	0FFh
	addwf	(_horasAlarme),f
	skipnc
	incf	(_horasAlarme+1),f
	movlw	0FFh
	addwf	(_horasAlarme+1),f
	goto	l142
	line	293
	
l2562:	
;Relogio_digital_timer0.c: 293: return;
	goto	l142
	line	294
	
l140:	
	line	296
	
l2564:	
;Relogio_digital_timer0.c: 294: }
;Relogio_digital_timer0.c: 296: if (flagLadoParaEditar == 0) {
	movf	((_flagLadoParaEditar)),w
iorwf	((_flagLadoParaEditar+1)),w
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l142
u2920:
	line	297
	
l2566:	
;Relogio_digital_timer0.c: 297: if (minutosAlarme == 0) {
	movf	((_minutosAlarme)),w
iorwf	((_minutosAlarme+1)),w
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l2570
u2930:
	goto	l142
	line	298
	
l2568:	
;Relogio_digital_timer0.c: 298: return;
	goto	l142
	line	299
	
l144:	
	line	301
	
l2570:	
;Relogio_digital_timer0.c: 299: }
;Relogio_digital_timer0.c: 301: minutosAlarme--;
	movlw	0FFh
	addwf	(_minutosAlarme),f
	skipnc
	incf	(_minutosAlarme+1),f
	movlw	0FFh
	addwf	(_minutosAlarme+1),f
	goto	l142
	line	302
	
l2572:	
;Relogio_digital_timer0.c: 302: return;
	goto	l142
	line	303
	
l143:	
	line	304
	
l142:	
	return
	opt stack 0
GLOBAL	__end_of_diminuirValorDoLadoEscolhidoAlarme
	__end_of_diminuirValorDoLadoEscolhidoAlarme:
	signat	_diminuirValorDoLadoEscolhidoAlarme,89
	global	_diminuirValorDoLadoEscolhido

;; *************** function _diminuirValorDoLadoEscolhido *****************
;; Defined at:
;;		line 235 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;;		Nothing
;; This function is called by:
;;		_executaAcaoSegundoBotao
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	235
global __ptext19
__ptext19:	;psect for function _diminuirValorDoLadoEscolhido
psect	text19
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	235
	global	__size_of_diminuirValorDoLadoEscolhido
	__size_of_diminuirValorDoLadoEscolhido	equ	__end_of_diminuirValorDoLadoEscolhido-_diminuirValorDoLadoEscolhido
	
_diminuirValorDoLadoEscolhido:	
;incstack = 0
	opt	stack 4
; Regs used in _diminuirValorDoLadoEscolhido: [wreg+status,2+status,0]
	line	237
	
l2510:	
;Relogio_digital_timer0.c: 237: if (flagLadoParaEditar == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((_flagLadoParaEditar)),w
iorwf	((_flagLadoParaEditar+1)),w
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l2526
u2810:
	line	238
	
l2512:	
;Relogio_digital_timer0.c: 238: if (horas == 0) {
	movf	((_horas)),w
iorwf	((_horas+1)),w
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l2522
u2820:
	line	239
	
l2514:	
;Relogio_digital_timer0.c: 239: if (flagPm == 0) {
	movf	((_flagPm)),w
iorwf	((_flagPm+1)),w
	btfss	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l2518
u2830:
	line	240
	
l2516:	
;Relogio_digital_timer0.c: 240: flagPm = 1;
	movlw	01h
	movwf	(_flagPm)
	movlw	0
	movwf	((_flagPm))+1
	line	241
;Relogio_digital_timer0.c: 241: } else {
	goto	l128
	
l126:	
	line	242
	
l2518:	
;Relogio_digital_timer0.c: 242: flagPm = 0;
	clrf	(_flagPm)
	clrf	(_flagPm+1)
	goto	l128
	line	243
	
l127:	
	goto	l128
	line	245
	
l2520:	
;Relogio_digital_timer0.c: 243: }
;Relogio_digital_timer0.c: 245: return;
	goto	l128
	line	246
	
l125:	
	line	248
	
l2522:	
;Relogio_digital_timer0.c: 246: }
;Relogio_digital_timer0.c: 248: horas--;
	movlw	0FFh
	addwf	(_horas),f
	skipnc
	incf	(_horas+1),f
	movlw	0FFh
	addwf	(_horas+1),f
	goto	l128
	line	249
	
l2524:	
;Relogio_digital_timer0.c: 249: return;
	goto	l128
	line	250
	
l124:	
	line	252
	
l2526:	
;Relogio_digital_timer0.c: 250: }
;Relogio_digital_timer0.c: 252: if (flagLadoParaEditar == 0) {
	movf	((_flagLadoParaEditar)),w
iorwf	((_flagLadoParaEditar+1)),w
	btfss	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l128
u2840:
	line	253
	
l2528:	
;Relogio_digital_timer0.c: 253: if (minutos == 0) {
	movf	((_minutos)),w
iorwf	((_minutos+1)),w
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l2532
u2850:
	goto	l128
	line	254
	
l2530:	
;Relogio_digital_timer0.c: 254: return;
	goto	l128
	line	255
	
l130:	
	line	257
	
l2532:	
;Relogio_digital_timer0.c: 255: }
;Relogio_digital_timer0.c: 257: minutos--;
	movlw	0FFh
	addwf	(_minutos),f
	skipnc
	incf	(_minutos+1),f
	movlw	0FFh
	addwf	(_minutos+1),f
	goto	l128
	line	258
	
l2534:	
;Relogio_digital_timer0.c: 258: return;
	goto	l128
	line	259
	
l129:	
	line	260
	
l128:	
	return
	opt stack 0
GLOBAL	__end_of_diminuirValorDoLadoEscolhido
	__end_of_diminuirValorDoLadoEscolhido:
	signat	_diminuirValorDoLadoEscolhido,89
	global	_diminuirOpcaoMenu

;; *************** function _diminuirOpcaoMenu *****************
;; Defined at:
;;		line 325 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, btemp+1
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
;;		Nothing
;; This function is called by:
;;		_executaAcaoSegundoBotao
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	325
global __ptext20
__ptext20:	;psect for function _diminuirOpcaoMenu
psect	text20
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	325
	global	__size_of_diminuirOpcaoMenu
	__size_of_diminuirOpcaoMenu	equ	__end_of_diminuirOpcaoMenu-_diminuirOpcaoMenu
	
_diminuirOpcaoMenu:	
;incstack = 0
	opt	stack 4
; Regs used in _diminuirOpcaoMenu: [wreg+btemp+1]
	line	327
	
l2588:	
;Relogio_digital_timer0.c: 327: escolhaMenu--;
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_escolhaMenu),f
	skipnc
	incf	(_escolhaMenu+1),f
	movlw	0FFh
	addwf	(_escolhaMenu+1),f
	line	329
	
l2590:	
;Relogio_digital_timer0.c: 329: if (escolhaMenu < edicaoHorario) {
	movf	(_escolhaMenu+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2965
	movlw	02h
	subwf	(_escolhaMenu),w
u2965:

	skipnc
	goto	u2961
	goto	u2960
u2961:
	goto	l156
u2960:
	line	330
	
l2592:	
;Relogio_digital_timer0.c: 330: escolhaMenu = exibicaoHorario;
	movlw	04h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_escolhaMenu)
	movlw	0
	movwf	((_escolhaMenu))+1
	goto	l156
	line	331
	
l155:	
	line	332
	
l156:	
	return
	opt stack 0
GLOBAL	__end_of_diminuirOpcaoMenu
	__end_of_diminuirOpcaoMenu:
	signat	_diminuirOpcaoMenu,89
	global	_executaAcaoPrimeiroBotao

;; *************** function _executaAcaoPrimeiroBotao *****************
;; Defined at:
;;		line 371 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempoSeguran    2    1[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_aumentarOpcaoMenu
;;		_aumentarValorDoLadoEscolhido
;;		_aumentarValorDoLadoEscolhidoAlarme
;;		_trocaDeLadoEdicao
;;		_trocarSubMenuEscolhido
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	371
global __ptext21
__ptext21:	;psect for function _executaAcaoPrimeiroBotao
psect	text21
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	371
	global	__size_of_executaAcaoPrimeiroBotao
	__size_of_executaAcaoPrimeiroBotao	equ	__end_of_executaAcaoPrimeiroBotao-_executaAcaoPrimeiroBotao
	
_executaAcaoPrimeiroBotao:	
;incstack = 0
	opt	stack 4
; Regs used in _executaAcaoPrimeiroBotao: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	373
	
l2760:	
;Relogio_digital_timer0.c: 373: int tempoSegurando = tempoSegurandoPrimeiroBotaoMili;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tempoSegurandoPrimeiroBotaoMili+1),w
	movwf	(executaAcaoPrimeiroBotao@tempoSegurando+1)
	movf	(_tempoSegurandoPrimeiroBotaoMili),w
	movwf	(executaAcaoPrimeiroBotao@tempoSegurando)
	line	374
	
l2762:	
;Relogio_digital_timer0.c: 374: tempoSegurandoPrimeiroBotaoMili = 0;
	clrf	(_tempoSegurandoPrimeiroBotaoMili)
	clrf	(_tempoSegurandoPrimeiroBotaoMili+1)
	line	376
	
l2764:	
;Relogio_digital_timer0.c: 376: if (escolhaModo == relogio && tempoSegurando >= 3000) {
	movf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l2776
u3120:
	
l2766:	
	movf	(executaAcaoPrimeiroBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3135
	movlw	0B8h
	subwf	(executaAcaoPrimeiroBotao@tempoSegurando),w
u3135:

	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l2776
u3130:
	line	377
	
l2768:	
;Relogio_digital_timer0.c: 377: escolhaModo = menu;
	movlw	01h
	movwf	(_escolhaModo)
	movlw	0
	movwf	((_escolhaModo))+1
	line	378
	
l2770:	
;Relogio_digital_timer0.c: 378: flagEditandoUmLado = 0;
	clrf	(_flagEditandoUmLado)
	clrf	(_flagEditandoUmLado+1)
	line	379
	
l2772:	
;Relogio_digital_timer0.c: 379: flagLadoParaEditar = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagLadoParaEditar)
	clrf	(_flagLadoParaEditar+1)
	line	380
;Relogio_digital_timer0.c: 380: flagLimparTela = 1;
	movlw	01h
	movwf	(_flagLimparTela)
	movlw	0
	movwf	((_flagLimparTela))+1
	goto	l172
	line	381
	
l2774:	
;Relogio_digital_timer0.c: 381: return;
	goto	l172
	line	382
	
l171:	
	line	384
	
l2776:	
;Relogio_digital_timer0.c: 382: }
;Relogio_digital_timer0.c: 384: if (escolhaModo != relogio && tempoSegurando >= 3000) {
	movf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfsc	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l2786
u3140:
	
l2778:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoPrimeiroBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3155
	movlw	0B8h
	subwf	(executaAcaoPrimeiroBotao@tempoSegurando),w
u3155:

	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l2786
u3150:
	line	385
	
l2780:	
;Relogio_digital_timer0.c: 385: escolhaModo = relogio;
	clrf	(_escolhaModo)
	clrf	(_escolhaModo+1)
	line	386
;Relogio_digital_timer0.c: 386: flagEditandoUmLado = 0;
	clrf	(_flagEditandoUmLado)
	clrf	(_flagEditandoUmLado+1)
	line	387
;Relogio_digital_timer0.c: 387: flagLadoParaEditar = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flagLadoParaEditar)
	clrf	(_flagLadoParaEditar+1)
	line	388
	
l2782:	
;Relogio_digital_timer0.c: 388: flagLimparTela = 1;
	movlw	01h
	movwf	(_flagLimparTela)
	movlw	0
	movwf	((_flagLimparTela))+1
	goto	l172
	line	389
	
l2784:	
;Relogio_digital_timer0.c: 389: return;
	goto	l172
	line	390
	
l173:	
	line	392
	
l2786:	
;Relogio_digital_timer0.c: 390: }
;Relogio_digital_timer0.c: 392: if (escolhaModo == menu && tempoSegurando < 3000) {
		decf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l2794
u3160:
	
l2788:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoPrimeiroBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3175
	movlw	0B8h
	subwf	(executaAcaoPrimeiroBotao@tempoSegurando),w
u3175:

	skipnc
	goto	u3171
	goto	u3170
u3171:
	goto	l2794
u3170:
	line	393
	
l2790:	
;Relogio_digital_timer0.c: 393: aumentarOpcaoMenu();
	fcall	_aumentarOpcaoMenu
	goto	l172
	line	394
	
l2792:	
;Relogio_digital_timer0.c: 394: return;
	goto	l172
	line	395
	
l174:	
	line	397
	
l2794:	
;Relogio_digital_timer0.c: 395: }
;Relogio_digital_timer0.c: 397: if ((escolhaModo == edicaoHorario || escolhaModo == alarme) && flagEditandoUmLado == 0 && tempoSegurando < 3000) {
		movlw	2
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfsc	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l2798
u3180:
	
l2796:	
		movlw	3
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l2806
u3190:
	goto	l2798
	
l177:	
	
l2798:	
	movf	((_flagEditandoUmLado)),w
iorwf	((_flagEditandoUmLado+1)),w
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l2806
u3200:
	
l2800:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoPrimeiroBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3215
	movlw	0B8h
	subwf	(executaAcaoPrimeiroBotao@tempoSegurando),w
u3215:

	skipnc
	goto	u3211
	goto	u3210
u3211:
	goto	l2806
u3210:
	line	398
	
l2802:	
;Relogio_digital_timer0.c: 398: trocaDeLadoEdicao();
	fcall	_trocaDeLadoEdicao
	goto	l172
	line	399
	
l2804:	
;Relogio_digital_timer0.c: 399: return;
	goto	l172
	line	400
	
l175:	
	line	402
	
l2806:	
;Relogio_digital_timer0.c: 400: }
;Relogio_digital_timer0.c: 402: if (escolhaModo == edicaoHorario && flagEditandoUmLado == 1 && tempoSegurando < 3000) {
		movlw	2
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l2816
u3220:
	
l2808:	
		decf	((_flagEditandoUmLado)),w
iorwf	((_flagEditandoUmLado+1)),w
	btfss	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l2816
u3230:
	
l2810:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoPrimeiroBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3245
	movlw	0B8h
	subwf	(executaAcaoPrimeiroBotao@tempoSegurando),w
u3245:

	skipnc
	goto	u3241
	goto	u3240
u3241:
	goto	l2816
u3240:
	line	403
	
l2812:	
;Relogio_digital_timer0.c: 403: aumentarValorDoLadoEscolhido();
	fcall	_aumentarValorDoLadoEscolhido
	goto	l172
	line	404
	
l2814:	
;Relogio_digital_timer0.c: 404: return;
	goto	l172
	line	405
	
l178:	
	line	407
	
l2816:	
;Relogio_digital_timer0.c: 405: }
;Relogio_digital_timer0.c: 407: if (escolhaModo == alarme && flagEditandoUmLado == 1 && tempoSegurando < 3000) {
		movlw	3
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l2826
u3250:
	
l2818:	
		decf	((_flagEditandoUmLado)),w
iorwf	((_flagEditandoUmLado+1)),w
	btfss	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l2826
u3260:
	
l2820:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoPrimeiroBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3275
	movlw	0B8h
	subwf	(executaAcaoPrimeiroBotao@tempoSegurando),w
u3275:

	skipnc
	goto	u3271
	goto	u3270
u3271:
	goto	l2826
u3270:
	line	408
	
l2822:	
;Relogio_digital_timer0.c: 408: aumentarValorDoLadoEscolhidoAlarme();
	fcall	_aumentarValorDoLadoEscolhidoAlarme
	goto	l172
	line	409
	
l2824:	
;Relogio_digital_timer0.c: 409: return;
	goto	l172
	line	410
	
l179:	
	line	412
	
l2826:	
;Relogio_digital_timer0.c: 410: }
;Relogio_digital_timer0.c: 412: if (escolhaModo == exibicaoHorario && tempoSegurando < 3000) {
		movlw	4
	xorwf	((_escolhaModo)),w
iorwf	((_escolhaModo+1)),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l172
u3280:
	
l2828:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(executaAcaoPrimeiroBotao@tempoSegurando+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0Bh)^80h
	subwf	btemp+1,w
	skipz
	goto	u3295
	movlw	0B8h
	subwf	(executaAcaoPrimeiroBotao@tempoSegurando),w
u3295:

	skipnc
	goto	u3291
	goto	u3290
u3291:
	goto	l172
u3290:
	line	413
	
l2830:	
;Relogio_digital_timer0.c: 413: trocarSubMenuEscolhido();
	fcall	_trocarSubMenuEscolhido
	goto	l172
	line	414
	
l2832:	
;Relogio_digital_timer0.c: 414: return;
	goto	l172
	line	415
	
l180:	
	line	416
	
l172:	
	return
	opt stack 0
GLOBAL	__end_of_executaAcaoPrimeiroBotao
	__end_of_executaAcaoPrimeiroBotao:
	signat	_executaAcaoPrimeiroBotao,89
	global	_trocarSubMenuEscolhido

;; *************** function _trocarSubMenuEscolhido *****************
;; Defined at:
;;		line 334 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;;		Nothing
;; This function is called by:
;;		_executaAcaoPrimeiroBotao
;;		_executaAcaoSegundoBotao
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	334
global __ptext22
__ptext22:	;psect for function _trocarSubMenuEscolhido
psect	text22
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	334
	global	__size_of_trocarSubMenuEscolhido
	__size_of_trocarSubMenuEscolhido	equ	__end_of_trocarSubMenuEscolhido-_trocarSubMenuEscolhido
	
_trocarSubMenuEscolhido:	
;incstack = 0
	opt	stack 4
; Regs used in _trocarSubMenuEscolhido: [wreg+status,2+status,0]
	line	336
	
l2594:	
;Relogio_digital_timer0.c: 336: if (escolhaSubMenu == 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_escolhaSubMenu)),w
iorwf	((_escolhaSubMenu+1)),w
	btfss	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l2600
u2970:
	line	337
	
l2596:	
;Relogio_digital_timer0.c: 337: escolhaSubMenu = 1;
	movlw	01h
	movwf	(_escolhaSubMenu)
	movlw	0
	movwf	((_escolhaSubMenu))+1
	goto	l160
	line	338
	
l2598:	
;Relogio_digital_timer0.c: 338: return;
	goto	l160
	line	339
	
l159:	
	line	341
	
l2600:	
;Relogio_digital_timer0.c: 339: }
;Relogio_digital_timer0.c: 341: escolhaSubMenu = 0;
	clrf	(_escolhaSubMenu)
	clrf	(_escolhaSubMenu+1)
	goto	l160
	line	342
	
l2602:	
	line	343
;Relogio_digital_timer0.c: 342: return;
	
l160:	
	return
	opt stack 0
GLOBAL	__end_of_trocarSubMenuEscolhido
	__end_of_trocarSubMenuEscolhido:
	signat	_trocarSubMenuEscolhido,89
	global	_trocaDeLadoEdicao

;; *************** function _trocaDeLadoEdicao *****************
;; Defined at:
;;		line 306 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;;		Nothing
;; This function is called by:
;;		_executaAcaoPrimeiroBotao
;;		_executaAcaoSegundoBotao
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	306
global __ptext23
__ptext23:	;psect for function _trocaDeLadoEdicao
psect	text23
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	306
	global	__size_of_trocaDeLadoEdicao
	__size_of_trocaDeLadoEdicao	equ	__end_of_trocaDeLadoEdicao-_trocaDeLadoEdicao
	
_trocaDeLadoEdicao:	
;incstack = 0
	opt	stack 4
; Regs used in _trocaDeLadoEdicao: [wreg+status,2+status,0]
	line	308
	
l2574:	
;Relogio_digital_timer0.c: 308: if (flagLadoParaEditar == 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_flagLadoParaEditar)),w
iorwf	((_flagLadoParaEditar+1)),w
	btfss	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l2580
u2940:
	line	309
	
l2576:	
;Relogio_digital_timer0.c: 309: flagLadoParaEditar = 1;
	movlw	01h
	movwf	(_flagLadoParaEditar)
	movlw	0
	movwf	((_flagLadoParaEditar))+1
	goto	l148
	line	310
	
l2578:	
;Relogio_digital_timer0.c: 310: return;
	goto	l148
	line	311
	
l147:	
	line	313
	
l2580:	
;Relogio_digital_timer0.c: 311: }
;Relogio_digital_timer0.c: 313: flagLadoParaEditar = 0;
	clrf	(_flagLadoParaEditar)
	clrf	(_flagLadoParaEditar+1)
	line	314
	
l148:	
	return
	opt stack 0
GLOBAL	__end_of_trocaDeLadoEdicao
	__end_of_trocaDeLadoEdicao:
	signat	_trocaDeLadoEdicao,89
	global	_aumentarValorDoLadoEscolhidoAlarme

;; *************** function _aumentarValorDoLadoEscolhidoAlarme *****************
;; Defined at:
;;		line 262 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_executaAcaoPrimeiroBotao
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	262
global __ptext24
__ptext24:	;psect for function _aumentarValorDoLadoEscolhidoAlarme
psect	text24
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	262
	global	__size_of_aumentarValorDoLadoEscolhidoAlarme
	__size_of_aumentarValorDoLadoEscolhidoAlarme	equ	__end_of_aumentarValorDoLadoEscolhidoAlarme-_aumentarValorDoLadoEscolhidoAlarme
	
_aumentarValorDoLadoEscolhidoAlarme:	
;incstack = 0
	opt	stack 4
; Regs used in _aumentarValorDoLadoEscolhidoAlarme: [wreg+status,2+status,0]
	line	264
	
l2536:	
;Relogio_digital_timer0.c: 264: if (flagLadoParaEditar == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((_flagLadoParaEditar)),w
iorwf	((_flagLadoParaEditar+1)),w
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2544
u2860:
	line	265
	
l2538:	
;Relogio_digital_timer0.c: 265: horasAlarme++;
	movlw	01h
	addwf	(_horasAlarme),f
	skipnc
	incf	(_horasAlarme+1),f
	movlw	0
	addwf	(_horasAlarme+1),f
	line	267
;Relogio_digital_timer0.c: 267: if (horasAlarme >= limiteHorario) {
	movf	(_horasAlarme+1),w
	xorlw	80h
	movwf	(??_aumentarValorDoLadoEscolhidoAlarme+0)+0
	movf	(_limiteHorario+1),w
	xorlw	80h
	subwf	(??_aumentarValorDoLadoEscolhidoAlarme+0)+0,w
	skipz
	goto	u2875
	movf	(_limiteHorario),w
	subwf	(_horasAlarme),w
u2875:

	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l135
u2870:
	line	268
	
l2540:	
;Relogio_digital_timer0.c: 268: horasAlarme = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_horasAlarme)
	clrf	(_horasAlarme+1)
	goto	l135
	line	269
	
l134:	
	goto	l135
	line	271
	
l2542:	
;Relogio_digital_timer0.c: 269: }
;Relogio_digital_timer0.c: 271: return;
	goto	l135
	line	272
	
l133:	
	line	274
	
l2544:	
;Relogio_digital_timer0.c: 272: }
;Relogio_digital_timer0.c: 274: if (flagLadoParaEditar == 0) {
	movf	((_flagLadoParaEditar)),w
iorwf	((_flagLadoParaEditar+1)),w
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l135
u2880:
	line	275
	
l2546:	
;Relogio_digital_timer0.c: 275: minutosAlarme++;
	movlw	01h
	addwf	(_minutosAlarme),f
	skipnc
	incf	(_minutosAlarme+1),f
	movlw	0
	addwf	(_minutosAlarme+1),f
	line	277
	
l2548:	
;Relogio_digital_timer0.c: 277: if (minutosAlarme == 60) {
		movlw	60
	xorwf	((_minutosAlarme)),w
iorwf	((_minutosAlarme+1)),w
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l135
u2890:
	line	278
	
l2550:	
;Relogio_digital_timer0.c: 278: minutosAlarme = 0;
	clrf	(_minutosAlarme)
	clrf	(_minutosAlarme+1)
	goto	l135
	line	279
	
l137:	
	goto	l135
	line	281
	
l2552:	
;Relogio_digital_timer0.c: 279: }
;Relogio_digital_timer0.c: 281: return;
	goto	l135
	line	282
	
l136:	
	line	283
	
l135:	
	return
	opt stack 0
GLOBAL	__end_of_aumentarValorDoLadoEscolhidoAlarme
	__end_of_aumentarValorDoLadoEscolhidoAlarme:
	signat	_aumentarValorDoLadoEscolhidoAlarme,89
	global	_aumentarValorDoLadoEscolhido

;; *************** function _aumentarValorDoLadoEscolhido *****************
;; Defined at:
;;		line 206 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_executaAcaoPrimeiroBotao
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	206
global __ptext25
__ptext25:	;psect for function _aumentarValorDoLadoEscolhido
psect	text25
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	206
	global	__size_of_aumentarValorDoLadoEscolhido
	__size_of_aumentarValorDoLadoEscolhido	equ	__end_of_aumentarValorDoLadoEscolhido-_aumentarValorDoLadoEscolhido
	
_aumentarValorDoLadoEscolhido:	
;incstack = 0
	opt	stack 4
; Regs used in _aumentarValorDoLadoEscolhido: [wreg+status,2+status,0]
	line	208
	
l2488:	
;Relogio_digital_timer0.c: 208: if (flagLadoParaEditar == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((_flagLadoParaEditar)),w
iorwf	((_flagLadoParaEditar+1)),w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l2500
u2760:
	line	209
	
l2490:	
;Relogio_digital_timer0.c: 209: horas++;
	movlw	01h
	addwf	(_horas),f
	skipnc
	incf	(_horas+1),f
	movlw	0
	addwf	(_horas+1),f
	line	211
;Relogio_digital_timer0.c: 211: if (horas >= limiteHorario) {
	movf	(_horas+1),w
	xorlw	80h
	movwf	(??_aumentarValorDoLadoEscolhido+0)+0
	movf	(_limiteHorario+1),w
	xorlw	80h
	subwf	(??_aumentarValorDoLadoEscolhido+0)+0,w
	skipz
	goto	u2775
	movf	(_limiteHorario),w
	subwf	(_horas),w
u2775:

	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l119
u2770:
	line	212
	
l2492:	
;Relogio_digital_timer0.c: 212: if (flagPm == 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_flagPm)),w
iorwf	((_flagPm+1)),w
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l2496
u2780:
	line	213
	
l2494:	
;Relogio_digital_timer0.c: 213: flagPm = 1;
	movlw	01h
	movwf	(_flagPm)
	movlw	0
	movwf	((_flagPm))+1
	line	214
;Relogio_digital_timer0.c: 214: } else {
	goto	l118
	
l117:	
	line	215
	
l2496:	
;Relogio_digital_timer0.c: 215: flagPm = 0;
	clrf	(_flagPm)
	clrf	(_flagPm+1)
	line	216
	
l118:	
	line	218
;Relogio_digital_timer0.c: 216: }
;Relogio_digital_timer0.c: 218: horas = 0;
	clrf	(_horas)
	clrf	(_horas+1)
	goto	l119
	line	219
	
l116:	
	goto	l119
	line	221
	
l2498:	
;Relogio_digital_timer0.c: 219: }
;Relogio_digital_timer0.c: 221: return;
	goto	l119
	line	222
	
l115:	
	line	224
	
l2500:	
;Relogio_digital_timer0.c: 222: }
;Relogio_digital_timer0.c: 224: if (flagLadoParaEditar == 0) {
	movf	((_flagLadoParaEditar)),w
iorwf	((_flagLadoParaEditar+1)),w
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l119
u2790:
	line	225
	
l2502:	
;Relogio_digital_timer0.c: 225: minutos++;
	movlw	01h
	addwf	(_minutos),f
	skipnc
	incf	(_minutos+1),f
	movlw	0
	addwf	(_minutos+1),f
	line	227
	
l2504:	
;Relogio_digital_timer0.c: 227: if (minutos == 60) {
		movlw	60
	xorwf	((_minutos)),w
iorwf	((_minutos+1)),w
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l119
u2800:
	line	228
	
l2506:	
;Relogio_digital_timer0.c: 228: minutos = 0;
	clrf	(_minutos)
	clrf	(_minutos+1)
	goto	l119
	line	229
	
l121:	
	goto	l119
	line	231
	
l2508:	
;Relogio_digital_timer0.c: 229: }
;Relogio_digital_timer0.c: 231: return;
	goto	l119
	line	232
	
l120:	
	line	233
	
l119:	
	return
	opt stack 0
GLOBAL	__end_of_aumentarValorDoLadoEscolhido
	__end_of_aumentarValorDoLadoEscolhido:
	signat	_aumentarValorDoLadoEscolhido,89
	global	_aumentarOpcaoMenu

;; *************** function _aumentarOpcaoMenu *****************
;; Defined at:
;;		line 316 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, btemp+1
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
;;		Nothing
;; This function is called by:
;;		_executaAcaoPrimeiroBotao
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	316
global __ptext26
__ptext26:	;psect for function _aumentarOpcaoMenu
psect	text26
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	316
	global	__size_of_aumentarOpcaoMenu
	__size_of_aumentarOpcaoMenu	equ	__end_of_aumentarOpcaoMenu-_aumentarOpcaoMenu
	
_aumentarOpcaoMenu:	
;incstack = 0
	opt	stack 4
; Regs used in _aumentarOpcaoMenu: [wreg+btemp+1]
	line	318
	
l2582:	
;Relogio_digital_timer0.c: 318: escolhaMenu++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_escolhaMenu),f
	skipnc
	incf	(_escolhaMenu+1),f
	movlw	0
	addwf	(_escolhaMenu+1),f
	line	320
	
l2584:	
;Relogio_digital_timer0.c: 320: if (escolhaMenu > exibicaoHorario) {
	movf	(_escolhaMenu+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2955
	movlw	05h
	subwf	(_escolhaMenu),w
u2955:

	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l152
u2950:
	line	321
	
l2586:	
;Relogio_digital_timer0.c: 321: escolhaMenu = edicaoHorario;
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_escolhaMenu)
	movlw	0
	movwf	((_escolhaMenu))+1
	goto	l152
	line	322
	
l151:	
	line	323
	
l152:	
	return
	opt stack 0
GLOBAL	__end_of_aumentarOpcaoMenu
	__end_of_aumentarOpcaoMenu:
	signat	_aumentarOpcaoMenu,89
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 119 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	119
global __ptext27
__ptext27:	;psect for function _LCD_Init
psect	text27
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	119
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	122
	
l2736:	
;Relogio_digital_timer0.c: 122: ADCON1bits.PCFG3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(159)^080h,3	;volatile
	line	123
;Relogio_digital_timer0.c: 123: ADCON1bits.PCFG2 = 1;
	bsf	(159)^080h,2	;volatile
	line	124
;Relogio_digital_timer0.c: 124: ADCON1bits.PCFG1 = 0;
	bcf	(159)^080h,1	;volatile
	line	125
;Relogio_digital_timer0.c: 125: ADCON1bits.PCFG0 = 0;
	bcf	(159)^080h,0	;volatile
	line	127
	
l2738:	
;Relogio_digital_timer0.c: 127: _delay((unsigned long)((15)*(18432000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	90
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Init+0)+0+1),f
	movlw	194
movwf	((??_LCD_Init+0)+0),f
	u3717:
decfsz	((??_LCD_Init+0)+0),f
	goto	u3717
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u3717
	nop
opt asmopt_pop

	line	129
	
l2740:	
;Relogio_digital_timer0.c: 129: LCD_WriteCmd(0x30);
	movlw	low(030h)
	fcall	_LCD_WriteCmd
	line	130
	
l2742:	
;Relogio_digital_timer0.c: 130: _delay((unsigned long)((4)*(18432000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	24
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Init+0)+0+1),f
	movlw	238
movwf	((??_LCD_Init+0)+0),f
	u3727:
decfsz	((??_LCD_Init+0)+0),f
	goto	u3727
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u3727
	nop
opt asmopt_pop

	line	132
;Relogio_digital_timer0.c: 132: LCD_WriteCmd(0x30);
	movlw	low(030h)
	fcall	_LCD_WriteCmd
	line	133
	
l2744:	
;Relogio_digital_timer0.c: 133: _delay((unsigned long)((100)*(18432000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	152
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Init+0)+0),f
	u3737:
decfsz	(??_LCD_Init+0)+0,f
	goto	u3737
	nop
opt asmopt_pop

	line	135
	
l2746:	
;Relogio_digital_timer0.c: 135: LCD_WriteCmd(0x30);
	movlw	low(030h)
	fcall	_LCD_WriteCmd
	line	136
;Relogio_digital_timer0.c: 136: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	60
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Init+0)+0),f
	u3747:
decfsz	(??_LCD_Init+0)+0,f
	goto	u3747
	nop
opt asmopt_pop

	line	138
	
l2748:	
;Relogio_digital_timer0.c: 138: LCD_WriteCmd(0x38);
	movlw	low(038h)
	fcall	_LCD_WriteCmd
	line	139
	
l2750:	
;Relogio_digital_timer0.c: 139: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	60
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Init+0)+0),f
	u3757:
decfsz	(??_LCD_Init+0)+0,f
	goto	u3757
	nop
opt asmopt_pop

	line	141
;Relogio_digital_timer0.c: 141: LCD_WriteCmd(0x01);
	movlw	low(01h)
	fcall	_LCD_WriteCmd
	line	142
	
l2752:	
;Relogio_digital_timer0.c: 142: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	12
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Init+0)+0+1),f
	movlw	246
movwf	((??_LCD_Init+0)+0),f
	u3767:
decfsz	((??_LCD_Init+0)+0),f
	goto	u3767
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u3767
	nop
opt asmopt_pop

	line	144
	
l2754:	
;Relogio_digital_timer0.c: 144: LCD_WriteCmd(0x0C);
	movlw	low(0Ch)
	fcall	_LCD_WriteCmd
	line	145
;Relogio_digital_timer0.c: 145: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	60
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Init+0)+0),f
	u3777:
decfsz	(??_LCD_Init+0)+0,f
	goto	u3777
	nop
opt asmopt_pop

	line	147
	
l2756:	
;Relogio_digital_timer0.c: 147: LCD_WriteCmd(0x06);
	movlw	low(06h)
	fcall	_LCD_WriteCmd
	line	148
	
l2758:	
;Relogio_digital_timer0.c: 148: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	60
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Init+0)+0),f
	u3787:
decfsz	(??_LCD_Init+0)+0,f
	goto	u3787
	nop
opt asmopt_pop

	line	149
	
l93:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,89
	global	_LCD_WriteCmd

;; *************** function _LCD_WriteCmd *****************
;; Defined at:
;;		line 64 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Clear
;;		_LCD_Init
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	line	64
global __ptext28
__ptext28:	;psect for function _LCD_WriteCmd
psect	text28
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	64
	global	__size_of_LCD_WriteCmd
	__size_of_LCD_WriteCmd	equ	__end_of_LCD_WriteCmd-_LCD_WriteCmd
	
_LCD_WriteCmd:	
;incstack = 0
	opt	stack 3
; Regs used in _LCD_WriteCmd: [wreg]
;LCD_WriteCmd@Byte stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteCmd@Byte)
	line	66
	
l2424:	
;Relogio_digital_timer0.c: 66: PORTEbits.RE0 = 0;
	bcf	(9),0	;volatile
	line	68
	
l2426:	
;Relogio_digital_timer0.c: 68: PORTD = Byte;
	movf	(LCD_WriteCmd@Byte),w
	movwf	(8)	;volatile
	line	71
	
l2428:	
;Relogio_digital_timer0.c: 71: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	73
;Relogio_digital_timer0.c: 73: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	60
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_WriteCmd+0)+0),f
	u3797:
decfsz	(??_LCD_WriteCmd+0)+0,f
	goto	u3797
	nop
opt asmopt_pop

	line	75
	
l2430:	
;Relogio_digital_timer0.c: 75: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	76
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteCmd
	__end_of_LCD_WriteCmd:
	signat	_LCD_WriteCmd,4217
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 163 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_adicionaTempoSegurandoPrimeiroBotao
;;		_adicionaTempoSegurandoSegundoBotao
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	163
global __ptext29
__ptext29:	;psect for function _ISR
psect	text29
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	163
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [wreg+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text29
	line	165
	
i1l2166:	
;Relogio_digital_timer0.c: 165: TMR0=112;
	movlw	low(070h)
	movwf	(1)	;volatile
	line	166
;Relogio_digital_timer0.c: 166: milissegundos++;
	movlw	01h
	addwf	(_milissegundos),f
	skipnc
	incf	(_milissegundos+1),f
	movlw	0
	addwf	(_milissegundos+1),f
	line	167
	
i1l2168:	
;Relogio_digital_timer0.c: 167: INTCONbits.TMR0IF=0;
	bcf	(11),2	;volatile
	line	169
	
i1l2170:	
;Relogio_digital_timer0.c: 169: adicionaTempoSegurandoPrimeiroBotao();
	fcall	_adicionaTempoSegurandoPrimeiroBotao
	line	170
	
i1l2172:	
;Relogio_digital_timer0.c: 170: adicionaTempoSegurandoSegundoBotao();
	fcall	_adicionaTempoSegurandoSegundoBotao
	line	172
	
i1l2174:	
;Relogio_digital_timer0.c: 172: if(milissegundos < 1000) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_milissegundos+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(03h)^80h
	subwf	btemp+1,w
	skipz
	goto	u235_25
	movlw	0E8h
	subwf	(_milissegundos),w
u235_25:

	skipnc
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l2178
u235_20:
	goto	i1l107
	line	173
	
i1l2176:	
;Relogio_digital_timer0.c: 173: return;
	goto	i1l107
	line	174
	
i1l106:	
	line	176
	
i1l2178:	
;Relogio_digital_timer0.c: 174: }
;Relogio_digital_timer0.c: 176: milissegundos = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_milissegundos)
	clrf	(_milissegundos+1)
	line	177
	
i1l2180:	
;Relogio_digital_timer0.c: 177: segundos++;
	movlw	01h
	addwf	(_segundos),f
	skipnc
	incf	(_segundos+1),f
	movlw	0
	addwf	(_segundos+1),f
	line	179
	
i1l2182:	
;Relogio_digital_timer0.c: 179: if(segundos < 60) {
	movf	(_segundos+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u236_25
	movlw	03Ch
	subwf	(_segundos),w
u236_25:

	skipnc
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l2186
u236_20:
	goto	i1l107
	line	180
	
i1l2184:	
;Relogio_digital_timer0.c: 180: return;
	goto	i1l107
	line	181
	
i1l108:	
	line	183
	
i1l2186:	
;Relogio_digital_timer0.c: 181: }
;Relogio_digital_timer0.c: 183: segundos=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_segundos)
	clrf	(_segundos+1)
	line	184
	
i1l2188:	
;Relogio_digital_timer0.c: 184: minutos++;
	movlw	01h
	addwf	(_minutos),f
	skipnc
	incf	(_minutos+1),f
	movlw	0
	addwf	(_minutos+1),f
	line	186
	
i1l2190:	
;Relogio_digital_timer0.c: 186: if(minutos < 60) {
	movf	(_minutos+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u237_25
	movlw	03Ch
	subwf	(_minutos),w
u237_25:

	skipnc
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l2194
u237_20:
	goto	i1l107
	line	187
	
i1l2192:	
;Relogio_digital_timer0.c: 187: return;
	goto	i1l107
	line	188
	
i1l109:	
	line	190
	
i1l2194:	
;Relogio_digital_timer0.c: 188: }
;Relogio_digital_timer0.c: 190: minutos=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_minutos)
	clrf	(_minutos+1)
	line	191
	
i1l2196:	
;Relogio_digital_timer0.c: 191: horas++;
	movlw	01h
	addwf	(_horas),f
	skipnc
	incf	(_horas+1),f
	movlw	0
	addwf	(_horas+1),f
	line	193
	
i1l2198:	
;Relogio_digital_timer0.c: 193: if(horas < limiteHorario) {
	movf	(_horas+1),w
	xorlw	80h
	movwf	(??_ISR+0)+0
	movf	(_limiteHorario+1),w
	xorlw	80h
	subwf	(??_ISR+0)+0,w
	skipz
	goto	u238_25
	movf	(_limiteHorario),w
	subwf	(_horas),w
u238_25:

	skipnc
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l2202
u238_20:
	goto	i1l107
	line	194
	
i1l2200:	
;Relogio_digital_timer0.c: 194: return;
	goto	i1l107
	line	195
	
i1l110:	
	line	197
	
i1l2202:	
;Relogio_digital_timer0.c: 195: }
;Relogio_digital_timer0.c: 197: if (flagPm == 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_flagPm)),w
iorwf	((_flagPm+1)),w
	btfss	status,2
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l2206
u239_20:
	line	198
	
i1l2204:	
;Relogio_digital_timer0.c: 198: flagPm = 1;
	movlw	01h
	movwf	(_flagPm)
	movlw	0
	movwf	((_flagPm))+1
	line	199
;Relogio_digital_timer0.c: 199: } else {
	goto	i1l112
	
i1l111:	
	line	200
	
i1l2206:	
;Relogio_digital_timer0.c: 200: flagPm = 0;
	clrf	(_flagPm)
	clrf	(_flagPm+1)
	line	201
	
i1l112:	
	line	203
;Relogio_digital_timer0.c: 201: }
;Relogio_digital_timer0.c: 203: horas=0;
	clrf	(_horas)
	clrf	(_horas+1)
	line	204
	
i1l107:	
	movf	(??_ISR+4),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
	global	_adicionaTempoSegurandoSegundoBotao

;; *************** function _adicionaTempoSegurandoSegundoBotao *****************
;; Defined at:
;;		line 157 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	line	157
global __ptext30
__ptext30:	;psect for function _adicionaTempoSegurandoSegundoBotao
psect	text30
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	157
	global	__size_of_adicionaTempoSegurandoSegundoBotao
	__size_of_adicionaTempoSegurandoSegundoBotao	equ	__end_of_adicionaTempoSegurandoSegundoBotao-_adicionaTempoSegurandoSegundoBotao
	
_adicionaTempoSegurandoSegundoBotao:	
;incstack = 0
	opt	stack 2
; Regs used in _adicionaTempoSegurandoSegundoBotao: [wreg]
	line	158
	
i1l1964:	
;Relogio_digital_timer0.c: 158: if (PORTBbits.RB1 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),1	;volatile
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l101
u189_20:
	line	159
	
i1l1966:	
;Relogio_digital_timer0.c: 159: tempoSegurandoSegundoBotaoMili++;
	movlw	01h
	addwf	(_tempoSegurandoSegundoBotaoMili),f
	skipnc
	incf	(_tempoSegurandoSegundoBotaoMili+1),f
	movlw	0
	addwf	(_tempoSegurandoSegundoBotaoMili+1),f
	goto	i1l101
	line	160
	
i1l100:	
	line	161
	
i1l101:	
	return
	opt stack 0
GLOBAL	__end_of_adicionaTempoSegurandoSegundoBotao
	__end_of_adicionaTempoSegurandoSegundoBotao:
	signat	_adicionaTempoSegurandoSegundoBotao,89
	global	_adicionaTempoSegurandoPrimeiroBotao

;; *************** function _adicionaTempoSegurandoPrimeiroBotao *****************
;; Defined at:
;;		line 151 in file "E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	line	151
global __ptext31
__ptext31:	;psect for function _adicionaTempoSegurandoPrimeiroBotao
psect	text31
	file	"E:\Google Drive\Sistemas Embarcados\Projeto Relógio\Código MPLAB\Projeto_Relogio\Relogio_digital_timer0.c"
	line	151
	global	__size_of_adicionaTempoSegurandoPrimeiroBotao
	__size_of_adicionaTempoSegurandoPrimeiroBotao	equ	__end_of_adicionaTempoSegurandoPrimeiroBotao-_adicionaTempoSegurandoPrimeiroBotao
	
_adicionaTempoSegurandoPrimeiroBotao:	
;incstack = 0
	opt	stack 2
; Regs used in _adicionaTempoSegurandoPrimeiroBotao: [wreg]
	line	152
	
i1l1960:	
;Relogio_digital_timer0.c: 152: if (PORTBbits.RB0 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),0	;volatile
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l97
u188_20:
	line	153
	
i1l1962:	
;Relogio_digital_timer0.c: 153: tempoSegurandoPrimeiroBotaoMili++;
	movlw	01h
	addwf	(_tempoSegurandoPrimeiroBotaoMili),f
	skipnc
	incf	(_tempoSegurandoPrimeiroBotaoMili+1),f
	movlw	0
	addwf	(_tempoSegurandoPrimeiroBotaoMili+1),f
	goto	i1l97
	line	154
	
i1l96:	
	line	155
	
i1l97:	
	return
	opt stack 0
GLOBAL	__end_of_adicionaTempoSegurandoPrimeiroBotao
	__end_of_adicionaTempoSegurandoPrimeiroBotao:
	signat	_adicionaTempoSegurandoPrimeiroBotao,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
