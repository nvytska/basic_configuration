# Assignment 1: Basic Configuration
Student: Nataliia Vytska
Group: CS420 Gruop 2

**How to use script?**
1. Copy files to some directory on VM (eg. ```/home/ubuntu/basic_configuration```).
2. Run the script: ```chmod +x configure_system.sh```; ```./configure_system.sh``` (or ```sudo ./configure_system.sh``` if does not work).
3. Verify if timer is active: ```systemctl list-timers simpleService.timer```
4. Check logs: ```tail -f /var/log/simpleService.log```

**What the script does**
1. Installs packages: tcptrace, iptraf
2. Creates the empty file ```config.txt``` in ```/usr/stairway/tohv``` folder.
3. Copies ```simpleService.sh``` to ```/etc/``` and makes it executable.
4. Copies ```simpleService.service``` and ```simpleService.timer``` to ```/etc/systemd/system/```.
5. Reloads systemd.
6. Enables ```simpleService.timer``` and starts ```simpleService.service```.

**Basic functionality**


