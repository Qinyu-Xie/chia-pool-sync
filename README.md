# chia-pool-sync


sudo apt-get update -y


## make mount dirs

sudo mkdir -p /media/qinyu/ssd0/ssd_dest/
sudo mkdir -p /media/qinyu/ssd1/ssd_dest/
###
mount

sudo mount /dev/nvme1n1 /media/qinyu/ssd1/
sudo mount /dev/nvme0n1 /media/qinyu/ssd0/

## mamke mount for merged nfs dir

sudo mkdir -p /mnt/nfs-merged-d24-0/

## nfs from d24-0


sudo mount 192.168.0.65:/media/merged-d24 /mnt/nfs-merged-d24-0/


## install - rsync


sudo apt-get install -y rsync

## install - inotifywait

$ sudo apt install inotify-tools



make a sh files as follow

## continuous rsync --inoitifywait
TODO: write a bash script named: sync.sh
#!/bin/bash

while inotifywait -r -e modify,create,delete,move /media/qinyu/ssd0/ssd_dest/ /media/qinyu/ssd1/ssd_dest/; do
    rsync -av --remove-source-files /media/qinyu/ssd0/ssd_dest/ /mnt/nfs-merged-d24-0/
    rsync -av --remove-source-files /media/qinyu/ssd1/ssd_dest/ /mnt/nfs-merged-d24-0/
done





## run nohup sync.sh
