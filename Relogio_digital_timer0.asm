
_interrupt:
	MOVWF      R15+0
	SWAPF      RP1_bit, 0
	CLRF       RP1_bit
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH

;Relogio_digital_timer0.c,21 :: 		void interrupt()
;Relogio_digital_timer0.c,23 :: 		TMR0=5;
	MOVLW      5
	MOVWF      TMR0
;Relogio_digital_timer0.c,24 :: 		cnt++;
	INCF       _cnt+0, 1
	BTFSC      RP1_bit, 2
	INCF       _cnt+1, 1
;Relogio_digital_timer0.c,25 :: 		INTCON.TMR0IF=0;
	BCF        T0IE_bit, 2
;Relogio_digital_timer0.c,26 :: 		if(cnt==1000){
	MOVF       _cnt+1, 0
	XORLW      3
	BTFSS      RP1_bit, 2
	GOTO       L__interrupt42
	MOVLW      232
	XORWF      _cnt+0, 0
L__interrupt42:
	BTFSS      RP1_bit, 2
	GOTO       L_interrupt0
;Relogio_digital_timer0.c,27 :: 		cnt = 0;
	CLRF       _cnt+0
	CLRF       _cnt+1
;Relogio_digital_timer0.c,28 :: 		seg++;
	INCF       _seg+0, 1
;Relogio_digital_timer0.c,29 :: 		if(seg==60){
	MOVF       _seg+0, 0
	XORLW      60
	BTFSS      RP1_bit, 2
	GOTO       L_interrupt1
;Relogio_digital_timer0.c,30 :: 		seg=0;
	CLRF       _seg+0
;Relogio_digital_timer0.c,31 :: 		m++;
	INCF       _m+0, 1
;Relogio_digital_timer0.c,32 :: 		if(m==60){
	MOVF       _m+0, 0
	XORLW      60
	BTFSS      RP1_bit, 2
	GOTO       L_interrupt2
;Relogio_digital_timer0.c,33 :: 		seg=0;
	CLRF       _seg+0
;Relogio_digital_timer0.c,34 :: 		m=0;
	CLRF       _m+0
;Relogio_digital_timer0.c,35 :: 		h++;
	INCF       _h+0, 1
;Relogio_digital_timer0.c,36 :: 		if(h==24){
	MOVF       _h+0, 0
	XORLW      24
	BTFSS      RP1_bit, 2
	GOTO       L_interrupt3
;Relogio_digital_timer0.c,37 :: 		seg=0;
	CLRF       _seg+0
;Relogio_digital_timer0.c,38 :: 		m=0;
	CLRF       _m+0
;Relogio_digital_timer0.c,39 :: 		h=0;
	CLRF       _h+0
;Relogio_digital_timer0.c,40 :: 		dia++;
	INCF       _dia+0, 1
;Relogio_digital_timer0.c,41 :: 		if(dia==7){
	MOVF       _dia+0, 0
	XORLW      7
	BTFSS      RP1_bit, 2
	GOTO       L_interrupt4
;Relogio_digital_timer0.c,42 :: 		dia=0;
	CLRF       _dia+0
;Relogio_digital_timer0.c,43 :: 		}
L_interrupt4:
;Relogio_digital_timer0.c,44 :: 		}
L_interrupt3:
;Relogio_digital_timer0.c,45 :: 		}
L_interrupt2:
;Relogio_digital_timer0.c,46 :: 		}
L_interrupt1:
;Relogio_digital_timer0.c,47 :: 		}
L_interrupt0:
;Relogio_digital_timer0.c,48 :: 		}
L_end_interrupt:
L__interrupt41:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      RP1_bit
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;Relogio_digital_timer0.c,49 :: 		void main()
;Relogio_digital_timer0.c,51 :: 		TRISC = 255;
	MOVLW      255
	MOVWF      TRISC0_bit
;Relogio_digital_timer0.c,52 :: 		TRISD = 0;
	CLRF       TRISD0_bit
;Relogio_digital_timer0.c,53 :: 		INTCON.GIE = 1;
	BSF        T0IE_bit, 7
;Relogio_digital_timer0.c,54 :: 		INTCON.PEIE = 1;
	BSF        T0IE_bit, 6
;Relogio_digital_timer0.c,55 :: 		INTCON.TMR0IE = 1;
	BSF        T0IE_bit, 5
;Relogio_digital_timer0.c,56 :: 		OPTION_REG = 0b10000010;
	MOVLW      130
	MOVWF      PS2_bit
;Relogio_digital_timer0.c,57 :: 		TMR0 = 5;
	MOVLW      5
	MOVWF      TMR0
;Relogio_digital_timer0.c,58 :: 		seg = Eeprom_Read(3);
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _seg+0
;Relogio_digital_timer0.c,59 :: 		m = Eeprom_Read(2);
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _m+0
;Relogio_digital_timer0.c,60 :: 		h = Eeprom_Read(1);
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _h+0
;Relogio_digital_timer0.c,61 :: 		dia = Eeprom_Read(0);
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _dia+0
;Relogio_digital_timer0.c,64 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;Relogio_digital_timer0.c,65 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Relogio_digital_timer0.c,66 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Relogio_digital_timer0.c,68 :: 		while(1)
L_main5:
;Relogio_digital_timer0.c,71 :: 		text[6] = seg/10 + '0';
	MOVLW      6
	ADDWF      _text+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       _seg+0, 0
	MOVWF      R0+0
	CALL       _Div_8x8_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__main+0, 0
	MOVWF      FSRPTR
	MOVF       R0+0, 0
	MOVWF      INDF
;Relogio_digital_timer0.c,72 :: 		text[7] = seg%10 + '0';
	MOVLW      7
	ADDWF      _text+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       _seg+0, 0
	MOVWF      R0+0
	CALL       _Div_8x8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__main+0, 0
	MOVWF      FSRPTR
	MOVF       R0+0, 0
	MOVWF      INDF
;Relogio_digital_timer0.c,73 :: 		text[3] = m/10 + '0';
	MOVLW      3
	ADDWF      _text+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       _m+0, 0
	MOVWF      R0+0
	CALL       _Div_8x8_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__main+0, 0
	MOVWF      FSRPTR
	MOVF       R0+0, 0
	MOVWF      INDF
;Relogio_digital_timer0.c,74 :: 		text[4] = m%10 + '0';
	MOVLW      4
	ADDWF      _text+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       _m+0, 0
	MOVWF      R0+0
	CALL       _Div_8x8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__main+0, 0
	MOVWF      FSRPTR
	MOVF       R0+0, 0
	MOVWF      INDF
;Relogio_digital_timer0.c,75 :: 		text[0] = h/10 + '0';
	MOVF       _text+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       _h+0, 0
	MOVWF      R0+0
	CALL       _Div_8x8_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__main+0, 0
	MOVWF      FSRPTR
	MOVF       R0+0, 0
	MOVWF      INDF
;Relogio_digital_timer0.c,76 :: 		text[1] = h%10 + '0';
	INCF       _text+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       _h+0, 0
	MOVWF      R0+0
	CALL       _Div_8x8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__main+0, 0
	MOVWF      FSRPTR
	MOVF       R0+0, 0
	MOVWF      INDF
;Relogio_digital_timer0.c,78 :: 		Lcd_Out(1, 7, text);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       _text+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Relogio_digital_timer0.c,80 :: 		if(PORTC.F0) Flags.B0 = 1;
	BTFSS      RC0_bit, 0
	GOTO       L_main7
	BSF        _flags+0, 0
L_main7:
;Relogio_digital_timer0.c,81 :: 		if(PORTC.F1) Flags.B1 = 1;
	BTFSS      RC0_bit, 1
	GOTO       L_main8
	BSF        _flags+0, 1
L_main8:
;Relogio_digital_timer0.c,82 :: 		if(PORTC.F2) Flags.B2 = 1;
	BTFSS      RC0_bit, 2
	GOTO       L_main9
	BSF        _flags+0, 2
L_main9:
;Relogio_digital_timer0.c,83 :: 		if(PORTC.F3) Flags.B3 = 1;
	BTFSS      RC0_bit, 3
	GOTO       L_main10
	BSF        _flags+0, 3
L_main10:
;Relogio_digital_timer0.c,86 :: 		if(PORTC.F0==0 && Flags.B0)
	BTFSC      RC0_bit, 0
	GOTO       L_main13
	BTFSS      _flags+0, 0
	GOTO       L_main13
L__main39:
;Relogio_digital_timer0.c,88 :: 		Flags.B0 = 0;
	BCF        _flags+0, 0
;Relogio_digital_timer0.c,89 :: 		seg++;
	INCF       _seg+0, 1
;Relogio_digital_timer0.c,90 :: 		if(seg>=60) seg=0;
	MOVLW      60
	SUBWF      _seg+0, 0
	BTFSS      RP1_bit, 0
	GOTO       L_main14
	CLRF       _seg+0
L_main14:
;Relogio_digital_timer0.c,91 :: 		Eeprom_Write(3, seg);
	MOVLW      3
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _seg+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Relogio_digital_timer0.c,92 :: 		}
L_main13:
;Relogio_digital_timer0.c,93 :: 		if(PORTC.F1==0 && Flags.B1)
	BTFSC      RC0_bit, 1
	GOTO       L_main17
	BTFSS      _flags+0, 1
	GOTO       L_main17
L__main38:
;Relogio_digital_timer0.c,95 :: 		Flags.B1 = 0;
	BCF        _flags+0, 1
;Relogio_digital_timer0.c,96 :: 		m++;
	INCF       _m+0, 1
;Relogio_digital_timer0.c,97 :: 		if(m>=60) m=0;
	MOVLW      60
	SUBWF      _m+0, 0
	BTFSS      RP1_bit, 0
	GOTO       L_main18
	CLRF       _m+0
L_main18:
;Relogio_digital_timer0.c,98 :: 		Eeprom_Write(2, m);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _m+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Relogio_digital_timer0.c,99 :: 		}
L_main17:
;Relogio_digital_timer0.c,100 :: 		if(PORTC.F2==0 && Flags.B2)
	BTFSC      RC0_bit, 2
	GOTO       L_main21
	BTFSS      _flags+0, 2
	GOTO       L_main21
L__main37:
;Relogio_digital_timer0.c,102 :: 		Flags.B2 = 0;
	BCF        _flags+0, 2
;Relogio_digital_timer0.c,103 :: 		h++;
	INCF       _h+0, 1
;Relogio_digital_timer0.c,104 :: 		if(h>=24) h=0;
	MOVLW      24
	SUBWF      _h+0, 0
	BTFSS      RP1_bit, 0
	GOTO       L_main22
	CLRF       _h+0
L_main22:
;Relogio_digital_timer0.c,105 :: 		Eeprom_Write(1, h);
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _h+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Relogio_digital_timer0.c,106 :: 		}
L_main21:
;Relogio_digital_timer0.c,107 :: 		if(PORTC.F3==0 && Flags.B3)
	BTFSC      RC0_bit, 3
	GOTO       L_main25
	BTFSS      _flags+0, 3
	GOTO       L_main25
L__main36:
;Relogio_digital_timer0.c,109 :: 		Flags.B3 = 0;
	BCF        _flags+0, 3
;Relogio_digital_timer0.c,110 :: 		dia++;
	INCF       _dia+0, 1
;Relogio_digital_timer0.c,111 :: 		if(dia>=7) dia=0;
	MOVLW      7
	SUBWF      _dia+0, 0
	BTFSS      RP1_bit, 0
	GOTO       L_main26
	CLRF       _dia+0
L_main26:
;Relogio_digital_timer0.c,112 :: 		Eeprom_Write(0, dia);
	CLRF       FARG_EEPROM_Write_Address+0
	MOVF       _dia+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Relogio_digital_timer0.c,113 :: 		}
L_main25:
;Relogio_digital_timer0.c,115 :: 		switch(dia)
	GOTO       L_main27
;Relogio_digital_timer0.c,117 :: 		case 0:Lcd_Out(2,10,"DOM");break;
L_main29:
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      68
	MOVWF      ?lstr2_Relogio_digital_timer0+0
	MOVLW      79
	MOVWF      ?lstr2_Relogio_digital_timer0+1
	MOVLW      77
	MOVWF      ?lstr2_Relogio_digital_timer0+2
	CLRF       ?lstr2_Relogio_digital_timer0+3
	MOVLW      ?lstr2_Relogio_digital_timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main28
;Relogio_digital_timer0.c,118 :: 		case 1:Lcd_Out(2,10,"SEG");break;
L_main30:
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      83
	MOVWF      ?lstr3_Relogio_digital_timer0+0
	MOVLW      69
	MOVWF      ?lstr3_Relogio_digital_timer0+1
	MOVLW      71
	MOVWF      ?lstr3_Relogio_digital_timer0+2
	CLRF       ?lstr3_Relogio_digital_timer0+3
	MOVLW      ?lstr3_Relogio_digital_timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main28
;Relogio_digital_timer0.c,119 :: 		case 2:Lcd_Out(2,10,"TER");break;
L_main31:
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      84
	MOVWF      ?lstr4_Relogio_digital_timer0+0
	MOVLW      69
	MOVWF      ?lstr4_Relogio_digital_timer0+1
	MOVLW      82
	MOVWF      ?lstr4_Relogio_digital_timer0+2
	CLRF       ?lstr4_Relogio_digital_timer0+3
	MOVLW      ?lstr4_Relogio_digital_timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main28
;Relogio_digital_timer0.c,120 :: 		case 3:Lcd_Out(2,10,"QUA");break;
L_main32:
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      81
	MOVWF      ?lstr5_Relogio_digital_timer0+0
	MOVLW      85
	MOVWF      ?lstr5_Relogio_digital_timer0+1
	MOVLW      65
	MOVWF      ?lstr5_Relogio_digital_timer0+2
	CLRF       ?lstr5_Relogio_digital_timer0+3
	MOVLW      ?lstr5_Relogio_digital_timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main28
;Relogio_digital_timer0.c,121 :: 		case 4:Lcd_Out(2,10,"QUI");break;
L_main33:
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      81
	MOVWF      ?lstr6_Relogio_digital_timer0+0
	MOVLW      85
	MOVWF      ?lstr6_Relogio_digital_timer0+1
	MOVLW      73
	MOVWF      ?lstr6_Relogio_digital_timer0+2
	CLRF       ?lstr6_Relogio_digital_timer0+3
	MOVLW      ?lstr6_Relogio_digital_timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main28
;Relogio_digital_timer0.c,122 :: 		case 5:Lcd_Out(2,10,"SEX");break;
L_main34:
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      83
	MOVWF      ?lstr7_Relogio_digital_timer0+0
	MOVLW      69
	MOVWF      ?lstr7_Relogio_digital_timer0+1
	MOVLW      88
	MOVWF      ?lstr7_Relogio_digital_timer0+2
	CLRF       ?lstr7_Relogio_digital_timer0+3
	MOVLW      ?lstr7_Relogio_digital_timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main28
;Relogio_digital_timer0.c,123 :: 		case 6:Lcd_Out(2,10,"SAB");break;
L_main35:
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      83
	MOVWF      ?lstr8_Relogio_digital_timer0+0
	MOVLW      65
	MOVWF      ?lstr8_Relogio_digital_timer0+1
	MOVLW      66
	MOVWF      ?lstr8_Relogio_digital_timer0+2
	CLRF       ?lstr8_Relogio_digital_timer0+3
	MOVLW      ?lstr8_Relogio_digital_timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main28
;Relogio_digital_timer0.c,124 :: 		}
L_main27:
	MOVF       _dia+0, 0
	XORLW      0
	BTFSC      RP1_bit, 2
	GOTO       L_main29
	MOVF       _dia+0, 0
	XORLW      1
	BTFSC      RP1_bit, 2
	GOTO       L_main30
	MOVF       _dia+0, 0
	XORLW      2
	BTFSC      RP1_bit, 2
	GOTO       L_main31
	MOVF       _dia+0, 0
	XORLW      3
	BTFSC      RP1_bit, 2
	GOTO       L_main32
	MOVF       _dia+0, 0
	XORLW      4
	BTFSC      RP1_bit, 2
	GOTO       L_main33
	MOVF       _dia+0, 0
	XORLW      5
	BTFSC      RP1_bit, 2
	GOTO       L_main34
	MOVF       _dia+0, 0
	XORLW      6
	BTFSC      RP1_bit, 2
	GOTO       L_main35
L_main28:
;Relogio_digital_timer0.c,126 :: 		}
	GOTO       L_main5
;Relogio_digital_timer0.c,127 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
