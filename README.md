# Assignment 1: Basic Configuration
Student: Nataliia Vytska  

Group: CS420 Gruop 2

---

**How to use script?**

The best approach is:

0. Clone repo: ```git clone https://github.com/nvytska/basic_configuration.git```
1. Create new clean VM: ```multipass launch --name basic-config```.
2. Mount: ```multipass mount ./basic_configuration basic-config:/home/ubuntu/basic_configuration```.
3. ```multipass shell basic-config```
4. Go to directory: ```cd basic_configuration```.
5. Run the script: ```chmod +x configure_system.sh```; ```sudo ./configure_system.sh```.
6. Verify if timer is active: ```systemctl list-timers simpleService.timer```
7. Check logs: ```tail -f /var/log/simpleService.log```

**What the script does**
1. Installs packages: tcptrace, iptraf
2. Creates the empty file ```config.bat``` in ```/usr/stairway/tohv``` folder.
3. Copies ```simpleService.sh``` to ```/etc/``` and makes it executable.
4. Copies ```simpleService.service``` and ```simpleService.timer``` to ```/etc/systemd/system/```.
5. Reloads systemd.
6. Enables ```simpleService.timer``` and starts ```simpleService.service```.

**Basic functionality**

```simpleService.sh```:
Runs and outputs: date+time, IP and MAC, separator.

```simpleService.service```:
Executes ```/etc/simpleService.sh```.

```simpleService.timer```:
Runs ```simpleService.service``` every 8 minutes automatically.

