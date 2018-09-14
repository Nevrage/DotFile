#! /bin/bash


git clone https://github.com/Nevrage/DotFile.git ~
# Install stuff 
sudo apt update 
sudo apt upgrade 
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake git ranger qutebrowser xterm python3pip feh xclip xsel xdotools mpv pandoc tmux neofetch r-base r-base-dev libssl-dev cifs-utils openssh-server  htop  evolution evolution-ews libmariadbclient-dev compton i3lock
sudo pip3 install pywal rice jedi wal-steam  rtichoke  neovim
sudo apt-get install r-cran-curl r-cran-openssl r-cran-xml2

# pull the dotfiles now 

# i3-gaps
cd /tmp
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

# remove stuff 
sudo remove --purge nautilus gnome-terminal firefox google-chrome-stable eog

## Pull dotfiles 

# vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ~/Dotfile/tty/vimrc ~/.vimrc 
vim +PluginInstall +qall

cp ~/Downloads/DejaVu Sans Mono Nerd Font Complete.ttf/ /usr/local/share/fonts/TTF/

# R stuff
R --no-save <<EOF
.libPaths("~/R/library")
options("http://cran.us.r-project.org")
install.packages("tidyverse")
install.packages("knitr")
install.packages("rmarkdown")
install.packages("RMySQL")
install.packages("kableExtra")
install.packages("lintr")
install.packages("shiny")
install.packages("devtools")
devtools::install_github("jalvesaq/colorout")
EOF
cp ~/Dotfile/tty/R/Rprofile ~/.Rprofile 
mkdir ~/R/library
echo ".libPaths(\"~/R/library\")" >> ~/.Rprofile 

## todo
# fix qutebrowser 
# fix vim (is it really broken?)
# make GTK theme and 
## connect to steam 

# Workspaces:
# emails 
# chat 
# scripting, KPI
# browser 
# Cellar  and 
# Drive and file browser 

# Changes in dotfile 
## added that line for connecting to the server :
  ## alias connect="sudo mount -t cifs //monts03/compatibility /media/gamer/compat/ -o username=ylallouche,domain=vmc.com"
## Changed i3lock-fancy to i3lock in i3

# Copying dotfiles 
cp ~/DotFile/tty/bashrc ~/.bashrc 
cp ~/DotFile/tty/inputrc ~/.inputrc
cp ~/DotFile/desktopSpace/Xressources ~/.Xresources
cp ~/DotFile/desktopSpace/Xdefaults ~/.Xdefaults
cp -r ~/DotFile/desktopSpace/i3/*  ~/.config/i3/
cp -r ~/DotFile/tty/ranger/* ~/.config/ranger/ 
cp -r ~/DotFile/desktopSpace/qutebrowser/* ~/.config/qutebrowser/
cp ~/DotFile/tty/tmux ~/.tmux.conf

rm -r ~/DotFile
sudo apt update 
sudo apt upgrade 


wget -O wallpaper.png https://images.pexels.com/photos/1146804/pexels-photo-1146804.jpeg?cs=srgb&dl=4k-wallpaper-cloudy-dark-clouds-1146804.jpg&fm=jpg
wal -i wallpaper.png 
wal --theme hybrid-material



