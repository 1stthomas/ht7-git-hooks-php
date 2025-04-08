#!/bin/bash

source "$(pwd)/functions/base.sh"


print_intro

for (( ; ; )); do
    print_commands
    process_selection $?
    # "$(print_commands)"
    # process_selection $?
done
