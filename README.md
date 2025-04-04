# ECE 366: Project 2 
![image](https://github.com/user-attachments/assets/f12a3dd0-d4a3-4b33-b449-e192764d434c)

## Team Members
- Qudsia Sultana (657855210)
- Shahed Alhanbali (670025395)
- Cindy Jurado (653416500)

# Progress Report 1 – Part (a): Fibonacci in MIPS

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

| Input (n) | Output (Fibonacci(n))- Decimal |
|-----------|------------------------|
| 0         | 0                      |
| 1         | 1                      |
| 5         | 5                      |
| 7         | 13                     |
| 10        | 55                     |

# Progress Report 2 – Part (b): Odd(m) Function using Repeated Subtraction

This part of the project implements the `Odd(m)` function using the division-by-repeated-subtraction approach (Figure 3). 

### How It Works
- Loads `m` from memory.
- Repeatedly subtracts 2 until `m < 2`.
- The remainder is stored in a register and used to determine if `m` is odd or even.
- The final result (1 for odd, 0 for even) is stored in memory and in `$t5` for easy testing.

### Run Instructions
1. Open the file `odd.asm` in the MARS MIPS Simulator.
2. Assemble the code (click the gear icon).
3. Run the code (green play button or press F5).
4. Modify the value of `m` in the `.data` section to test different cases.
5. After running:
   - Check register `$t5` for the result.
  
### Result:
- `1` = Odd
- `0` = Even


### Sample Output
| Input (m) | Output (result) |
|-----------|-----------------|
| 5         | 1 (odd)         |
| 8         | 0 (even)        |
| 11        | 1 (odd)         |
| 4         | 0 (even)        |
