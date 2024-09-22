#!/bin/bash
sudo NEEDRESTART_MODE=a DEBIAN_FRONTEND=noninteractive apt-get update
sudo NEEDRESTART_MODE=a DEBIAN_FRONTEND=noninteractive apt-get install -y tasksel
sudo tasksel install xfce-desktop
sudo NEEDRESTART_MODE=a DEBIAN_FRONTEND=noninteractive apt-get install -y sddm
sudo NEEDRESTART_MODE=a DEBIAN_FRONTEND=noninteractive apt-get remove -y lightdm
sudo NEEDRESTART_MODE=a DEBIAN_FRONTEND=noninteractive dpkg-reconfigure sddm
