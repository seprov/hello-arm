# hello-arm
Some basic Arm assembly programming on Raspberry Pi

## first.s

Compile:

```
as -o first.o first.s
gcc -o first first.o
```
Run:
```
./first
```
Output: (nothing)

## collatz.s
Compile:
```
as -o collatz.o collatz.s
gcc -o collatz collatz.o
```
Run:
```
./collatz ; echo $?
```
Output: `25`[^1]

## hello-world.s
Compile
```
as -o hello-world.o hello-world.s
gcc -o hello-world hello-world.o
```
Run:
```
./hello-world
```
Output: `Hello, world!`

[^1]: This is the number of iterations to get from *n*, which by default is 100, to 1 via the Collatz function. See [Wikipedia](https://en.wikipedia.org/wiki/Collatz_conjecture) for more details.

