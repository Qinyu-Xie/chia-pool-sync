#!/bin/bash

while inotifywait -r -e modify,create,delete,move /media/qinyu/ssd0/ssd_dest/ /media/qinyu/ssd1/ssd_dest/; do
    rsync -av --remove-source-files /media/qinyu/ssd0/ssd_dest/ /mnt/nfs-merged-d24-0/
    rsync -av --remove-source-files /media/qinyu/ssd1/ssd_dest/ /mnt/nfs-merged-d24-0/
done
