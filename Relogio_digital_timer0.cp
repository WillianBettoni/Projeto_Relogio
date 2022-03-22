#line 1 "C:/Users/Tiago/Documents/MikroC PRO/Relogio_digital_timer0/Relogio_digital_timer0.c"

sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;
sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;


char seg,m,h,dia;
char *text = "00:00:00";
unsigned cnt;
char flags = 0;

void interrupt()
{
TMR0=5;
cnt++;
INTCON.TMR0IF=0;
if(cnt==1000){
 cnt = 0;
 seg++;
 if(seg==60){
 seg=0;
 m++;
 if(m==60){
 seg=0;
 m=0;
 h++;
 if(h==24){
 seg=0;
 m=0;
 h=0;
 dia++;
 if(dia==7){
 dia=0;
 }
 }
 }
 }
}
}
void main()
{
TRISC = 255;
TRISD = 0;
INTCON.GIE = 1;
INTCON.PEIE = 1;
INTCON.TMR0IE = 1;
OPTION_REG = 0b10000010;
TMR0 = 5;
seg = Eeprom_Read(3);
m = Eeprom_Read(2);
h = Eeprom_Read(1);
dia = Eeprom_Read(0);


Lcd_Init();
Lcd_Cmd(_LCD_CLEAR);
Lcd_Cmd(_LCD_CURSOR_OFF);

while(1)
{

text[6] = seg/10 + '0';
text[7] = seg%10 + '0';
text[3] = m/10 + '0';
text[4] = m%10 + '0';
text[0] = h/10 + '0';
text[1] = h%10 + '0';

Lcd_Out(1, 7, text);

if(PORTC.F0) Flags.B0 = 1;
if(PORTC.F1) Flags.B1 = 1;
if(PORTC.F2) Flags.B2 = 1;
if(PORTC.F3) Flags.B3 = 1;


if(PORTC.F0==0 && Flags.B0)
 {
 Flags.B0 = 0;
 seg++;
 if(seg>=60) seg=0;
 Eeprom_Write(3, seg);
 }
if(PORTC.F1==0 && Flags.B1)
 {
 Flags.B1 = 0;
 m++;
 if(m>=60) m=0;
 Eeprom_Write(2, m);
 }
if(PORTC.F2==0 && Flags.B2)
 {
 Flags.B2 = 0;
 h++;
 if(h>=24) h=0;
 Eeprom_Write(1, h);
 }
if(PORTC.F3==0 && Flags.B3)
 {
 Flags.B3 = 0;
 dia++;
 if(dia>=7) dia=0;
 Eeprom_Write(0, dia);
 }

switch(dia)
{
case 0:Lcd_Out(2,10,"DOM");break;
case 1:Lcd_Out(2,10,"SEG");break;
case 2:Lcd_Out(2,10,"TER");break;
case 3:Lcd_Out(2,10,"QUA");break;
case 4:Lcd_Out(2,10,"QUI");break;
case 5:Lcd_Out(2,10,"SEX");break;
case 6:Lcd_Out(2,10,"SAB");break;
}

}
}
