#!/usr/bin/env bash

# The following comments should help you get started:
# - Bash is flexible. You may use functions or write a "raw" script.
#
# - Complex code can be made easier to read by breaking it up
#   into functions, however this is sometimes overkill in bash.
#
# - You can find links about good style and other resources
#   for Bash in './README.md'. It came with this exercise.
#
#   Example:
#   # other functions here
#   # ...
#   # ...
#
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

