#!/bin/bash

display_menu() {
    echo "Choose whatever you want to make:"
   
}

while true; do
    display_menu

    select choice in "ls" "ls -a" "Exit"; do
        case $REPLY in
            1)
                ls
                break
                ;;
            2)
                ls -a
                break
                ;;
            3)
                echo "Exiting..."
                exit 0
                ;;
            *)
                echo "Invalid option. Please try again."
                break
                ;;
        esac
    done
done
