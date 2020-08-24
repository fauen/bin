#!/bin/bash
# This will install iptables and docker which will pull down pihole and configure it

sudo -v

sudo apt-get update && sudo apt-get upgrade && sudo apt-get install docker.io

sudo systemctl stop systemd-resolved.service
sudo systemctl disable systemd-resolved.service
sudo sed -i "1i 127.0.0.1\t$HOSTNAME" /etc/hosts
sudo sed -i "s/127.0.0.53/1.1.1.1/" /etc/resolv.conf

sudo mkdir -p /raspberry/pihole

sudo docker run -d -it \
	--name pihole \
	-p 53:53/tcp -p 53:53/udp \
	-p 80:80 \
	-p 443:443 \
	-p 8080:8080 \
	-e TZ="Sweden/Stockholm" \
	-v /raspberry/pihole:/etc/dnsmasq.d/ \
	--dns=127.0.0.1 --dns=1.1.1.1 \
	--restart=unless-stopped \
	pihole/pihole
