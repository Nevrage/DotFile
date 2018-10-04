 if [ -z "$SSH_TTY" ]; then  source <(curl -s https://bit.ly/2O2ONM7Ds); else bash install_arch.sh; fi

 
newuser $user
echo "$user|$pwd" | chpasswd
echo "root|$rpwd" | chpasswd


# install yaourt 
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd ..
# Add multilib 
echo -e "\n [multilib] \n Include = /etc/pacman.d/mirrorlist \n "
pacman -Sy


cd /tmp
git clone https://aur.archlinux.org/mingetty.git 
cd mingetty 
makepkg -si
cd
mkdir /etc/systemd/system/getty@tty1.service.d/
echo "[Service]\nExecStart=\nExecStart=-/usr/bin/agetty --autologin $user--noclear %I $TERM" >> /etc/systemd/system/getty@tty1.service.d/override.conf

# then auto startx + i3lockon on config 

# # Different states 
# * ready to go 
# * ready to go for me 
# * variables such as vboc to install vboxsf
# * gui or not ( install xorg etc )

pacman -Syu
