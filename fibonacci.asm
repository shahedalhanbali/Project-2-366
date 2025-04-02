# fibonacci.asm
# Input: $a0 = n
# Output: $v0 = Fibonacci(n)

.text
.globl main

main:
    # If n <= 1, return n
    ble $a0, 1, base_case

    li $t0, 0          # a = 0
    li $t1, 1          # b = 1
    move $t2, $a0      # counter = n

loop:
    sub $t2, $t2, 1    # counter--
    move $t3, $t1      # temp = b
    add $t1, $t0, $t1  # b = a + b
    move $t0, $t3      # a = temp
    bgt $t2, 1, loop

    move $v0, $t1      # return b
    beq $zero, $zero, done

base_case:
    move $v0, $a0      # return n if n <= 1

done:
    nop
