//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

#include "stdio.h"


void main(void)
{
	// M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
	/*
	UART (Digital Comm - UART) блок e конфигуриран за 115200 bps като такта му е от VC3 = SysClock/26 =24MHz = 923076 Hz
	115200 * 8 = 921600
	 
	PSoC изпраща периодично ASCII низ представящ стойността на брояч, който всеки път нараства с единица. 
	При получен символ ‘h’ по серииния интерфейс, броячът започва да се показва в шестнайсеттичен вид. 
	При ‘d’ стойността се праща отново в десетичен вид. При ‘с’ броячът се нулира.
	*/
	
	unsigned char counter = 0;
	enum Mode { MODE_HEX=0, MODE_DEC=1 } mode;
	char str[20];
	unsigned char status;
	unsigned char c;
	long int i;
	
	mode = MODE_DEC;
	UART_Start(UART_PARITY_NONE);
	
	while(1)
	{
		counter++;
		//Подготвя се низа за изпращане
		if (mode==MODE_DEC) csprintf(str, "C=%d \r\n",      (int)counter);
		else 				csprintf(str, "C=0x%x \r\n", (int )counter);
		//Изчаква се буфера да е празен
		do {
			status = UART_bReadTxStatus();
		}while ( (~status) & UART_TX_BUFFER_EMPTY );
		//Низа се праща по UART
		UART_PutString(str);
		
		//Някакво закъснение
		for (i=0 ; i!=150000 ; i++);
		
		//Проверка за приет символ
		c = UART_cReadChar(); //Ако няма приет символ функцията връща 0 веднага
		switch (c)
		{
			case 'd':
			case 'D':
				mode = MODE_DEC;
				UART_CPutString("mode = DEC \r\n");
				break;
			case 'h':
			case 'H':				
				mode = MODE_HEX;
				UART_CPutString("mode = HEX \r\n");
				break;;
			case 'c':
			case 'C':
				UART_CPutString("clear counter \r\n");
				counter=0;
				break;
			default :
				break;;
		}
	}
}
