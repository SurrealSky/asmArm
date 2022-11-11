MOV             R12, SP
STMFD           SP!, {R4-R12,LR,PC}
SUB             R11, R12, #4
MOV             R12, #0x5DC
MOV             R5, R2
CMP             R3, R12
MOV             R2, #0
MOV             R10, R3
MOV             R9, R1
SUB             SP, SP, #0x3C
STR             R0, [R11,#-0x58]
STR             R2, [R11,#-0x5c]
MOV             R0, #2	;AF_INET
MOV             R1, #1	;SOCK_STREAM
MOV             R2, #0	;protocol
ADD             LR, PC, #0
LDR             PC, =0x201ED5B8
SUBS            R6, R0, #0
SUB             R8, R11, #-0x48
MOV             R0, R8
MOV             R1, #0x10
ADD             LR, PC, #0
LDR             PC, =0x20253C1C
SUB             R0, R11, #-0x38
MOV             R1, #0x10
ADD             LR, PC, #0
LDR             PC, =0x20253C1C
MOV             R7, #0x10
MOV             R0, R10
STR             R7, [R11,#-0x54]
ADD             LR, PC, #0
LDR             PC, =0x2022EADC
STR             R0, [R11,#-0x5C]
AND             R3, R5, #0xFF
MOV             R4, R5,LSR#8
ORR             R4, R4, R3,LSL#8
MOV             R12, #0
MOV             R3, #2
MOV             R1, R8
MOV             R2, R7
MOV             R0, R6
STRH            R4, [R11,#-0x46]
STRB            R3, [R11,#-0x47]
STR             R12, [R11,#-0x44]
ADD             LR, PC, #0
LDR             PC, =0x201ED660
SUBS            R4, R0, #0
MOV             R0,R6
MOV             R1,#99
ADD             LR, PC, #0
LDR             PC, =0x201ED6FC
SUBS            R4, R0, #0