sudo apt-get update -y
sudo mkdir -p /media/qinyu/ssd0/ssd_dest/ sudo mkdir -p /media/qinyu/ssd1/ssd_dest/
sudo mount /dev/nvme1n1 /media/qinyu/ssd1/ sudo mount /dev/nvme0n1 /media/qinyu/ssd0/
sudo mkdir -p /mnt/nfs-merged-d24-0/
sudo mount 192.168.0.65:/media/merged-d24 /mnt/nfs-merged-d24-0/
sudo apt-get install -y rsync
sudo apt install inotify-tools
