#! /bin/bash
# Paranoid mode. Logs all success via cron and notifies via SMTP notifications.
# mkdir a folde at /home/youruser/SSHLog
USER=YOURUSERNAME
OUTPUT=/home/$USER/SSHLog/$(date '+%b%d'SSHSuccess.txt)
DATE=$(date -d '2 min ago' '+%b %d %R')
if cat /var/log/auth.log | grep "$DATE" | grep "session opened for user remote"
then
        rm $OUTPUT
        cat /var/log/auth.log | grep "$DATE" | grep "session opened for user" >> "$OUTPUT"
        #To tighten up the function here, edit the grepped value to include a specific username, I.E. "session opened for user Joe"
else
        #Skip Write
fi
#Write
