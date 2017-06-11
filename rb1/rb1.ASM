#pragma debug scope 1 1
#line 4 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
__extresb EQU [024H]
__wdtc EQU [01cH]
__ctrl1 EQU [01bH]
__pawu EQU [013H]
__papu EQU [012H]
__pac EQU [011H]
__pa EQU [010H]
__tmr0c EQU [0dH]
__tmr0 EQU [0cH]
__intc0 EQU [0bH]
__status EQU [0aH]
__wdts EQU [09H]
__tblh EQU [08H]
__tblp EQU [07H]
__pcl EQU [06H]
__acc EQU [05H]
__mp1 EQU [03H]
__iar1 EQU [02H]
__mp0 EQU [01H]
__iar0 EQU [00H]
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 2 1 ; 6 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
#line 6 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
MOV A,02dh
MOV __wdtc,A
#line 8 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
MOV A,05h
MOV __intc0,A
#line 9 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
MOV A,087h
MOV __tmr0c,A
#line 10 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
MOV A,06h
MOV __tmr0,A
#line 10 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
JMP L3
L2:
#pragma debug scope 3 2 ; 14 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
#line 14 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
CLR WDT
L3:
#line 12 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
#pragma debug scope 2 1 ; 12 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
JMP L2
L1:
#line 19 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
JMP $
_main ENDP
#line 25 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
@@ISR_Timer .SECTION AT 08H 'CODE'
RETI
#line 3 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
#line 3 "E:\MYWK\wk\rb1\software\rb1\rb1\rb1.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
