#!/bin/bash

get_comment_intro() {
    local source=${2:-"CLI"}
    local task=${1:-"misc"}
    echo "[ht7 $source / $task]"
}

print_intro() {
    echo -e "\n=====ht7 in tha house!====="
}

print_commands() {
    echo -e "Please select one of the following commands:"
    echo -e " 1) Syntax Check"
    echo -e " 2) PHPStan"
    echo -e " 3) PHP CS Fixer"
    echo -e " 4) PHPPHPUnit"

    php -v

    read -p "Enter your choice [1-4]: " choice

    return "$choice"
}

process_selection() {
    local selection=$1
    case $selection in
        1)
            echo -e "\n=====Syntax Check====="
            # php -l src/functions/base.sh
            ;;
        2)
            echo -e "\n=====PHPStan====="
            # phpstan analyse src/functions/base.sh
            ;;
        3)
            echo -e "\n=====PHP CS Fixer====="
            # php-cs-fixer fix src/functions/base.sh
            ;;
        4)
            echo -e "\n=====PHPUnit====="
            # phpunit tests/
            ;;
        *)
            echo "Invalid choice. Please select a number between 1 and 4."
            ;;
    esac
}
