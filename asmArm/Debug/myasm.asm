/*
 
backendSection1.asm
rte/offset mode
	Asp3o1$X
	OS time:	16:51:47
	OS date:	11/01/22
 
*/
/* after CLEANER */
//* statement number Node_1 */
/*  */
/* PROLOG_VOID_0_NONE_CODE_N0DE_3 */
DebugLabel0:
/* start prolog */
	MOV	IP,SP
	STMFD	SP!,{FP,IP,LR,PC}
	SUB	FP,IP,#0x4
/* allocate space for virtual regs */
	SUB	SP,SP,#0x10
/* allocate also space for anim temp variables */
 	LDR	R0,=0x18
	SUB	SP,SP,R0
GLOBAL_LABEL0:
	MOV	R0,#0x0
	MOV	R1,#0x0
 	LDR	R2,=0x18
Node_2_loop:
	CMP	R1,R2
	STRNE	R0,[SP,R1]
	ADDNE	R1,R1,#0x4
	BNE	Node_2_loop
/* END Stack cleaning */
/* end prologue */
/* for testing with gnu arm simulator */
/* save some registers */
	STMFD	SP!,{R4-R10}
/* statement number Node_3 */
DebugLabel1:
/* statement number Node_5 */
/*  */
/* ASS_EBOOL_0_NONE_CODE_N0DE */
/*  */
/* AND_BOOL_0_NONE_ACC_N0DE_1 */
/*  */
/* OR_BOOL_0_NONE_ACC_N0DE_2 */
/*  */
/* ASS_BOOL_0_NONE_CODE_N0DE */
/*  */
/* SYMBOL_EBOOL_0_VAL_ACC_N0DE_1 */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_2 */
/* start */
/* start */
	LDRB R0,[R8,#0xa] /* start */
/*  */
/* SYMBOL_BOOL_0_VAL_STORE_N0DE_1 */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_2 */
	AND  R0,R0,#0x01
/* $LINK5 */
/* $LINK5 */
	STRB R0,[FP,#-0x20] /* $LINK5 */
/*  */
/* push the current result */
	STR R0,[SP,#-0x4]!
/*  */
/* ASS_BOOL_0_NONE_CODE_N0DE */
/*  */
/* SYMBOL_EBOOL_0_VAL_ACC_N0DE_1 */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_2 */
/* set the selector if needed */
/* setSwap */
/* set the swap selector */
	LDRH R5,=0x28000168
	LDR R7,[R5]
/* endSetSwap */
/* cmd_motor */
/* cmd_motor */
	LDRB R0,[R7,#0x14] /* cmd_motor */
/*  */
/* SYMBOL_BOOL_0_VAL_STORE_N0DE_1 */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_2 */
	AND  R0,R0,#0x01
/* $LINK6 */
/* $LINK6 */
	STRB R0,[FP,#-0x24] /* $LINK6 */
/*  */
	LDR R1,[SP],#4
	ORR R0,R0,R1
/* set the animation var */
	LDR R4,=-0x28
	STR R0,[R11,R4]
/*  */
/* SYMBOL_BOOL_0_VAL_ACC_N0DE_5 */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_2 */
/* set the selector if needed */
/* setSwap */
/* set the swap selector */
	LDRH R5,=0x28000190
	LDR R7,[R5]
/* endSetSwap */
/* Q */
/* Q */
	LDRB R1,[R7,#0xc] /* Q */
	AND R0,R0,R1
/* set the animation var */
	LDR R4,=-0x2c
	STR R0,[R11,R4]
/*  */
/* SYMBOL_EBOOL_0_VAL_STORE_N0DE */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_2 */
/* set the selector if needed */
/* setSwap */
/* set the swap selector */
	LDRH R5,=0x28000168
	LDR R7,[R5]
/* endSetSwap */
/* get the physical address */
	LDR R3,=0x14
	ADD R1,R7,R3
/* call the function */
	BL	_storeFbit
/* set the animation var */
	LDR R4,=-0x30
	STR R0,[R11,R4]
/*  */
/* statement number Node_17 */
DebugLabel2:
/* statement number Node_19 */
/* statement number Node_20 */
/*  */
/* ASS_BOOL_0_NONE_CODE_N0DE */
/*  */
/* SYMBOL_EBOOL_0_VAL_ACC_N0DE_1 */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_2 */
/* stop */
/* stop */
	LDRB R0,[R8,#0xb] /* stop */
/* complement the accumulator (not) */
	MVN R0,R0
/*  */
/* SYMBOL_BOOL_0_VAL_STORE_N0DE_1 */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_2 */
	AND  R0,R0,#0x01
/* $LINK11 */
/* $LINK11 */
	STRB R0,[FP,#-0x34] /* $LINK11 */
/*  */
/* statement number Node_24 */
/* statement number Node_25 */
/*  */
/* ASS_BOOL_0_NONE_CODE_N0DE */
/*  */
/* SYMBOL_BOOL_0_VAL_ACC_N0DE_2 */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_2 */
/* $LINK11 */
/* $LINK11 */
	LDRB R0,[FP,#-0x34] /* $LINK11 */
/*  */
/* SYMBOL_BOOL_0_VAL_STORE_N0DE_1 */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_2 */
/* set the selector if needed */
/* setSwap */
/* set the swap selector */
	LDRH R5,=0x28000190
	LDR R7,[R5]
/* endSetSwap */
	AND  R0,R0,#0x01
/* IN */
/* IN */
	STRB R0,[R7,#0x5] /* IN */
/*  */
/*  */
/* ASS_TIME_4_NONE_ACC_NODE_1 */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_4 */
/* preset_time */
/* preset_time */
	LDR R0,[R8,#0x4] /* preset_time */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_4 */
/* set the selector if needed */
/* setSwap */
/* set the swap selector */
;	LDRH R5,=0x28000190
;	LDR R7,[R5]
/* endSetSwap */
/* PT */
/* PT */
	STR R0,[R7,#0x8] /* PT */
/*  */
/* Efb_N0de c0de generation */
/* clear previous stack usage #0x0 */
/* statement number Node_0_1578485142 */
/* */
/* TOS_EA_VOID_NO_ARRAY_N0DE_1 */
/* push rte 0ffset */
/* var stop_motor */
/* */
/* ACC_EA_VOID_NO_ARRAY_N0DE_7 */
/* load rte 0ffset */
/* var stop_motor */
	LDR	R0,=0x32
	LDR	R1,=0x0
	STR R1,[SP,#-0x4]!
	STR R0,[SP,#-0x4]!
/* load the offset in R1 and rte in R0 */
	LDR R0,=_TOF_RTE
	LDR R1,=_TOF_OFFSET
	BL	_logical2Physical
	MOV R7,R0
/* copy the virtual registers in r0-r1 */
	LDMIA SP!,{R0-R1}
/* simulate a branch and link instruction */
	MOV LR,PC
	MOV PC,R7
/* statement number Node_35 */
/*  */
/* ASS_TIME_4_NONE_ACC_NODE_1 */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_4 */
/* set the selector if needed */
/* setSwap */
/* set the swap selector */
;	LDRH R5,=0x28000190
	LDR R7,[R5]
/* endSetSwap */
/* ET */
/* ET */
	LDR R0,[R7,#0x10] /* ET */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_4 */
/* Elapse_time */
/* Elapse_time */
	STR R0,[R8,#0x0] /* Elapse_time */
/*  */
/*  */
/* EPILOG_VOID_0_NONE_CODE_N0DE_7 */
/* clear previous stack usage #0x2 */
/*	Clear accumulator */
/*	Clear accumulator */
	MOV R1,#0x00 /*	Clear accumulator */
end_section:
/* tree for animation link */
/* */
/* SYMBOL_INT_2_VAL_ACC_N0DE */
/* */
/* EA_CODE_VOID_NO_ARRAY_N0DE_2 */
/* $TV_practice_1 */
/* $TV_practice_1 */
	LDRH R0,[R8,#0x8] /* $TV_practice_1 */
/* set in the upper accu part */
/* set in the upper accu part */
	MOV R0,R0,LSL #0x10   /* set in the upper accu part */
	CMP R0,R1
/* if accw == 0 skip anim */
	BEQ	end_animation
/* here we call the animation service */
 	MOV R0,R0,LSR #0x10
/* push the physical stack address */
	MOVNE R1,FP
/* push the selector associated for stack */
	MOVNE R2,#0x00
/* get the system call number for link animation */
	MOVNE R3,#0x28
/* call the s_link_anim system function */
/* all the parameters are in the registers */
	LDR	IP,=s_LinkAnim
	MOV	LR,PC
	MOV	PC,IP
end_animation:
/* for testing with gnu arm simulator */
/* restore some registers */
	LDMFD SP!,{R4-R10}
DebugLabel3:
/* epilog section for a dfb */
	LDMEA FP,{FP,SP,PC}
_setErrorS_SW:
/* ------------------------ */
/* R0 contains the bit to set */
/* R1 contains the value to set in sw125 */
	STR   R1,[SP,#-0x4]!
/* the bit number to be set %s18 */
	MOV	R1,#0x01
	LDR	R2,=s_wr_sysbit
/* simulate a branch and link */
/* call the function */
	STR   LR,[SP,#-0x4]!
	MOV   LR,PC
	MOV   PC,R2
	LDR   LR,[SP],#4
/* ------------------------ */
/* simulate a call function */
/* the word number to be set sw125 */
	LDR	R0,=0x7d
	LDR   R1,[SP],#4
	LDR	R2,=s_wr_sysword
/* simulate a branch and link */
/* call the function */
	STR   LR,[SP,#-0x4]!
	MOV  LR,PC
	MOV   PC,R2
	LDR   LR,[SP],#4
/* ------------------------ */
	MOV	PC,LR
_storeFbit:
/* R0 contains val to save */
/* R1 contains the physical address of the ebool */
/* get the ebool */
/* R3 value of the ebool F H D */
	LDRB	R3,[R1]
/* Dn in R0 */
	AND	R0,R0,#0x01
/* Dn-1 in R2 */
	AND	R2,R3,#0x01
	AND	R3,R3,#0xFC
/* IF  is FORCABLE -> flg Z */
	TST	R3,#0x04
/* THEN */
/* use Dn-1 instead of Dn */
	ORRNE	R3,R3,R2
/* ELSE */
/* use Dn here */
	ORREQ	R3,R3,R0
/* ENDID */
/* hystory = (dn-1 >> 1) */
	ORR	R3,R3,R2,ASL #0x01
/* save the extended boolean */
	STRB	R3,[R1]
	MOV	PC,LR
_logical2Physical:
/* get the physical address from the logical one */
/* parameters are stored in R0(rte) R1(offset)   */
/* return physical address in R0 */
/* R0 <= [@PAT + 8*/
	LDR	R3,=0x28000000
	ADD	R3,R3,R0,ASL #0x03
	LDR 	R3,[R3]
	ADD	R0,R3,R1
	MOV	PC,LR
_copyByteArray:
/* now copy src array to dest array */
/* describe in the stack            */
/* determine the min length */
	STMFD	SP!,{R4,R5}
	LDR	R0,[SP,#0x10]
	LDR	R1,[SP,#0x1c]
	CMP	R0,R1
/* dst is shorter_equal than src */
	MOVLE	R5,R0
/* dst is longer than src */
	MOVGT	R5,R1
/* convert the size in byte */
	MUL	R4,R5,R3
/* get the physical address for the two arrays */
/* dst str physical address */
	LDR 	R1,[SP,#0x08]
	MOV 	R1,R1,LSL #0x03
/* get the selector from rte */
	ADD 	R1,R1,#0x28000000
	LDR	R1,[R1]
	LDR	R2,[SP,#0x0c]
/* add the 0ffset */
/* add the 0ffset */
	ADD 	R1,R1,R2 		/* add the 0ffset */
/* src str physical address */
	LDR 	R2,[SP,#0x14]
	MOV 	R2,R2,LSL #0x03
/* get the selector from rte */
	ADD 	R2,R2,#0x28000000
	LDR	R2,[R2]
	LDR	R3,[SP,#0x18]
/* add the 0ffset */
/* add the 0ffset */
	ADD 	R2,R2,R3 		/* add the 0ffset */
copyByteArray_loop:
/* while counter >= 0 */
	CMP 	R4,#0x00
	BEQ	endByteArray_loop
	LDRB 	R0,[R2]
	STRB	R0,[R1]
/* counter-- */
	SUB 	R4,R4,#0x01
/* increment src and dst */
	ADD	R1,R1,#0x01
	ADD	R2,R2,#0x01
	B	copyByteArray_loop
endByteArray_loop:
/* clean the stack */
	LDMFD	SP!,{R4,R5}
	ADD	SP,SP,#0x18
	MOV	PC,LR
_copyString:
/* start prolog */
	MOV	IP,SP
	STMFD	SP!,{FP,IP,LR,PC}
	SUB	FP,IP,#0x4
	STMFD	SP!,{R5-R7}
/* first the destination is filled with 0 */
/* get the dst length */
/* get the dst length */
	LDR 	R5,[FP,#0x0C] /* get the dst length */
/* get the dst rte */
/* get the dst rte */
	LDR 	R7,[FP,#0x04] /* get the dst rte */
 	MOV 	R7,R7,LSL #0x03
/* get the selector from rte */
	ADD 	R7,R7,#0x28000000
	LDR	R7,[R7,#0x00]
/* get the dst 0ffset */
/* get the dst 0ffset */
	LDR 	R6,[FP,#0x08] /* get the dst 0ffset */
	ADD   R7,R7,R6
	MOV 	R0,#0x00
clrString_loop:
	CMP 	R5,#0x01
	STRPLB 	R0,[R7]
	SUBPL 	R5,R5,#0x01
	ADDPL 	R7,R7,#0x01
	BPL	clrString_loop
/* now determine the min length */
/* get the dest lenght */
	LDR	R0,[FP,#0x0C]
/* get the src lenght */
	LDR	R1,[FP,#0x18]
	CMP	R0,R1
	BGE	copyString_no_error
/* ------------------------ */
/* simulate a call function */
/* the bit number to be set %s15 */
	MOV	R0,#0x0f
	MOV	R1,#0x01
	LDR	R2,=s_wr_sysbit
/* simulate a branch and link */
/* call the function */
	STR   LR,[SP,#-0x4]!
	MOV   LR,PC
	MOV   PC,R2
	LDR   LR,[SP],#4
/* ------------------------ */
/* simulate a call function */
/* the word number to be set sw125 */
	LDR	R0,=0x7d
	LDR	R1,=0xdef1
	LDR	R2,=s_wr_sysword
/* simulate a branch and link */
/* call the function */
	STR   LR,[SP,#-0x4]!
	MOV   LR,PC
	MOV   PC,R2
	LDR   LR,[SP],#4
/* ------------------------ */
copyString_no_error:
/* now determine the min length */
/* get the dest lenght */
	LDR	R0,[FP,#0x0C]
/* get the src lenght */
	LDR	R1,[FP,#0x18]
	CMP	R0,R1
/* dst is shorter_equal than src */
/* dst is shorter_equal than src */
	MOVLE	R5,R0	/* dst is shorter_equal than src */
/* dst is longer than src */
/* dst is longer than src */
	MOVGT	R5,R1	/* dst is longer than src */
/* get the physical address for the two strings */
/* dst str physical address */
	LDR 	R1,[FP,#0x04]
	MOV 	R1,R1,LSL #0x03
/* get the selector from rte */
	ADD 	R1,R1,#0x28000000
	LDR   R1,[R1,#0x00]
	LDR	R2,[FP,#0x08]
/* add the 0ffset */
/* add the 0ffset */
	ADD 	R1,R1,R2 		/* add the 0ffset */
/* src str physical address */
	LDR 	R2,[FP,#0x10]
	MOV 	R2,R2,LSL #0x03
/* get the selector from rte */
	ADD 	R2,R2,#0x28000000
	LDR   R2,[R2,#0x00]
	LDR	R3,[FP,#0x14]
/* add the 0ffset */
/* add the 0ffset */
	ADD 	R2,R2,R3 		/* add the 0ffset */
copyString_loop:
/* while counter >= 0 */
	CMP 	R5,#0x00
	BEQ	copyString_end_loop
	LDRB 	R0,[R2]
	STRB	R0,[R1]
/* counter-- */
	SUB 	R5,R5,#0x01
/* increment src and dst */
	ADD	R1,R1,#0x01
	ADD	R2,R2,#0x01
	B	copyString_loop
copyString_end_loop:
/* clean the stack */
	LDMFD	SP!,{R5-R7}
/* epilog section */
	LDMEA FP,{FP,SP,PC}
/* Function set inside the BE lib */
_safety_xchg_fct:
/* start prolog */
	MOV	IP,SP
	STMFD	SP!,{FP,IP,LR,PC}
	SUB	FP,IP,#0x4
/* allocate space for virtual regs */
	SUB	SP,SP,#0x10
/* allocate also space for temp variables */
	LDR	R3,=0x4
	SUB	SP,SP,R3
/* save some registers */
	STMFD	SP!,{R4-R10}
/* get the array to be processed */
/* retreive the logical address pass as parameter */
/* get the physical address of the array to manage */
/* passing parameter convention */
/* R0 rte of array */
/* R1 offset of array */
	BL	_logical2Physical
/* R7 is the array pointer */
	MOV R7,R0
/* get the number of items to process
	/*/
	lDR R5,[R7]
	CMP R5,#0x00
	BEQ	_endSafetyXchgFct
/* process the array */
/* skip to the first item line */
_generic_loop:
	ADD	R7,R7,#0x018
/* here the item is processed */
/* calculate the physical address of the source and the destination */
/* source address */
	LDR R0,[R7,#0x04]
	LDR R1,[R7,#0x08]
	BL	_logical2Physical
	MOV	R8,R0
/* destination address */
	LDR R0,[R7,#0x0c]
	LDR R1,[R7,#0x10]
	BL	_logical2Physical
	MOV	R9,R0
/* get the copy size for the current item */
	LDR R1,[R7]
/* scalar or vector variable */
	LDR R2,[R7,#0x14]
	LDR R3,=0x8000
	CMP R2,R3
	BEQ	_memcpy_n
/*----------*/
_memcpy1:
/* copy a byte 8bits data */
/* memcpy1 */
/* memcpy1 */
	CMP R1,#0x01 /* memcpy1 */
	BNE	_memcpy2
	LDRB R0,[R8]
	STRB R0,[R9]
	B	_generic_endloop
/*----------*/
_memcpy2:
/* copy an halfword 16bits data */
/* memcpy2 */
/* memcpy2 */
	CMP R1,#0x02 /* memcpy2 */
	BNE	_memcpy4
_nbloop_memcpy2:
	LDRH R0,[R8]
	STRH R0,[R9]
	B	_generic_endloop
/*----------*/
_memcpy4:
/* copy a word 32bits data */
/* memcpy8 */
/* memcpy8 */
	CMP R1,#0x04 /* memcpy8 */
	BNE	_memcpy_n
	LDR R0,[R8]
	STR R0,[R9]
	B	_generic_endloop
/*----------*/
_memcpy_n:
	MOV R2,R1
	MOV R1,#0x00
_memcpy_loop:
/* memcpy8 */
/* memcpy8 */
	CMP R2,#0x00 /* memcpy8 */
	BEQ	_generic_endloop
	LDRB R0,[R8,R1]
	STRB R0,[R9,R1]
	ADD R1,R1,#0x01
	SUB R2,R2,#0x01
	B	_memcpy_loop
/*===========================================================*/
/* end loop test */
_generic_endloop:
	SUB	R5,R5,#0x01
	CMP	R5,#0x00
	BNE	_generic_loop
/* epilog function */
_endSafetyXchgFct:
/* epilog section */
/* restore some registers */
	LDMFD SP!,{R4-R10}
	LDMEA FP,{FP,SP,PC}

