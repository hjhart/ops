## unicorn plists
scp unicorn_the_rotten_pirate.plist home:~/Library/LaunchAgents
ssh home
launchctl unload ~/Library/LaunchAgents/unicorn_the_rotten_pirate.plist
launchctl load ~/Library/LaunchAgents/unicorn_the_rotten_pirate.plist

## nginx plist
scp org.nginx.nginx.plist home:~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/org.nginx.nginx.plist


## _rvmruby

scp _rvmruby /usr/local/bin/

usage: 
_rvmruby ruby-1.9.2-p290@rotten_pirate unicorn -c config/unicorn.rb

## Transmission file completed

put a ~/.prowl file in your home directory with your prowl api key in it
sudo mkdir -p /var/log/transmission
sudo chown james /var/log/transmission

## crontab

sudo mkdir -p /var/log/cron/
sudo chown james /var/log/cron/
scp .crontab home:/tmp/crontab
ssh home 'crontab /tmp/crontab'

## delayed_job plists
scp delayed_job_the_rotten_pirate.plist home:~/Library/LaunchAgents
ssh home
sudo mkdir -p /var/log/delayed_job
sudo chown james /var/log/delayed_job
launchctl unload ~/Library/LaunchAgents/delayed_job_the_rotten_pirate.plist
launchctl load ~/Library/LaunchAgents/delayed_job_the_rotten_pirate.plist

