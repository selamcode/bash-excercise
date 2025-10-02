#!/usr/bin/env bash

# Question

# Instructions:
# Given a person's allergy score, determine whether or not they're allergic 
# to a given item, and their full list of allergies.
#
# An allergy test produces a single numeric score which contains the 
# information about all the allergies the person has (that they were tested for).
#
# The list of items (and their value) that were tested are:
#   eggs (1)
#   peanuts (2)
#   shellfish (4)
#   strawberries (8)
#   tomatoes (16)
#   chocolate (32)
#   pollen (64)
#   cats (128)
#
# Example:
# If Tom is allergic to peanuts and chocolate, he gets a score of 34.
# Given just that score of 34, the program should be able to say:
#   - Whether Tom is allergic to any one of those allergens listed above.
#   - All the allergens Tom is allergic to.
#
# Note:
# A given score may include allergens not listed above (e.g. 256, 512, 1024, etc.).
# The program should ignore those components of the score.
# For example, if the allergy score is 257, the program should only report the eggs (1) allergy.


main () {
    # Define allergens and their values
    declare -A allergies
    allergies[eggs]=1
    allergies[peanuts]=2
    allergies[shellfish]=4
    allergies[strawberries]=8
    allergies[tomatoes]=16
    allergies[chocolate]=32
    allergies[pollen]=64
    allergies[cats]=128

    score=$1
    command=$2
    item=$3

    # Allergens in ascending order
    allergen_order=(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)


    # Example Test, run bash allergies.sh 5 allergic_to peanuts
    
    # 5 in bits -> 101
    
    # We know that if score is 5, the person is allergic to egg(1) and shellfish(4), because that's how we get 5.
    # meaning if we do bitwise "AND" operation of 5 & egg(1),  5 & shellfish(4) -> it will only return true on these two numbers (allergens)
    # egg is 1, in bits 001, 001 & 101 = true, means we found allergen
    # shellfish is 4, in bits 100, 100 & 101 = true, means we found another allergen
    
    # Step 1: Figure out which allergens are present using the above example
    
    present=() # array to store allergens for given score
    for allergen in "${allergen_order[@]}"; do
        value=${allergies[$allergen]}
        if (( score & value )); then
            present+=("$allergen")
        fi
    done

    # Step 2: Output based on command
    if [ "$command" = "allergic_to" ]; then
        for a in "${present[@]}"; do
            if [ "$a" = "$item" ]; then
                echo "true"
                exit 0
            fi
        done
        echo "false"
    # if command is to list the allergens, print present items.  
    elif [ "$command" = "list" ]; then
        echo "${present[@]}"
    fi
}

main "$@"
