#!/bin/bash

mail_template="mtemplate"

if [ ! -f "$mail_template" ]; then
    echo "Mail template file $mail_template not found!"
    exit 1
fi

USERS=$(cut -d: -f1 /etc/passwd)

for USER in $USERS; do
    EMAIL="$USER@$(hostname)"

    mail -s "$(head -n 1 $mail_template)" "$EMAIL" < "$mail_template"
    echo "Mail sent to: $EMAIL"
done

echo "All emails are  sent."
