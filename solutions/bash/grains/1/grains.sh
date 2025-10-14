#!/usr/bin/env bash

# Introduction
# There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have grains of wheat. One grain on the first square of a chessboard, with the number of grains doubling on each successive square.

# Instructions
# Calculate the number of grains of wheat on a chessboard.

# A chessboard has 64 squares. Square 1 has one grain, square 2 has two grains, square 3 has four grains, and so on, doubling each time.

# Write code that calculates:

# - the number of grains on a given square
# - the total number of grains on the chessboard


  main () {
    arg=$1 # argument

    if [[ $arg == "total" ]]; then
        echo "18446744073709551615"
    elif (( arg <= 0 || arg > 64 )); then # 64 causes overflow
        echo "Error: invalid input"
        exit 1
    elif (( arg == 64 )); then # To avoid overflow, wrraping around to zero
        echo "9223372036854775808"
    else
        result=$(( (2 ** arg) / 2 ))
        echo "$result"
    fi

  }
  main "$1"

