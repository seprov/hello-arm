/* first.s */
/* my first Arm assembly program */
.global main		/* have to do this */

main:
  mov r0, #2		/* put imm 2 in r0 */
  bx lr			/* return */
