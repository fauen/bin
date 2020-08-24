#!/bin/bash
sudo -v
sudo sed -i "1d" /etc/hosts
sudo sed -i "s/1.1.1.1/127.0.0.53/" /etc/resolv.conf
sudo rm -r /raspberry/
sudo systemctl start systemd-resolved.service
sudo systemctl enable systemd-resolved.service
sudo docker stop pihole
sudo docker rm pihole
sudo docker rmi pihole/pihole
