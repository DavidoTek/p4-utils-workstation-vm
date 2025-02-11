#!/bin/bash
sudo NEEDRESTART_MODE=a DEBIAN_FRONTEND=noninteractive apt-get update
sudo NEEDRESTART_MODE=a DEBIAN_FRONTEND=noninteractive apt-get install -y tasksel
sudo tasksel install lxqt-desktop
