#!/usr/bin/env bash
# The goal of this exercise is to handle argument errors properly.
# We must check how many arguments are passed to the script and respond correctly.

# Rules:
# - If there is exactly ONE argument (even an empty string ""), greet that person.
# - If there are ZERO arguments, or MORE THAN ONE argument, print a usage message
#   and
main () {
    # error should occur when arg is 0 or more than 1
    if [[ $# -ne 1 ]]; then
        echo "Usage: error_handling.sh <person>"
        exit 1 # exiting with non-zero status 
    else
        echo "Hello, $1"  
    fi
}
main "$@"

