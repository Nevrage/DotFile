source ~/.bashrc
newuser admin
/bin/su -c "/path/to/backup_db.sh /tmp/test" - admin

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
newuser $user
echo "$user|$pwd" | chpasswd
echo -e "[Service]\nExecStart=\nExecStart=-/usr/bin/agetty --autologin $user--noclear %I $TERM" >> /etc/systemd/system/getty@tty1.service.d/override.conf # has to become sudo again 
echo "root|$rpwd" | chpasswd

pacman -Syu
