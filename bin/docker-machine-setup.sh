#!/bin/sh

docker-machine create default --driver virtualbox --virtualbox-memory 1024 --virtualbox-cpu-count "1"

VBoxManage guestproperty set default "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold" 10000

VBoxManage guestproperty set default "/VirtualBox/GuestAdd/VBoxService/--timesync-set-start"

VBoxManage guestproperty set default "/VirtualBox/GuestAdd/VBoxService/--timesync-set-on-restore" 1

docker-machine-nfs.sh default