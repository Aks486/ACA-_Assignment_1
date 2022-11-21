;Find whether the 32-bit number is negative or a positive number
	AREA POSORNEGNUM,CODE,READONLY
		ENTRY
		
MAIN
	LDR R0,VALUE ;ASSIGN THE 32-BIT SIGNED NUMBER
	LDR R1,=1	
	ANDS R0,R1,LSL #31 ;CHECK THE 32ND BIT FOR THE SIGN
	BNE NEGATIVE	;IF 32ND BIT IS NON-ZERO THEN ITS NEGATIVE
	LDR R2,=0XFFFFFFFF ;IF ITS POSITIVE SET R2(FLAG) TO 1
	B STOP 	
NEGATIVE				
	LDR R2,=0	;IF ITS NEGATIVE SET R2(FLAG) TO 0
VALUE DCD -81113490		;VALUE TO CHECK POSITIVE OR NEGATIVE
STOP B STOP
	END