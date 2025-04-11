# odd.asm 
# Checks if a number m is odd using repeated subtraction
# Input: Set m in the line below
# Output: $t5 = 1 if odd, 0 if even

.data
    result: .word 0

.text
.globl main
main:
    #################################################
    # SET VALUE OF m TO TEST HERE:
    addi $t0, $zero, 6      # <--- Change # to test another number
    #################################################

    addi $t1, $zero, 2      # divisor = 2
    add $t2, $t0, $zero     # copy m into $t2
    addi $t3, $zero, 0      # quotient = 0

div_loop:
    blt $t2, $t1, div_done
    sub $t2, $t2, $t1       # m = m - 2
    addi $t3, $t3, 1
    j div_loop

div_done:
    addi $t4, $zero, 0      # assume even by default
    bne $t2, $zero, is_odd  # if remainder != 0, it's odd
    j store

is_odd:
    addi $t4, $zero, 1

store:
    sw $t4, result
    add $t5, $t4, $zero     # result also in $t5
