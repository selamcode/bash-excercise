#!/usr/bin/env bash

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
