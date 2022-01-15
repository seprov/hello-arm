/* collatz.s */
/* calculates a given collatz sequence  */
/* followed tutorials on cburch.com and microdigitaled.com */
.global main		/* have to do this */

main:
  	mov r0, #100		/* put imm 100 in r0 */
  	mov r1, #0
again: 	add r1, r1, #1
	ands ip, r0, #1
	beq even
	add r0, r0, r0, LSL #1
	add r0, r0, #1
	b again
even:	mov r0, r0, asr #1
	subs r7, r0, #1
	bne again
/* halt:	b halt */
halt:	mov r0, r1
	mov r7, #1
	svc 0
