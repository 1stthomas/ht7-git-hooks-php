#!/bin/bash

# shellcheck source=src/functions/base.sh
source "$(pwd)/functions/base.sh"


print_intro

for (( ; ; )); do
    print_commands
    process_selection $?
    # "$(print_commands)"
    # process_selection $?
done
