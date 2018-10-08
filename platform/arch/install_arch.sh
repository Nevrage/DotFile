# passwd && yes | pacman -Sy openssh net-tools && systemctl start sshd && ifconfig | 192
    ## connect through ssh and paste this file
# OR 
# pacman -Sy curl 
    ## And source <(culr url.of/script)
# ====================
 
# change to some dialog stuff especially for drive and scope selection 
clear
echo "Choose a username:"
read user 
clear
echo "Choose a password:"
read pw
clear
echo "What is the name of this computer?"
read host
clear
lsblk
echo " 
*********************************
The chosen drive will be erased.
*********************************
"
read drive
clear
echo "
*********************************
What is the scope of this installation?
*********************************

basic: will install barebone arch without extra user 
server: will add more services and a non root user 
workstation: will install all computanional tool, xorg and i3
home: will install everything
also available: docker and vbox

"
read scope
clear

echo "
export username=user_var
export pw=pw_var
export drive=drive_var
export host=host_var
export scope=scope_var" > env.sh

sed -i "s/_var/${}/g" env.sh
sed -i "s/_var/${}/g" env.sh
sed -i "s/_var/${}/g" env.sh
sed -i "s/_var/${}/g" env.sh
sed -i "s/_var/${}/g" env.sh


## erase disk properly
## parted rm /dev/sda 1
## wipefs -a -n 5 or nothing 
## dd 
## scrub

timedatectl set-ntp true
##### to add: ask for the name of the drive
sed -e 's/\s*\([\+0-9a-zA-Z]*\).*/\1/' << EOF | fdisk $drive
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
mkfs.ext4 $drive1
mkfs.ext4 $drive4
mkfs.ext4 $drive3
mkswap $drive2
swapon $drive2
mount $drive3 /mnt
mkdir /mnt/boot
mkdir /mnt/home
mount $drive1 /mnt/boot
mount $drive4 /mnt/home
pacstrap /mnt base base-devel vim ranger 
genfstab -U /mnt >> /mnt/etc/fstab

# move the env varible now 

cat << EOF | arch-chroot /mnt /bin/bash
 
bash /root/env.sh

pacman -S --noconfirm networkmanager git curl lm_sensors
systemctl enable NetworkManager
echo "en_US.UTF-8 UTF-8  " >> /etc/locale.gen
echo "en_US ISO-8859-1  " >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
rm /etc/localtime
ln /usr/share/zoneinfo/America/Montreal /etc/localtime
pacman -S --noconfirm grub 
grub-install --target=i386-pc $drive
grub-mkconfig -o /boot/grub/grub.cfg
echo -e "newuser () { \n useradd -m -g users -G audio,lp,optical,storage,video,wheel,games,power,scanner -s /bin/bash \$1 \n }" >> ~/.bashrc
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "root:root" | chpasswd
pacman -S --noconfirm openssh net-tools curl
echo -e "\nPermitRootLogin yes\n" >> /etc/ssh/sshd_config
systemctl enable sshd
echo -e "[options] \n colors\n ILoveCandy\n HoldPkg     = pacman glibc\n Architecture = auto\n Color\n CheckSpace\n SigLevel    = Required DatabaseOptional\n LocalFileSigLevel = Optional\n \n [core]\n Include = /etc/pacman.d/mirrorlist\n \n [extra]\n Include = /etc/pacman.d/mirrorlist\n \n [community]\n Include = /etc/pacman.d/mirrorlist\n \n [multilib]\n Include = /etc/pacman.d/mirrorlist" > /etc/pacman.conf
pacman -Sy
# check for scope here 
# use answers as sys variable after reboot
source ~/.bashrc
newuser admin
cd /root
# embed that script 
wget https://raw.githubusercontent.com/Nevrage/DotFile/master/platform/arch/GlobalConf.sh
chmod755 /root/GlobalConf.sh
su -c "/root/GlobalConf.sh" - admin
rm /root/GlobalConf.sh

cd
mkdir /etc/systemd/system/getty@tty1.service.d/
newuser $user
echo "$user|$pwd" | chpasswd
echo -e "[Service]\nExecStart=\nExecStart=-/usr/bin/agetty --autologin $user--noclear %I $TERM" >> /etc/systemd/system/getty@tty1.service.d/override.conf # has to become sudo again 
echo "root|$rpwd" | chpasswd
pacman -Syu
userdel -r admin

# if this scope then do this 
# how to install things with choice number 1 or all or default ?
# option for other de and change size of certain partition 

echo $host > /etc/hostname
# remove the line with the password
exit
EOF
umount -r /mnt
reboot

## run until no diff between new and curren

