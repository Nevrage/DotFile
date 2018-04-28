## Remaining to do:
# setup git 
# multilib in pacman then add steam 

sudo pacman -Syu

sudo pacman -Sy xorg xorg-xinit firefox git python-pip vim ranger tmux neofetch R gcc-fortran rofi feh htop pulseaudio alsa-utils transmission-cli mpv mupdf dunst compton  gparted docker net-tools nerd-fonts-complete pandoc texlive-most cava mutt beep scrot openssh ncmpcpp mpd mpc tk gdal zsnes gdal proj geos #libreoffice terminator mariadb

sudo pip3 install jedi rice rtv rice hangups stig wal-steam bpython ptpython jupyterlab pirate-get pandas numpy matplotlib 

jupyter labextension install @jupyterlab/google-drive

echo "[archlinuxfr]" >> /etc/pacman.conf
echo "SigLevel=Never" >> /etc/pacman.conf
echo "Server=http://repo.archlinux.fr/$arch" >> /etc/pacman.conf
sudo pacman -Sy yaourt
yaourt -S dropbox steam-fonts polybar-git bash-pipes ncmatrix cli-visualizer multimc5 i3-gaps zathura-pdf-poppler cool-retro-term unified-remote-server openspades jq-git udunits v8


R <<EOF
options("http://cran.us.r-project.org")
install.packages("tidyverse")
install.packages("knitr")
install.packages("rmarkdown")
install.packages("kableExtra")
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
