# Update EEPROM and bootloader

```
sudo rpi-eeprom-update -d \
  -f /lib/firmware/raspberrypi/bootloader/critical/pieeprom-2021-04-29.bin
```

... and reboot.


Run `sudo rpi-eeprom-config --edit` and at the end of the edited file add this
line:

```
USB_MSD_PWR_OFF_TIME=0
```

... and reboot.

All the commands did not help and AData's SSD cannot be plugged into USB 3.0
port.

# Disable WiFi and Bluetooth

Add this at the end of /boot/config.txt:

```
# Disable WiFi and Bluetooth
dtoverlay=disable-wifi
dtoverlay=disable-bt
```

... and reboot.


# Misc

`sudo raspi-config`


... and reboot.


# Add remote logging

1. Add `192.168.99.9   pi.endor   pi` to `/etc/hosts`
2. Update name and address of local machine
3. Add `/etc/rsyslog.d/remote.conf` with the contents:

```
# Remote logging to loghost (pi.endor)

*.* @pi.endor:514
```
4. Restart rsyslogd.service


# Update Debian to bullseye

[Follow this guide][https://wiki.debian.org/DebianUpgrade]

```
sudo apt update
sudo apt upgrade -y
sudo vi /etc/apt/sources.list /etc/apt/sources.list.d/*
# Remember it's 'deb http://deb.debian.org/debian-security bullseye-security/updates main contrib non-free' now
sudo apt clean
sudo apt update
sudo apt full-upgrade
sudo apt autoremove --purge
```
... and reboot.


# Get rid of bloat software

```
sudo apt remove --purge x11-common wpasupplicant avahi-daemon dphys-swapfile \
  bluez bluez-firmware pi-bluetooth cifs-utils crda dphys-swapfile \
  fontconfig-config fonts-dejavu-core gdb libfreetype6 libraspberrypi-doc \
  xauth xdg-user-dirs xkb-data
sudo apt autoremove --purge
sudo systemctl disable triggerhappy.service
```

# Install some more tools

```
sudo apt install vim tmux atop htop iotop

```

And disable some automatically enabled services:

```
sudo systemctl disable atopacct.service && \
  sudo systemctl disable atop-rotate.timer && \
  sudo systemctl disable atop.service
```


# Install rpifanctl

```
sudo apt install vim tmux atop htop iotop

```

And disable some automatically enabled services:

```
sudo systemctl disable atopacct.service && \
  sudo systemctl disable atop-rotate.timer && \
  sudo systemctl disable atop.service
`
