#include <xc.h>

// Configuração dos Fuses do Microcontrolador.
#define _XTAL_FREQ	   18432000 // Cristal de 18432 MHz.
#pragma config FOSC  = HS   	// Oscillator Selection bits (HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN).
#pragma config WDTE  = OFF  	// Watchdog Timer Enable bit (WDT disabled).
#pragma config PWRTE = ON   	// Power-up Timer Enable bit (PWRT enabled).
#pragma config BOREN = OFF		// Brown-out Detect Enable bit (BOD disabled).
#pragma config LVP   = OFF  	// Low-Voltage Programming Enable bit (RB4/PGM pin has digital I/O function, HV on MCLR must be used for programming).
#pragma config CPD   = OFF  	// Data EE Memory Code Protection bit (Data memory code protection off).
#pragma config CP    = OFF  	// Flash Program Memory Code Protection bit (Code protection off).

//Declaração de Constantes
#define LCDBus	PORTD			// Barramento onde o LCD está conectado.
#define RS 		PORTEbits.RE0	// Pino de Ativação dos Modos Comando/Dado.
#define EN 		PORTEbits.RE1	// Pino para a Efetivação (Pulso Clock) do Comando/Dado passado ao LCD.

int segundos = 0, minutos = 0, horas = 0;
int milissegundos = 0;
int tempoSegurandoPrimeiroBotaoMili = 0;
int tempoSegurandoSegundoBotaoMili = 0;
int flagB0 = 0, flagB1 = 0;
char textoNaTela[9];

//-----------------------------------------------------------------------------
void LCD_Cursor(unsigned char Row, unsigned char Col)
{
	RS = 0; // Envia nível baixo para o pino RS.
	
	if (Row == 0)
	{
		LCDBus = 0x80 + Col; 
	}
	else
	{
		LCDBus = 0xC0 + Col;
	}	

	// Pulso para o pino EN do Display.
	EN = 1;	// Envia nível alto para o pino EN.

	__delay_us(40);

	EN = 0;	// Envia nível baixo para o pino EN.
}

//-----------------------------------------------------------------------------
void LCD_WriteCmd(unsigned char Byte)
{
	RS = 0; // Envia nível baixo para o pino RS.

	LCDBus = Byte;

	// Pulso para o pino EN do Display.
	EN = 1;	// Envia nível alto para o pino EN.

	__delay_us(40);

	EN = 0;	// Envia nível baixo para o pino EN.
}

//-----------------------------------------------------------------------------
void LCD_WriteData(unsigned char Byte)
{	
	RS = 1;				// Ativação do pino RS para envio de dados.

	LCDBus = Byte;		// Atribuição do Byte para o barramento do LCD.

	EN = 1;				// Envia nível alto para o pino EN do Display.

	__delay_us(40);		// Tempo necessário para efetivação do comando/dado.

	EN = 0;				// Envia nível baixo para o pino EN do Display.
}

//-----------------------------------------------------------------------------
void LCD_WriteString(const char *Str)
{
	while(*Str != '\0')			// Envio da string para o LCD.
  	{
    	LCD_WriteData(*Str);	// Envio da string byte a byte.
      	Str++;					// Incrmento da posição do ponteiro.
  	}
}

//-----------------------------------------------------------------------------
void LCD_Clear()
{
	LCD_WriteCmd(0x01); // Comando para limpar o display.

	__delay_ms(2); 

	LCD_WriteCmd(0x0C); // Comando para o controle da visualização dos caracteres no Display e do Cursor.

	__delay_us(40); 

	LCD_WriteCmd(0x06); // Modo de Operação. Deslocamento automático do cursor para a direita.

	__delay_us(40);
}

//-----------------------------------------------------------------------------
void LCD_Init()
{
	// Configuração necessaria para o PORTE como saída digital (conexão física na placa).
	ADCON1bits.PCFG3 = 0;
	ADCON1bits.PCFG2 = 1;
	ADCON1bits.PCFG1 = 0;
	ADCON1bits.PCFG0 = 0;

	__delay_ms(15);

	LCD_WriteCmd(0x30); 	// Comando de inicialização do display.
	__delay_ms(4); 

	LCD_WriteCmd(0x30); 	// Comando de inicialização do display.
	__delay_us(100); 

	LCD_WriteCmd(0x30); 	// Comando de inicialização do display.
	__delay_us(40); 

	LCD_WriteCmd(0x38); 	// Comando para configurar o display para 8 vias, duas linhas e matriz de 7x5.
	__delay_us(40); 

	LCD_WriteCmd(0x01); 	// Comando para limpar o display.
	__delay_ms(2); 

	LCD_WriteCmd(0x0C);		// Comando para o controle da visualização dos caracteres no Display e do Cursor.
	__delay_us(40); 

	LCD_WriteCmd(0x06); 	// Modo de Operação. Deslocamento automático do cursor para a direita.
	__delay_us(40); 
}

void adicionaTempoSegurandoPrimeiroBotao() {
	if (PORTBbits.RB0 == 0 && flagB0) {
		tempoSegurandoPrimeiroBotaoMili++;
		return;
	}
	
	tempoSegurandoPrimeiroBotaoMili = 0;
}

void adicionaTempoSegurandoSegundoBotao() {
	if (PORTBbits.RB1 == 0 && flagB1) {
		tempoSegurandoSegundoBotaoMili++;
		return;
	}
	tempoSegurandoSegundoBotaoMili = 0;
}

void interrupt ISR()
{
	TMR0=5;
	milissegundos++;
	INTCONbits.TMR0IF=0;
	
	adicionaTempoSegurandoPrimeiroBotao();
	adicionaTempoSegurandoSegundoBotao();
	
	if(milissegundos != 1000) {
	    return;
	}
	
	milissegundos = 0;
    segundos++;
    
    if(segundos != 60) {
	    return;
    }
    
    segundos=0;
    minutos++;
    
    if(minutos != 60) {
    	return;
    }
    
    segundos=0;
    minutos=0;
    horas++;
    
	if(horas != 24) {
        return;
    }
    
    segundos=0;
    minutos=0;
    horas=0;
}

void main()
{
	TRISB	= 0b00000011;
    PORTB	= 0b00000000;
    TRISC	= 0b00000000;
    PORTC	= 0b00000000;
    TRISD	= 0b00000000;
    PORTD	= 0b00000000;
    TRISE	= 0b00000000;
    PORTE	= 0b00000000;

	INTCONbits.GIE = 1;
	INTCONbits.PEIE = 1;
	INTCONbits.TMR0IE = 1;
	//Timer0 Registers Prescaler= 32 - TMR0 Preset = 112 - Freq = 1000.00 Hz - Period = 0.001000 seconds
	OPTION_REGbits.T0CS = 0;  // bit 5  TMR0 Clock Source Select bit...0 = Internal Clock (CLKO) 1 = Transition on T0CKI pin
	OPTION_REGbits.T0SE = 0;  // bit 4 TMR0 Source Edge Select bit 0 = low/high 1 = high/low
	OPTION_REGbits.PSA = 0;   // bit 3  Prescaler Assignment bit...0 = Prescaler is assigned to the Timer0
	OPTION_REGbits.PS2 = 1;   // bits 2-0  PS2:PS0: Prescaler Rate Select bits
	OPTION_REGbits.PS1 = 0;
	OPTION_REGbits.PS0 = 0;
	TMR0 = 112;             // preset for timer register


	
	segundos = 0;
	minutos = 0;
	horas = 0;
	textoNaTela[0] = '0';
	textoNaTela[1] = '0';
	textoNaTela[2] = ':';
	textoNaTela[3] = '0';
	textoNaTela[4] = '0';
	textoNaTela[5] = ':';
	textoNaTela[6] = '0';
	textoNaTela[7] = '0';
	textoNaTela[8] = '\0';
	
	// Rotinas do LCD.
	LCD_Init();								// Inicialização do LCD.
	LCD_Clear();
	LCD_Cursor(0,0);						// Posicionamento da string na linha 0 e coluna 0;
	
	while(1) {
		
		textoNaTela[0] = horas/10 + '0';
		textoNaTela[1] = horas%10 + '0';
		
		textoNaTela[3] = minutos/10 + '0';
		textoNaTela[4] = minutos%10 + '0';
		
		textoNaTela[6] = segundos/10 + '0';
		textoNaTela[7] = segundos%10 + '0';
		
		LCD_Cursor(0,0);
		LCD_WriteString(textoNaTela);
		
		if(PORTBbits.RB0) flagB0 = 1;
		if(PORTBbits.RB1) flagB1 = 1;
		
		if (PORTBbits.RB0 == 0 && flagB0) {
	    	flagB0 = 0;
	    	
	        segundos++;
	        
	        if(segundos >= 60) {
	    		segundos=0;
		    } 
		}
		
		if (PORTBbits.RB1 == 0 && flagB1) {
			flagB1 = 0;
			minutos++;
			
			if (minutos>=60) {
				minutos=0;
			}
		}
	}
}
