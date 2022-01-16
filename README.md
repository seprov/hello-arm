# hello-arm
Some basic Arm assembly programming on Raspberry Pi

## first.s

Compile:

```
as -g -o first.o first.s
gcc -o first first.o
```
Run:
```
./first
```
Output:
(nothing)

## collatz.s
Compile:
```
as -g -o collatz.o collatz.s
gcc -o collatz collatz.o
```
Run:
```
./collatz ; echo $?
```
Output:
`25`[^1]

[^1]: This is the number of iterations to get from *n*, which by default is 100, to 1 via the Collatz function. See [Wikipedia](https://en.wikipedia.org/wiki/Collatz_conjecture) for more details.

