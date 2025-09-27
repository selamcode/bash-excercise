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


