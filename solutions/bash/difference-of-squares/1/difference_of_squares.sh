#!/usr/bin/env bash

# Instructions
# Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.

# The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.

# The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.

# Hence the difference between the square of the sum of the first ten natural numbers and the sum of the squares of the first ten natural numbers is 3025 - 385 = 2640.

# You are not expected to discover an efficient solution to this yourself from first principles; research is allowed, indeed, encouraged. Finding the best algorithm for the problem is a key skill in software engineering.

main() {
    mode=$1   # "square_of_sum", "sum_of_squares", "difference"
    N=$2      # number up to N
    
    square_of_sum=0
    sum_of_square=0
    difference=0

    # Sum numbers 1..N and then square it
    for ((i=1; i<=N; i++)); do
        ((square_of_sum += i))
    done
    ((square_of_sum = square_of_sum**2))

    # Sum of squares 1^2 + 2^2 + ... + N^2
    for ((i=1; i<=N; i++)); do
        ((sum_of_square += i**2))
    done

    # Output based on mode using if-else
    if [[ $mode == "square_of_sum" ]]; then
        echo "$square_of_sum"
    elif [[ $mode == "sum_of_squares" ]]; then
        echo "$sum_of_square"
    else
        ((difference = square_of_sum - sum_of_square))
        echo "$difference"
    fi
}

main "$1" "$2"


