# odd.asm
# MIPS program to check if a number m is odd using repeated subtraction
# Assumes m is stored in memory. Result stored at $t5

.data
m:      .word 5   # change the number based on what we want to test        
result: .word 0

.text
.globl main

main:
    # Load m into $t0
    lw $t0, m            # $t0 = m
    li $t1, 2            # $t1 = divisor (2)

    # Set up loop variables
    move $t2, $t0        # $t2 = copy of m
    li $t3, 0            # $t3 = quotient 

division_loop:
    blt $t2, $t1, done_division  # if x < y, break
    sub $t2, $t2, $t1            # x = x - y
    addi $t3, $t3, 1             # increment quotient
    j division_loop

done_division:
    # $t2 now holds remainder (m % 2)
    # If remainder == 0, m is even → store 0
    # If remainder == 1, m is odd → store 1

    li $t4, 0
    beq $t2, $zero, store_even   # If remainder == 0 → even
    li $t4, 1                    # remainder != 0 → odd

store_even:
    sw $t4, result               # store result (1 if odd, 0 if even)
    move $t5, $t4                
