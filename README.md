#SSHLoginMonitor

The intention is to use the script in conjuction with crontab and a file watcher linked to a mail server (in my experience the easiest
method is to install Webmin to monitor the file changes and use the Exim mail server (though any SMTP server will do).

The purpose of the script is to grep the auth.log every minute (via cron) to check for new sessions opening and notify when they take
place. Any instance is detected and written to a dir named SSHLog within a named users home folder in a timestamped text file and the file
watched picks it up. To this end an intrusion should be located within 120 seconds at the latest and an attacker will have this window
only to discover the reporting script and disable it along with the SMTP server.

Should be used in conjunction with fail2ban but reporting on failures is worthless if a sucess takes place!
