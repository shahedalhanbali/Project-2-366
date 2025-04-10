# is_fibonacci_odd.asm
# Computes Fibonacci(n), checks if it's odd, and stores result
# Input: Set `n` in the line marked below
# Output: 1 (if Fibonacci(n) is odd), 0 (if even), stored in $t5 and memory

.data
    result: .word 0      # 1 if odd, 0 if even

.text
.globl main
main:
    #################################################
    # SET THE VALUE OF n TO TEST HERE:
    addi $a0, $zero, 12       # <--- Change this value to test another n
    #################################################

    # --- Fibonacci(n) ---
    addi $t6, $zero, 1
    ble $a0, $t6, fib_base

    addi $t0, $zero, 0       # a = 0
    addi $t1, $zero, 1       # b = 1
    add $t2, $a0, $zero      # counter = n

fib_loop:
    subi $t2, $t2, 1         # counter--
    add $t3, $t1, $zero      # temp = b
    add $t1, $t0, $t1        # b = a + b
    add $t0, $t3, $zero      # a = temp
    addi $t6, $zero, 1
    bgt $t2, $t6, fib_loop

    add $t6, $t1, $zero      # t6 = Fibonacci(n)
    j check_odd

fib_base:
    add $t6, $a0, $zero      # t6 = n (when n <= 1)

# --- Check if Fibonacci(n) is odd ---
check_odd:
    addi $t1, $zero, 2       # divisor = 2
    add $t2, $t6, $zero      # copy of Fibonacci(n)
    addi $t3, $zero, 0       # quotient = 0

mod_loop:
    blt $t2, $t1, mod_done
    sub $t2, $t2, $t1
    addi $t3, $t3, 1
    j mod_loop

mod_done:
    addi $t4, $zero, 0       # assume even
    bne $t2, $zero, is_odd
    j store

is_odd:
    addi $t4, $zero, 1       # remainder != 0 → odd

store:
    sw $t4, result
    add $t5, $t4, $zero      # also in register $t5 for easy check
