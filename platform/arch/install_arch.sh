timedatectl set-ntp true
##### add: ask for variable: drive and user name 
sed -e 's/\s*\([\+0-9a-zA-Z]*\).*/\1/' << EOF | fdisk /dev/sda
  o # clear the in memory partition table
  n # new partition
  p # primary partition
  1 # partition number 1
    # default - start at beginning of disk 
  +100M # 100 MB boot parttion
  n # new partition
  p # primary partition
  2 # partion number 2
    # default, start immediately after preceding partition
  +12G # SWAP partition
  n # new partition
  p # primary partition
  3 # parition number 3
    # default - start at the beginning of disk
  +25G # root partition
  n # new partition 
  p # primary partition 
  4 # home partition 
    # default start 
    # until the end
  w # write the partition table
  q # Done 
EOF
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda4
mkfs.ext4 /dev/sda3
mkswap /dev/sda2
swapon /dev/sda2
mount /dev/sda3 /mnt
mkdir /mnt/boot
mkdir /mnt/home
mount /dev/sda1 /mnt/boot
mount /dev/sda4 /mnt/home
pacstrap /mnt base base-devel vim ranger 
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
pacman -S networkmanager
systemctl enable NetworkManager
passwd
echo "en_US.UTF-8 UTF-8  " >> /etc/locale.gen
echo "en_US ISO-8859-1  " >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
ln /usr/share/zoneinfo/America/Montreal /etc/localtime
pacman -S grub
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
useradd -m -g users -G audio,lp,optical,storage,video, wheel, games, power, scanner -s /bin/bash ylan

# add the no password needed bit 
echo "%wheel      ALL=(ALL) ALL" >> etc/sudoers
passwd ylan
