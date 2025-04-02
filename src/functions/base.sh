#!/bin/bash

get_comment_intro() {
    local source=${2:-"CLI"}
    local task=${1:-"misc"}
    return "[ht7 $source / $task]"
}

print_intro() {
    echo -e "\n=====ht7 in tha house!====="
}

print_commands() {
    echo -e "Plkease select one of the following commands:"
    echo -e " 1) Syntax Check"
    echo -e " 2) PHPStan"
    echo -e " 3) PHP CS Fixer"
    echo -e " 4) PHPPHPUnit"

    php -v
}
