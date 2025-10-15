#!/usr/bin/env bash

# Introduction
# Your body is made up of cells that contain DNA. Those cells regularly wear out and need replacing, which they achieve by dividing into daughter cells. In fact, the average human body experiences about 10 quadrillion cell divisions in a lifetime!

# When cells divide, their DNA replicates too. Sometimes during this process mistakes happen and single pieces of DNA get encoded with the incorrect information. If we compare two strands of DNA and count the differences between them, we can see how many mistakes occurred. This is known as the "Hamming distance".

# The Hamming distance is useful in many areas of science, not just biology, so it's a nice phrase to be familiar with :)

# Instructions
# Calculate the Hamming distance between two DNA strands.

# We read DNA using the letters C, A, G and T. Two strands might look like this:

# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT
# ^ ^ ^  ^ ^    ^^
# They have 7 differences, and therefore the Hamming distance is 7.

# Implementation notes
# The Hamming distance is only defined for sequences of equal length, so an attempt to calculate it between sequences of different lengths should not work.

 main() {

    # check if any argument is missing
    if [[ $# -ne 2 ]]; then
        echo "Usage: hamming.sh <string1> <string2>"
        exit 1   
    fi

    arg1="$1"
    arg2="$2"
    count=0

    length1=${#arg1}
    length2=${#arg2}

    # check if lengths differ 
    if (( length1 != length2 )); then
        echo "strands must be of equal length"
        exit 1
    fi

    # check if each letter match 
    for (( i=0; i<length1; i++ )); do
        char1="${arg1:$i:1}"
        char2="${arg2:$i:1}"

        if [[ "$char1" != "$char2" ]]; then
            ((count++))
        fi
    done
    
    echo "$count"
}
main "$@"

