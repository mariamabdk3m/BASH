#!/bin/bash

username=$(whoami)

mailbox="/var/mail/$username"

if [ ! -f "$mailbox" ]; then
    echo "it is not found $username at $mailbox."
    exit 1
fi

initial_count=$(grep -c "^From " "$mailbox")

echo "Checking for new mails every 10 seconds..."
echo "Press ctrl+c to stop."

while true; do
    current=$(grep -c "^From " "$mailbox")

    if [ "$current" -gt "$initial_count" ]; then
        echo "You have new mail!"
        initial_count="$current"
    fi

    sleep 10
done
