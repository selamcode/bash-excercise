#!/usr/bin/env bash

# An Armstrong number is a number that is equal to the sum of its own digits,
# where each digit is raised to the power of the total number of digits.

# Examples:

# 9 is an Armstrong number because:
#   Number of digits = 1
#   9^1 = 9
#   9 equals the sum of its digits raised to the power of 1 → Armstrong 

# 10 is not an Armstrong number because:
#   Number of digits = 2
#   1^2 + 0^2 = 1 + 0 = 1
#   10 != 1 → Not an Armstrong number 

# 153 is an Armstrong number because:
#   Number of digits = 3
#   1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
#   153 equals the sum of its digits raised to the power of 3 → Armstrong 

# 154 is not an Armstrong number because:
#   Number of digits = 3
#   1^3 + 5^3 + 4^3 = 1 + 125 + 64 = 190
#   154 != 190 → Not an Armstrong number 

# Goal: Write a program that takes a number and determines if it is an Armstrong number.
# Steps to follow in code:
# 1. Count the number of digits.
# 2. Split the number into individual digits.
# 3. Raise each digit to the power of the number of digits and sum them up.
# 4. Compare the sum with the original number.
# 5. If equal, the number is an Armstrong number; otherwise, it is not.

main () {
    # your main function code here
    number=$1
    digit_length=${#number}
    digit_sum=0
    
    for (( i=0; i<digit_length; i++ )); do
        digit=${number:i:1}
        (( digit_sum += digit ** digit_length )) 
    done
    
    if [[ $digit_sum -eq $1 ]]; then
        echo "true" 
    else
        echo "false"
    fi 
}

# call main with all of the positional arguments
main "$1"
