# Progress Report 1 – Part (a): Fibonacci in MIPS
![image](https://github.com/user-attachments/assets/f12a3dd0-d4a3-4b33-b449-e192764d434c)

## Team Members
- Qudsia Sultana (657855210)
- Shahed Alhanbali (670025395)
- Cindy Jurado (653416500)

## Individual Contributions
- Qudsia Sultana: Helped write and test the Fibonacci function in MIPS, and contributed to the README instructions.
- Shahed Alhanbali: Worked on the iterative logic in MIPS and helped test the output for accuracy.
- Cindy Jurado: Assisted with debugging, wrote the README draft, and helped prepare files for submission.

## Description
This program calculates the nth Fibonacci number using MIPS assembly. 

## How to Run (MARS Simulator)
1. Open `fibonacci.asm` in the [MARS MIPS Simulator](http://courses.missouristate.edu/kenvollmar/mars/).
2. Set the value of `$a0` to the desired input `n`.  
   Example: `$a0 = 6`
3. Assemble and run the program.
4. The result (Fibonacci(n)) will be in register `$v0`.

## Sample Outputs

| Input (n) | Output (Fibonacci(n)) |
|-----------|------------------------|
| 0         | 0                      |
| 1         | 1                      |
| 5         | 5                      |
| 7         | 13                     |
| 10        | 55                     |
