#!/bin/bash

check_commands() {
    local commands=("php" "phpstan" "php-cs-fixer" "phpunit")
    for cmd in "${commands[@]}"; do
        if ! command -v "$cmd" &> /dev/null; then
            echo "$cmd could not be found. Please install it."
            # exit 1
        fi
    done
}

get_comment_intro() {
    local source=${2:-"CLI"}
    local task=${1:-"misc"}
    echo "[ht7 $source / $task]"
}

print_intro() {
    # https://patorjk.com/software/taag/#p=display&f=Ivrit&t=ht7-git-hooks-php
    # Font Ivrit
    cat << "EOF"

=========================================================================================
  _     _  _____           _ _        _                 _                    _           
 | |__ | ||___  |     __ _(_) |_     | |__   ___   ___ | | _____       _ __ | |__  _ __  
 | '_ \| __| / /____ / _` | | __|____| '_ \ / _ \ / _ \| |/ / __|_____| '_ \| '_ \| '_ \ 
 | | | | |_ / /_____| (_| | | ||_____| | | | (_) | (_) |   <\__ \_____| |_) | | | | |_) |
 |_| |_|\__/_/       \__, |_|\__|    |_| |_|\___/ \___/|_|\_\___/     | .__/|_| |_| .__/ 
                     |___/                                            |_|         |_|    

EOF
}

print_commands() {
    echo -e "Please select one of the following commands:"
    echo -e " 1) PHP Syntax Check"
    echo -e " 2) PHPStan"
    echo -e " 3) PHP CS Fixer"
    echo -e " 4) PHPPHPUnit"

    php -v

    read -pr "Enter your choice [1-4]: " choice

    return "$choice"
}

process_selection() {
    local selection=$1
    case $selection in
        1)
            echo -e "\n=====Syntax Check - Not implemented ====="
            # php -l src/functions/base.sh
            ;;
        2)
            # shellcheck source=src/hooks/phpstan.sh
            source "$(pwd)/hooks/phpstan.sh"
            ;;
        3)
            echo -e "\n=====PHP CS Fixer - Not implemented ====="
            # php-cs-fixer fix src/functions/base.sh
            ;;
        4)
            echo -e "\n=====PHPUnit - Not implemented ====="
            # phpunit tests/
            ;;
        *)
            echo "Invalid choice. Please select a number between 1 and 4."
            ;;
    esac
}
