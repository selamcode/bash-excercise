#!/usr/bin/env bash

main () {
    # Instructions
    #Your task is to determine what you will say as you give away the extra cookie.
    
    #If you know the person's name (e.g. if they're named Do-yun), then you will say:
    
    if [ $# -eq 0 ]; then # --> $#(number of arguments) if number of args is 0
        echo "One for you, one for me."
    else
        echo "One for $1, one for me."
     fi

}
# call main with all of the positional arguments
main "$@"

