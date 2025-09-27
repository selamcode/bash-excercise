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
#   main () {
#     # your main function code here
#   }
#
#   # call main with all of the positional arguments
#   main "$@"
#
# *** PLEASE REMOVE THESE COMMENTS BEFORE SUBMITTING YOUR SOLUTION ***

#!/usr/bin/env bash

main() {

    # solution 1, with external command using "rev" command

    # echo "$@" | rev

    for str in "$@"; do        # loop over all arguments
        len=${#str}            # length of current word
        rev=""

        reverse_string() {
            for (( i=len-1; i>=0; i-- )); do
                rev="$rev${str:$i:1}"
            done
        }
        reverse_string          # call function for current word
        echo "$rev"             # print reversed word
    done
    
    
}

main "$@"


