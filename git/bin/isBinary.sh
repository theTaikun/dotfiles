#!/bin/bash

# Checks if git will recognize a file as binary or not
# Adapted from the code at  https://stackoverflow.com/a/6134127
# Returns exit code 0 if binary, 1 otherwise

isBinary() {
    p=$(printf '%s\t-\t' -)
    t=$(git diff --no-index --numstat /dev/null "$1")
    case "$t" in
        "$p"*)
            echo "Binary File"
            return 0
            ;;
        *)
            echo "Not a Binary"
            return 1
            ;;
    esac
}

isBinary ${1}
