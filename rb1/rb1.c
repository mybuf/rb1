#include "HT48R002.h"

void main()
{
	_intc0 = 0x05 ; //��ʱ��1 �� 
	_tmr0c = 0x87 ; 
	_tmr0  = 256-250 ;

	while(1)
	{
		
		
	}
	
}


// ��ʱ������
#pragma vector ISR_Timer @ 0x08
void ISR_Timer(void)
{
	
	
	
}