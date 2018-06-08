#SSHLoginMonitor

The intention is to use the script in conjuction with crontab and a file watcher linked to a mail server (in my experience the easiest
method is to install Webmin to monitor the file changes and use the Exim mail server (though any SMTP server will do).

The purpose of the script is to grep the auth.log every minute (via cron) to check for new sessions opening and notify when they take
place.

Should be used in conjunction with fail2ban but reporting on failures is worthless if a sucess takes place!
