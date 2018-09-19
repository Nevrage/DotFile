#! /bin/bash 


amount=$(notmuch new | grep -o -E '[0-9]+' | head -1 | sed -e 's/^0\+//')

if [ -z "$amount" ]
then
    exit
else
        # notmuch dump | tail -$amount
        # capture the ID's, for loop the subject lines and remove the Subjects 
        # concatenate them 
        # notify-send "you have x new messases" "subject 1\nSubject2"
        notify-send "You have "$amount " new messages."
fi
