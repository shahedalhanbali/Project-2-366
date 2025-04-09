# ECE 366: Project 2 
![image](https://github.com/user-attachments/assets/f12a3dd0-d4a3-4b33-b449-e192764d434c)

## Team Members
- Qudsia Sultana (657855210)
- Shahed Alhanbali (670025395)
- Cindy Jurado (653416500)

# Progress Report 1 – Part (a): Fibonacci in MIPS

## Individual Contributions
- Qudsia Sultana:  
  - Helped write and test the Fibonacci function in MIPS.  
  - Implemented the Fibonacci loop in Part (c).  
  - Connected Fibonacci output to the Odd logic and handled integration.  
  - Managed memory and register result tracking for visibility.

- Shahed Alhanbali:  
  - Worked on the iterative logic for Fibonacci in MIPS.  
  - Implemented the modulo-by-repeated-subtraction logic in Part (b).  
  - Helped integrate Fibonacci and Odd logic in Part (c).  
  - Verified large input test cases and ensured control logic worked without overflow.

- Cindy Jurado:  
  - Assisted with debugging and testing Fibonacci and Odd functions.  
  - Wrote the initial README drafts and updated instructions.  
  - Validated memory storage and helped test corner cases in all parts.  
  - Checked register and memory values during Part (b) and (c) runs.

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

# Progress Report 2 – Part (b): Odd(m) Function using Repeated Subtraction

This part of the project implements the `Odd(m)` function using the division-by-repeated-subtraction approach (Figure 3).

## How It Works
- Loads `m` from memory.
- Repeatedly subtracts 2 until `m < 2`.
- The remainder is stored in a register and used to determine if `m` is odd or even.
- The final result (1 for odd, 0 for even) is stored in memory and in `$t5` for easy testing.

## Run Instructions
1. Open the file `odd.asm` in the MARS MIPS Simulator.
2. Assemble the code (click the gear icon).
3. Run the code (green play button or press F5).
4. Modify the value of `m` in the `.data` section to test different cases.
5. After running:
   - Check register `$t5` for the result.
   - Or check memory under the label `result` (typically located at `0x10010004` in the Data Segment).

## Result:
- `1` = Odd  
- `0` = Even

## Sample Output

| Input (m) | Output (result) |
|-----------|-----------------|
| 5         | 1 (odd)         |
| 8         | 0 (even)        |
| 11        | 1 (odd)         |
| 4         | 0 (even)        |

# Progress Report 3 – Part (c): IsFibonacciOdd(n)

This part of the project implements the function `IsFibonacciOdd(n)`, which first calculates the nth Fibonacci number and then checks whether that number is odd using repeated subtraction.

## How It Works
- Computes Fibonacci(n) using the same loop as in Part (a).
- Passes the result to the Odd-check logic from Part (b).
- Determines if Fibonacci(n) is odd.
- The final result (1 for odd, 0 for even) is:
  - Stored in register `$t5`
  - Also saved in memory under the label `result` (viewable in Data Segment).

## Run Instructions
1. Open the file `is_fibonacci_odd.asm` in the MARS MIPS Simulator.
2. Assemble the code.
3. Modify the value of `n` in the `.data` section.
4. Run the code.
5.  After running:
   - Check register `$t5` for the result.
   - Or check memory under the label `result` (typically located at `0x10010004` in the Data Segment).

## Result:
- `1` = Odd  
- `0` = Even

## Sample Output

| Input (n) | Fibonacci (n) | Output (result) |
|-----------|-----------------|-----------------|
| 3         | 2        | 0 (even) |
| 5         | 5        | 1 (odd)  |
| 6        | 8         | 0 (even) |
| 7         | 13        | 1 (odd)  |
