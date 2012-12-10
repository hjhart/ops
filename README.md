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
_rvmruby ruby-1.9.2-p290@client_portal unicorn -c config/unicorn.rb



## nginx plist


1812 

1812 1813 1814 1815 1816 1817 1818 1819 1820 1821 1822 1823 