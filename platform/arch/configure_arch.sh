sudo pacman -Sy
sudo pacman -Sy xorg xorg-xinit firefox git python-pip vim ranger tmux neofetch R  steam gcc-fortran rofi feh htop pulseaudio alsa-utils transmission-cli mpv mupdf dunst compton  gparted docker net-tools nerd-fonts-complete pandoc texlive-most cava mutt beep scrot openssh ncmpcpp mpd mpc tk gdal zsnes gdal proj geos  lib32-gconf qutebrowser ack #libreoffice terminator mariadb

# Potentially add t he following:
# arduino blender calcurse cups dosbox dosfstools dunst fish gimp glxosd google-drive-ocamlfuse htop-vim-git nmap noto-fonts-git npm ntfs-3g oni p7zip pacutils peco python-eyed3 python-igraph quicklisp radeontop rofi-greenclip rsync samba sbcl scrot sshfs tmsu todotxt-git tremc-git uswsusp-git w3m wget wine-staging xbindkeys xclip xdotool xsel ympd-git zsnes 


sudo pip3 install jedi rice rtv rice hangups stig  pywal wal-steam bpython ptpython jupyterlab pirate-get pandas numpy matplotlib todotxt-machine rtichoke menu4rofi buku #terminatables and jupyetr stuff 

jupyter labextension install @jupyterlab/google-drive

yaourt -S dropbox steam-fonts polybar-git bash-pipes ncmatrix cli-visualizer multimc5 i3-gaps zathura-pdf-poppler cool-retro-term unified-remote-server openspades jq-git udunits v8 #dofus


R <<EOF
options("http://cran.us.r-project.org")
install.packages("tidyverse")
install.packages("knitr")
install.packages("rmarkdown")
install.packages("kableExtra")
install.packages("lintr")
install.packages("shiny")
install.packages("devtools")
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec(name = 'ir34', displayname = 'R 3.4.4')
devtools::install_github("jalvesaq/colorout")
install.packages("sf")
EOF

cd
git clone https://github.com/Nevrage/DotFile.git 

# execute export.sh

source ~/.bashrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ~/DotFile/tty/vimrc ~/.vimrc
vim +PluginInstall +qall

systemctl enable docker
systemctl start docker
sudo systemctl start sshd

pacman -Syyu
sudo pip install youtube_dl==2017.07.30.1
sudo pip3 install greenlet==0.4.10
pacman -Syyu


#git hub stuff 
cd
mkdir github
cd github

git clone https://github.com/alexanderjeurissen/ranger_devicons.git
cd ranger_devicons 
make install
cd ..

# replace the placeholder variable with user input value:
# sed -i "s/wiki_host/${host_name}/g" /root/bin/sync
