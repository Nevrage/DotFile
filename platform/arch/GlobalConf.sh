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
