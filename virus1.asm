
_keypad:

;virus1.c,28 :: 		char keypad(){
;virus1.c,29 :: 		do {
L_keypad0:
;virus1.c,30 :: 		kp = 0;                                // Reset key code variable
	CLRF       _kp+0
;virus1.c,33 :: 		do
L_keypad3:
;virus1.c,35 :: 		kp = Keypad_Key_Click();             // Store key code in kp variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;virus1.c,36 :: 		while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_keypad3
;virus1.c,38 :: 		switch (kp) {
	GOTO       L_keypad6
;virus1.c,44 :: 		case  1: return 49; break; // 1        // Uncomment this block for keypad4x4
L_keypad8:
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,45 :: 		case  2: return 50; break; // 2
L_keypad9:
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,46 :: 		case  3: return 51; break; // 3
L_keypad10:
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,47 :: 		case  4: return 47; break; // A or /
L_keypad11:
	MOVLW      47
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,48 :: 		case  5: return 52; break; // 4
L_keypad12:
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,49 :: 		case  6: return 53; break; // 5
L_keypad13:
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,50 :: 		case  7: return 54; break; // 6
L_keypad14:
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,51 :: 		case  8: return 42; break; // B or *
L_keypad15:
	MOVLW      42
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,52 :: 		case  9: return 55; break; // 7
L_keypad16:
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,53 :: 		case 10: return 56; break; // 8
L_keypad17:
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,54 :: 		case 11: return 57; break; // 9
L_keypad18:
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,55 :: 		case 12: return 45; break; // C or -
L_keypad19:
	MOVLW      45
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,56 :: 		case 13: return 42; break; // *
L_keypad20:
	MOVLW      42
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,57 :: 		case 14: return 48; break; // 0
L_keypad21:
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,58 :: 		case 15: return 61; break; // # or =
L_keypad22:
	MOVLW      61
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,59 :: 		case 16: return 43; break; // D or +
L_keypad23:
	MOVLW      43
	MOVWF      R0+0
	GOTO       L_end_keypad
;virus1.c,61 :: 		}
L_keypad6:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_keypad8
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_keypad9
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_keypad10
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_keypad11
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_keypad12
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_keypad13
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_keypad14
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_keypad15
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_keypad16
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_keypad17
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_keypad18
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_keypad19
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_keypad20
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_keypad21
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_keypad22
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_keypad23
;virus1.c,64 :: 		} while (1);
	GOTO       L_keypad0
;virus1.c,65 :: 		}
L_end_keypad:
	RETURN
; end of _keypad

_count1:

;virus1.c,79 :: 		void count1(){
;virus1.c,80 :: 		PORTA=digits[1];
	MOVLW      6
	MOVWF      PORTA+0
;virus1.c,81 :: 		PORTC=digits[0];
	MOVLW      63
	MOVWF      PORTC+0
;virus1.c,82 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_count124:
	DECFSZ     R13+0, 1
	GOTO       L_count124
	DECFSZ     R12+0, 1
	GOTO       L_count124
	DECFSZ     R11+0, 1
	GOTO       L_count124
	NOP
	NOP
;virus1.c,84 :: 		PORTA=digits[1];
	MOVLW      6
	MOVWF      PORTA+0
;virus1.c,85 :: 		PORTC=digits[1];
	MOVLW      6
	MOVWF      PORTC+0
;virus1.c,86 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_count125:
	DECFSZ     R13+0, 1
	GOTO       L_count125
	DECFSZ     R12+0, 1
	GOTO       L_count125
	DECFSZ     R11+0, 1
	GOTO       L_count125
	NOP
	NOP
;virus1.c,88 :: 		PORTA=digits[1];
	MOVLW      6
	MOVWF      PORTA+0
;virus1.c,89 :: 		PORTC=digits[2];
	MOVLW      91
	MOVWF      PORTC+0
;virus1.c,90 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_count126:
	DECFSZ     R13+0, 1
	GOTO       L_count126
	DECFSZ     R12+0, 1
	GOTO       L_count126
	DECFSZ     R11+0, 1
	GOTO       L_count126
	NOP
	NOP
;virus1.c,92 :: 		}
L_end_count1:
	RETURN
; end of _count1

_count2:

;virus1.c,93 :: 		void count2(){
;virus1.c,94 :: 		PORTA=digits[1];
	MOVLW      6
	MOVWF      PORTA+0
;virus1.c,95 :: 		PORTC=digits[5];
	MOVLW      109
	MOVWF      PORTC+0
;virus1.c,96 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_count227:
	DECFSZ     R13+0, 1
	GOTO       L_count227
	DECFSZ     R12+0, 1
	GOTO       L_count227
	DECFSZ     R11+0, 1
	GOTO       L_count227
	NOP
	NOP
;virus1.c,98 :: 		PORTA=digits[1];
	MOVLW      6
	MOVWF      PORTA+0
;virus1.c,99 :: 		PORTC=digits[6];
	MOVLW      125
	MOVWF      PORTC+0
;virus1.c,100 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_count228:
	DECFSZ     R13+0, 1
	GOTO       L_count228
	DECFSZ     R12+0, 1
	GOTO       L_count228
	DECFSZ     R11+0, 1
	GOTO       L_count228
	NOP
	NOP
;virus1.c,102 :: 		PORTA=digits[1];
	MOVLW      6
	MOVWF      PORTA+0
;virus1.c,103 :: 		PORTC=digits[3];
	MOVLW      79
	MOVWF      PORTC+0
;virus1.c,104 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_count229:
	DECFSZ     R13+0, 1
	GOTO       L_count229
	DECFSZ     R12+0, 1
	GOTO       L_count229
	DECFSZ     R11+0, 1
	GOTO       L_count229
	NOP
	NOP
;virus1.c,106 :: 		PORTA=digits[1];
	MOVLW      6
	MOVWF      PORTA+0
;virus1.c,107 :: 		PORTC=digits[7];
	MOVLW      7
	MOVWF      PORTC+0
;virus1.c,108 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_count230:
	DECFSZ     R13+0, 1
	GOTO       L_count230
	DECFSZ     R12+0, 1
	GOTO       L_count230
	DECFSZ     R11+0, 1
	GOTO       L_count230
	NOP
	NOP
;virus1.c,109 :: 		}
L_end_count2:
	RETURN
; end of _count2

_count3:

;virus1.c,110 :: 		void count3(){
;virus1.c,111 :: 		PORTA=digits[2];
	MOVLW      91
	MOVWF      PORTA+0
;virus1.c,112 :: 		PORTC=digits[0];
	MOVLW      63
	MOVWF      PORTC+0
;virus1.c,113 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_count331:
	DECFSZ     R13+0, 1
	GOTO       L_count331
	DECFSZ     R12+0, 1
	GOTO       L_count331
	DECFSZ     R11+0, 1
	GOTO       L_count331
	NOP
	NOP
;virus1.c,115 :: 		PORTA=digits[2];
	MOVLW      91
	MOVWF      PORTA+0
;virus1.c,116 :: 		PORTC=digits[1];
	MOVLW      6
	MOVWF      PORTC+0
;virus1.c,117 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_count332:
	DECFSZ     R13+0, 1
	GOTO       L_count332
	DECFSZ     R12+0, 1
	GOTO       L_count332
	DECFSZ     R11+0, 1
	GOTO       L_count332
	NOP
	NOP
;virus1.c,119 :: 		PORTA=digits[2];
	MOVLW      91
	MOVWF      PORTA+0
;virus1.c,120 :: 		PORTC=digits[2];
	MOVLW      91
	MOVWF      PORTC+0
;virus1.c,121 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_count333:
	DECFSZ     R13+0, 1
	GOTO       L_count333
	DECFSZ     R12+0, 1
	GOTO       L_count333
	DECFSZ     R11+0, 1
	GOTO       L_count333
	NOP
	NOP
;virus1.c,122 :: 		}
L_end_count3:
	RETURN
; end of _count3

_main:

;virus1.c,124 :: 		void main() {
;virus1.c,125 :: 		cnt = 0;                                 // Reset counter
	CLRF       _cnt+0
;virus1.c,126 :: 		Keypad_Init();                           // Initialize Keypad
	CALL       _Keypad_Init+0
;virus1.c,127 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;virus1.c,128 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;virus1.c,129 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;virus1.c,131 :: 		C1ON_bit = 0;    // Disable Comparator 1
	BCF        C1ON_bit+0, BitPos(C1ON_bit+0)
;virus1.c,132 :: 		C2ON_bit = 0;    // Disable Comparator 2
	BCF        C2ON_bit+0, BitPos(C2ON_bit+0)
;virus1.c,134 :: 		VRCON  = 0x00;   // Voltage reference OFF
	CLRF       VRCON+0
;virus1.c,135 :: 		Lcd_Out(1, 1, ":");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_virus1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;virus1.c,136 :: 		ANSEL  = 0x00;  // Disable analog on RA0–RA4
	CLRF       ANSEL+0
;virus1.c,137 :: 		ANSELH = 0x00;  // Disable analog on rest (RA5, etc.)
	CLRF       ANSELH+0
;virus1.c,138 :: 		TRISA  = 0x00;  // Set PORTA as output
	CLRF       TRISA+0
;virus1.c,139 :: 		TRISC  = 0x00;  // Set PORTC as output
	CLRF       TRISC+0
;virus1.c,140 :: 		PORTA  = 0x00;
	CLRF       PORTA+0
;virus1.c,141 :: 		PORTC  = 0x00;
	CLRF       PORTC+0
;virus1.c,143 :: 		TRISD.RD6=0;
	BCF        TRISD+0, 6
;virus1.c,144 :: 		PORTE =0X00;
	CLRF       PORTE+0
;virus1.c,145 :: 		while(1){
L_main34:
;virus1.c,147 :: 		pressed =keypad();
	CALL       _keypad+0
	MOVF       R0+0, 0
	MOVWF      _pressed+0
;virus1.c,148 :: 		while(pressed==49){
L_main36:
	MOVF       _pressed+0, 0
	XORLW      49
	BTFSS      STATUS+0, 2
	GOTO       L_main37
;virus1.c,150 :: 		Lcd_Out(1, 1, "GO STRAIGHT");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_virus1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;virus1.c,151 :: 		Lcd_Out(2, 1, "TURN LEFT");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_virus1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;virus1.c,152 :: 		count1();
	CALL       _count1+0
;virus1.c,153 :: 		count1();
	CALL       _count1+0
;virus1.c,154 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;virus1.c,155 :: 		pressed =keypad();
	CALL       _keypad+0
	MOVF       R0+0, 0
	MOVWF      _pressed+0
;virus1.c,156 :: 		}
	GOTO       L_main36
L_main37:
;virus1.c,158 :: 		while(pressed==50){
L_main38:
	MOVF       _pressed+0, 0
	XORLW      50
	BTFSS      STATUS+0, 2
	GOTO       L_main39
;virus1.c,159 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;virus1.c,160 :: 		Lcd_Out(1, 1, "GO STRAIGHT");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_virus1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;virus1.c,161 :: 		count2();
	CALL       _count2+0
;virus1.c,162 :: 		count2();
	CALL       _count2+0
;virus1.c,163 :: 		pressed =keypad();
	CALL       _keypad+0
	MOVF       R0+0, 0
	MOVWF      _pressed+0
;virus1.c,164 :: 		}
	GOTO       L_main38
L_main39:
;virus1.c,166 :: 		while(pressed==51){
L_main40:
	MOVF       _pressed+0, 0
	XORLW      51
	BTFSS      STATUS+0, 2
	GOTO       L_main41
;virus1.c,167 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;virus1.c,168 :: 		Lcd_Out(1, 1, "JUST TURN LEFT");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_virus1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;virus1.c,169 :: 		count3();
	CALL       _count3+0
;virus1.c,170 :: 		count3();
	CALL       _count3+0
;virus1.c,172 :: 		pressed =keypad();
	CALL       _keypad+0
	MOVF       R0+0, 0
	MOVWF      _pressed+0
;virus1.c,173 :: 		}
	GOTO       L_main40
L_main41:
;virus1.c,174 :: 		while(pressed==51 || pressed==54 || pressed==57){
L_main42:
	MOVF       _pressed+0, 0
	XORLW      51
	BTFSC      STATUS+0, 2
	GOTO       L__main48
	MOVF       _pressed+0, 0
	XORLW      54
	BTFSC      STATUS+0, 2
	GOTO       L__main48
	MOVF       _pressed+0, 0
	XORLW      57
	BTFSC      STATUS+0, 2
	GOTO       L__main48
	GOTO       L_main43
L__main48:
;virus1.c,175 :: 		Lcd_Out(1, 1, "message flushes");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_virus1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;virus1.c,176 :: 		PORTE=0XFF;
	MOVLW      255
	MOVWF      PORTE+0
;virus1.c,177 :: 		PORTD.RD6=1;
	BSF        PORTD+0, 6
;virus1.c,178 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main46:
	DECFSZ     R13+0, 1
	GOTO       L_main46
	DECFSZ     R12+0, 1
	GOTO       L_main46
	DECFSZ     R11+0, 1
	GOTO       L_main46
	NOP
	NOP
;virus1.c,179 :: 		PORTE=0X00;
	CLRF       PORTE+0
;virus1.c,180 :: 		PORTD.RD6=0;
	BCF        PORTD+0, 6
;virus1.c,181 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;virus1.c,182 :: 		PORTE=0XFF;
	MOVLW      255
	MOVWF      PORTE+0
;virus1.c,183 :: 		PORTD.RD6=1;
	BSF        PORTD+0, 6
;virus1.c,184 :: 		Lcd_Out(1, 1, "message flushes");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_virus1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;virus1.c,185 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main47:
	DECFSZ     R13+0, 1
	GOTO       L_main47
	DECFSZ     R12+0, 1
	GOTO       L_main47
	DECFSZ     R11+0, 1
	GOTO       L_main47
	NOP
	NOP
;virus1.c,186 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;virus1.c,187 :: 		PORTE=0X00;
	CLRF       PORTE+0
;virus1.c,188 :: 		PORTD.RD6=0;
	BCF        PORTD+0, 6
;virus1.c,189 :: 		pressed =keypad();
	CALL       _keypad+0
	MOVF       R0+0, 0
	MOVWF      _pressed+0
;virus1.c,190 :: 		}
	GOTO       L_main42
L_main43:
;virus1.c,193 :: 		}}
	GOTO       L_main34
L_end_main:
	GOTO       $+0
; end of _main
