# fibonacci.asm
# Computes the n-th Fibonacci number (Fibonacci(n))
# Input: $a0 = n (set manually below)
# Output: $v0 = Fibonacci(n)

.text
.globl main
main:
    #################################################
    # SET THE VALUE OF n TO TEST HERE:
    addi $a0, $zero, 7      # <--- Change 7 to any value you want to test
    #################################################

    # If n <= 1, return n
    addi $t6, $zero, 1
    ble $a0, $t6, base_case

    # Initialize a = 0, b = 1, counter = n
    addi $t0, $zero, 0      # a = 0
    addi $t1, $zero, 1      # b = 1
    add $t2, $a0, $zero     # counter = n

fib_loop:
    subi $t2, $t2, 1        # counter--
    add $t3, $t1, $zero     # temp = b
    add $t1, $t0, $t1       # b = a + b
    add $t0, $t3, $zero     # a = temp
    addi $t6, $zero, 1
    bgt $t2, $t6, fib_loop  # loop while counter > 1

    add $v0, $t1, $zero     # result = b
    j done

base_case:
    add $v0, $a0, $zero     # result = n (when n <= 1)

done:
    nop                     # End of program
