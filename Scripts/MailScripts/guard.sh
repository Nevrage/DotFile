#! /bin/bash 

rm ~/guardcodes.txt

guarder () {
         echo -n $(notmuch show $* | grep -A3 "Here is the Steam Guard code") >> ~/guardcodes.txt
         echo -e "\n" >> ~/guardcodes.txt
}


threads=$(notmuch search --sort=oldest-first date:today "Your Steam account: Access from new" | tail -n 100 |awk '{print $1}')

for file in $threads  ; do
   guarder "$file"
done



