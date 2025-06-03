unsigned short kp, cnt, pressed = 0;
char txt[6];

// Keypad module connections
char  keypadPort at PORTB;
// End Keypad module connections

// LCD module connections
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
// End LCD module connections
//#define LED4             RD6_bit
//#define LED1             RE0_bit
//#define LED2             RE2_bit
//#define LED3             RE3_bit

char keypad(){
do {
    kp = 0;                                // Reset key code variable

    // Wait for key to be pressed and released
    do
      // kp = Keypad_Key_Press();          // Store key code in kp variable
      kp = Keypad_Key_Click();             // Store key code in kp variable
    while (!kp);
   // Prepare value for output, transform key to it's ASCII value
    switch (kp) {
      //case 10: kp = 42; break;  // '*'   // Uncomment this block for keypad4x3
      //case 11: kp = 48; break;  // '0'
      //case 12: kp = 35; break;  // '#'
      //default: kp += 48;

      case  1: return 49; break; // 1        // Uncomment this block for keypad4x4
      case  2: return 50; break; // 2
      case  3: return 51; break; // 3
      case  4: return 47; break; // A or /
      case  5: return 52; break; // 4
      case  6: return 53; break; // 5
      case  7: return 54; break; // 6
      case  8: return 42; break; // B or *
      case  9: return 55; break; // 7
      case 10: return 56; break; // 8
      case 11: return 57; break; // 9
      case 12: return 45; break; // C or -
      case 13: return 42; break; // *
      case 14: return 48; break; // 0
      case 15: return 61; break; // # or =
      case 16: return 43; break; // D or +

    }

                    // Display counter value on LCD
  } while (1);
}
// Hex values for digits 0–9 on a common cathode 7-segment display
const unsigned char digits[10] = {
    0x3F, // 0 => 0011 1111 (segments: A B C D E F)
    0x06, // 1 => 0000 0110 (segments: B C)
    0x5B, // 2 => 0101 1011 (segments: A B D E G)
    0x4F, // 3 => 0100 1111 (segments: A B C D G)
    0x66, // 4 => 0110 0110 (segments: B C F G)
    0x6D, // 5 => 0110 1101 (segments: A C D F G)
    0x7D, // 6 => 0111 1101 (segments: A C D E F G)
    0x07, // 7 => 0000 0111 (segments: A B C)
    0x7F, // 8 => 0111 1111 (segments: all except DP)
    0x6F  // 9 => 0110 1111 (segments: A B C D F G)
};
void count1(){
  PORTA=digits[1];
  PORTC=digits[0];
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
    PORTA.RA4 = 1;
  PORTC=digits[0];
  delay_ms(500);

//  PORTA=digits[2];
  PORTA=digits[2];
    PORTA.RA4 = 1;
  PORTC=digits[1];
  delay_ms(500);

//  PORTA=digits[2];
  PORTA=digits[2];
    PORTA.RA4 = 1;
  PORTC=digits[2];
  delay_ms(500);
}

void main() {
  cnt = 0;                                 // Reset counter
  Keypad_Init();                           // Initialize Keypad
  Lcd_Init();                              // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);                     // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
  // 2) Turn OFF both comparators so RA4 & RA5 become plain digital I/O:
    C1ON_bit = 0;    // Disable Comparator 1
    C2ON_bit = 0;    // Disable Comparator 2

      VRCON  = 0x00;   // Voltage reference OFF
  Lcd_Out(1, 1, ":");
  ANSEL  = 0x00;  // Disable analog on RA0–RA4
  ANSELH = 0x00;  // Disable analog on rest (RA5, etc.)
  TRISA  = 0x00;  // Set PORTA as output
  TRISC  = 0x00;  // Set PORTC as output
  PORTA  = 0x00;
  PORTC  = 0x00;
//  int first,second,third =0;
    TRISD.RD6=0;
    PORTE =0X00;
  while(1){

     pressed =keypad();
     while(pressed==49){

         Lcd_Out(1, 1, "GO STRAIGHT");
         Lcd_Out(2, 1, "TURN LEFT");
         count1();
         count1();
         Lcd_Cmd(_LCD_CLEAR);
          pressed =keypad();
     }

     while(pressed==50){
         Lcd_Cmd(_LCD_CLEAR);
         Lcd_Out(1, 1, "GO STRAIGHT");
           count2();
            count2();
         pressed =keypad();
     }

     while(pressed==51){
     Lcd_Cmd(_LCD_CLEAR);
         Lcd_Out(1, 1, "JUST TURN LEFT");
         count3();
          count3();

         pressed =keypad();
     }
     while(pressed==51 || pressed==54 || pressed==57){
         Lcd_Out(1, 1, "message flushes");
         PORTE=0XFF;
         PORTD.RD6=1;
         delay_ms(1000);
         PORTE=0X00;
         PORTD.RD6=0;
         Lcd_Cmd(_LCD_CLEAR);
         PORTE=0XFF;
         PORTD.RD6=1;
         Lcd_Out(1, 1, "message flushes");
         delay_ms(1000);
         Lcd_Cmd(_LCD_CLEAR);
         PORTE=0X00;
         PORTD.RD6=0;
         pressed =keypad();
     }

     
     }}