#line 1 "C:/Users/Administrator/Desktop/projects/virus/virus1.c"
unsigned short kp, cnt, pressed = 0;
char txt[6];


char keypadPort at PORTB;



sbit LCD_RS at RD4_bit;
sbit LCD_EN at RD5_bit;
sbit LCD_D4 at RD0_bit;
sbit LCD_D5 at RD1_bit;
sbit LCD_D6 at RD2_bit;
sbit LCD_D7 at RD3_bit;

sbit LCD_RS_Direction at TRISD4_bit;
sbit LCD_EN_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD0_bit;
sbit LCD_D5_Direction at TRISD1_bit;
sbit LCD_D6_Direction at TRISD2_bit;
sbit LCD_D7_Direction at TRISD3_bit;


char keypad(){
do {
 kp = 0;


 do

 kp = Keypad_Key_Click();
 while (!kp);

 switch (kp) {





 case 1: return 49; break;
 case 2: return 50; break;
 case 3: return 51; break;
 case 4: return 47; break;
 case 5: return 52; break;
 case 6: return 53; break;
 case 7: return 54; break;
 case 8: return 42; break;
 case 9: return 55; break;
 case 10: return 56; break;
 case 11: return 57; break;
 case 12: return 45; break;
 case 13: return 42; break;
 case 14: return 48; break;
 case 15: return 61; break;
 case 16: return 43; break;

 }


 } while (1);
}

const unsigned char digits[10] = {
 0x3F,
 0x06,
 0x5B,
 0x4F,
 0x66,
 0x6D,
 0x7D,
 0x07,
 0x7F,
 0x6F
};
void count1(){
 PORTC=digits[1];
 PORTA=digits[0];
 delay_ms(500);

 PORTA=digits[1];
 PORTC=digits[1];
 delay_ms(500);

 PORTA=digits[1];
 PORTC=digits[2];
 delay_ms(500);

}
void count2(){
 PORTA=digits[1];
 PORTC=digits[5];
 delay_ms(500);

 PORTA=digits[1];
 PORTC=digits[6];
 delay_ms(500);

 PORTA=digits[1];
 PORTC=digits[3];
 delay_ms(500);

 PORTA=digits[1];
 PORTC=digits[7];
 delay_ms(500);
}
void count3(){
 PORTA=digits[2];
 PORTC=digits[0];
 delay_ms(500);

 PORTA=digits[2];
 PORTC=digits[1];
 delay_ms(500);

 PORTA=digits[2];
 PORTC=digits[2];
 delay_ms(500);
}

void main() {
 cnt = 0;
 Keypad_Init();
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1, 1, ":");
 ANSEL = 0x00;
 ANSELH = 0x00;
 TRISA = 0x00;
 TRISC = 0x00;
 PORTA = 0x00;
 PORTC = 0x00;

 while(1){
 pressed =keypad();

 if(pressed==49){

 Lcd_Out(1, 1, "GO STRAIGHT");
 Lcd_Out(2, 1, "TURN LEFT");

 count1();
 Lcd_Cmd(_LCD_CLEAR);

 }

 if(pressed==50){
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "GO STRAIGHT");
 count2();
 }

 if(pressed==51){
 Lcd_Out(1, 1, "JUST TURN LEFT");
 count3();
 Lcd_Cmd(_LCD_CLEAR);
 }
 if(pressed== 50 || pressed ==53 || pressed== 56)
 {

 }


 }
}
