#!/bin/bash
sudo NEEDRESTART_MODE=a DEBIAN_FRONTEND=noninteractive apt-get update
sudo NEEDRESTART_MODE=a DEBIAN_FRONTEND=noninteractive apt-get install -y virtualbox-guest-utils virtualbox-guest-x11
