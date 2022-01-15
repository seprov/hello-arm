/* hello-world.s */
/* a simplified version of the Arm Community blog tutorial */
.global main

main:
	ldr r0, =message 	/* load addr of message into r0 */
	bl printf		/* print the message */
	mov r7, #1		/* put 1 in r7 to terminate */
	svc 0			/* service call */
	
message:
	.asciz "Hello, world!\n"/* the message, apperntly null terminated*/
