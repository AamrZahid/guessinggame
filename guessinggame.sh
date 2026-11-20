#!/usr/bin/env bash

count_files() {
    find . -maxdepth 1 -type f | wc -l | tr -d ' '
}

read_guess() {
    local guess
    while true
    do
        read -r -p "How many files are in the current directory? " guess
        if [[ "$guess" =~ ^[0-9]+$ ]]
        then
            echo "$guess"
            return
        else
            echo "Please enter a whole number." >&2
        fi
    done
}

target=$(count_files)
echo "Welcome to the guessing game!"

while true
do
    guess=$(read_guess)
    if [[ "$guess" -lt "$target" ]]
    then
        echo "Too low. Try again."
    elif [[ "$guess" -gt "$target" ]]
    then
        echo "Too high. Try again."
    else
        echo "Congratulations! You guessed the correct number of files: $target."
        break
    fi
done
