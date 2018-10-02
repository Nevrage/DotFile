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


# # Different states 
# * ready to go 
# * ready to go for me 
# * variables such as vboc to install vboxsf
# * gui or not ( install xorg etc )

pacman -Syu
