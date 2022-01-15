/* collatz.s */
/* calculates a given collatz sequence  */
/* followed tutorials on cburch.com and microdigitaled.com */
.global main			/* have to do this */

main:
  	mov r0, #100		/* set n=100 in r0 */
  	mov r1, #0		/* set count to 0 in r1 */
again: 	add r1, r1, #1		/* increment count */
	ands ip, r0, #1		/* set Z flag to parity */
	beq even		/* if Z=0, or parity was even,  goto even */
	add r0, r0, r0, LSL #1	/* n*=3 */ 
	add r0, r0, #1		/* n+=1 */ 
	b again			/* loop */
even:	mov r0, r0, asr #1	/* n/=2 */
	subs ip, r0, #1		/* set Z flag to n==1 */
	bne again		/* if Z=1, or n!=1, loop */
halt:	mov r0, r1		/* put count in r0 */
	mov r7, #1		/* put 1 in r7 to terminate */
	svc 0			/* system call */
