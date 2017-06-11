#include "HT48R002.h"

uint counter = 0 ;
uchar p1ms_flg = 0 ;

#pragma vector ISR_Timer @ 0x08
void main()
{
	
	/* WDTC
		bit 7-6 wdt/timer close selected
			00 : Flirc
			01 : Fsys/4
			10 : Fsys
			11 : Fsys
		bit 5-0
			000000 : enable wdtc
			101101 : disenable wdtc
			other  : mcu reset
	*/
	_wdtc = 0x2d ;
	 
	 /* WDTS
	 	bit 2-0 wdt period bit
	 		000 : 2^8 / Fs
	 		001 : 2^9 / Fs
	 		...
	 		111 : 2^15 / Fs
	 */
	 
	_wdts = 0x07 ; //125ns 定时一次
	
	/*	INTC0
		bit5	TOF	timer0 中断请求标志位
		bit4	INTF	外部中断请求标志位
		bit2	TOE	timer0 中断使能
		bit1	INTE	外部中断使能
		bit0	EMI		总中断使能
	*/
	_intc0 = 0x05 ; //定时器1 打开 
	_tmr0c = 0x87 ; // 定时器 , 128分频
	_tmr0  = 256-8 ; // 125ns * 8 = 1us //定时1us
	counter = 0 ;
	p1ms_flg = 0 ;
	
	while(1)
	{
		_clrwdt() ;//
		if(p1ms_flg==1) { // 1ms 处理
			
			
			
			
			p1ms_flg = 0 ;
		}
	}
	
}


// 定时器函数
void ISR_Timer(void)
{
	_tmr0  = 256-8 ;
	counter++ ;
	if(counter>998) { // 1ms
		counter = 0 ;	
		p1ms_flg = 1 ;
	}
}
