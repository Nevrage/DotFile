 if [ -z "$SSH_TTY" ]; then  source <(curl -s https://bit.ly/2O2ONM7Ds); else bash install_arch.sh; fi

 
newuser $user
echo "$user|$pwd" | chpasswd
echo "root|$rpwd" | chpasswd

cd /tmp
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
yes | makepkg -si
cd ..



cd /tmp
git clone https://aur.archlinux.org/mingetty.git 
cd mingetty 
yes | makepkg -si
cd
mkdir /etc/systemd/system/getty@tty1.service.d/
echo -e "[Service]\nExecStart=\nExecStart=-/usr/bin/agetty --autologin $user--noclear %I $TERM" >> /etc/systemd/system/getty@tty1.service.d/override.conf

# then auto startx + i3lock on on config 

pacman -Syu
