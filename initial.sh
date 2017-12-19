sudo apt-get update 
sudo apt upgrade 
sudo apt install openssh-server ranger tmux vim r-base r-base-dev
sudo apt-get install -y rofi  terminator steamcmd steam lua node npm gdebi-core pandoc cifs-utils libxml2-dev  pandoc-citeproc libcurl4-gnutls-dev feh libcairo2-dev libxt-dev libssl-dev git android-tools-adb android-tools-fastboot curl adb lynx htop w3m 
pip3 install hangups pywal jupyter-notebook/lab rtv # ( or apt instead?) 

# install scim
sudo apt install libzip-dev libxml2-dev bison  libncurses5-dev libncursesw5-dev
# cd src && make && sudo make install 

# install webmin 
sudo sh -c 'echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list'
wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install webmin

# music player
# shiny 
# hyper
# sauna client
# fonts
# icons and gtk 
# website for database
# https://www.howtogeek.com/104708/how-to-customize-ubuntus-message-of-the-day/

# In ranger 
# add auto open with scim
# add some sort of previwer for 2 dimensional arrays
# add a shortcut to render rmd or use csv for DTable/shiny apps, and selects app.R as shiny as well 


# vim 8:
# add dictionnary french/english 
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

# dont install i3 but i3 gaps right away instead: https://gist.github.com/doubtingben/60a228c06a48a5b8601ea5e94e4ab22c
# is wal over ssh and are the the clours resetting ? 
# change wallpaper in i3: why not pywal ? what about feh ?  
# get R dependencies right, get dependencies from the i3 gaps gist 
# alternative a synergy
# font


# update to vim 8 and then
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# then get vimrc, then
vim +PluginInstall +qall

# https://github.com/dylanaraps/pywal/wiki/Customization#i3


# R
## Rprofile
### my old one in github
### as well as the one in the ReportR program 
### this one https://www.r-bloggers.com/fun-with-rprofile-and-customizing-r-startup/
### 

##  Installed in R
# dplyr, httr and then tidyverse
# the r packages from the collection of function 
# the colorout package 
# (sessionInfo () %>% grepl(pattern = "unix") %>% which %>% sum) >1
# if (!require(package)) install.packages('package')
# 	sessionInfo ()[[4]] %>% grepl(pattern = "Windows")



# Ranger
# https://github.com/ranger/ranger/wiki/Official-user-guide

# next: docker, python (conda ? jupyter ?), md, 
# x stuff: atom, rofi, terminal, wal, steam, gtx, icon, i3
# screencast, screenshotter, 

# dotfiles listing:
# * rprofile
# * rc.conf and rifle.conf  + custom commands
# * vimrc + equivalent for neovim
# * htop ? 
# * urxvt + terminator 
# firefox css
# bashrc
# tmux 

#tmux
# https://unix.stackexchange.com/questions/58763/copy-text-from-one-tmux-pane-to-another-using-vim

# notes vim:
# https://alvinalexander.com/linux/vi-vim-editor-end-of-line
# "o" for next line in insert mode 
#\kn - will do the iterpretation
#\kh - will generate the HTML
#\kp - will generate the PDF
# look into each plugin in vimrc
# https://medium.freecodecamp.org/turning-vim-into-an-r-ide-cd9602e8c21
# comment and uncomment in vim 

# scrutinity:
# https://github.com/LukeSmithxyz/voidrice
# https://github.com/smjn/config
# https://github.com/vim-scripts/AutoComplPop
# https://github.com/chrmod/dotfiles
# ncmpcpp and mpd (my main music player)
# Music on Console (moc and mocp)
# mpv
# neofetch
# compton 
# https://github.com/ranger/ranger/wiki/Integration-with-other-programs
# https://github.com/alexanderjeurissen/ranger_devicons
# https://github.com/ranger/ranger/wiki/VCS-integration
# https://github.com/ranger/ranger/wiki/Image-Previews
# https://github.com/Raindeer44/dotfiles
# no jupyter ? 
# what about dropbox and owncloud c9 ? 
# then wine and/or duel boot + some drivers for controller 
# https://tmuxp.git-pull.com/en/latest/
# https://github.com/airblade/dotfiles
# airblade/targets.vim
# https://github.com/rxrc/tmuxrc
# vim csv, powerline, nerdfont
# vim: youcompleteme, syntastic, ultisnips, vim-matchit, vimjson, vim-snippets, ctrlp,sleuth, vim-colorschemes, nerdcommenter, vim-markdown, vim tagbar, vim lawrencium 
# look into termite and regular xterm as well 
# cool retro term + compare initial with the mac version 
# firefox sync
# zero conf 
#x1
# backspace erases in vim normal mode ? 1



# git Notes 
# *  git init
# *  git status
# *  .git ignore
# *  gitt add
# *  git commit -m
# *  git add remote
# *  git push -u origin master
# *  git config --global user.email "email@example.com"
# *  git remote set-url origin git@github.com:username/repo.git
git config --global user.email johndoe@example.com
git config --global user.name "Nevrage"

# find a way to tag stuff on unix
# index stuff on unix
# usercontent.css firefox
# powerline
# note + tag
# ohmyzsh
# font
# vim plug
# w in tmux list windows
# join-pane break-pane
# sync panes in tmux
# auto complete in bash
# . in vim
# screenkey
# f in vim
# bind -p in bash once set -o vi in bashrc
# fzf or ctrlp
# vimtest
# vim airline
# terminal vim
# write preview script for ranger ( ipynb, html, md, video, torrent etc ...)
# 
# 
# 
# interactive {base}
# eval fm.source(fm.confpath('rc.conf'))
# once git added do a share of the ws note in keep 
# sciim and DB

# steam some wine stuff and 
## DOCKER stable ! 
# https://sanctum.geek.nz/arabesque/vi-mode-in-bash/ 

# to do : shortcuts to merge panes in tmux and alias or keystroke for exit 
# https://stackoverflow.com/questions/7888387/the-way-to-distinguish-command-mode-and-insert-mode-in-bashs-vi-command-line-ed

# export DISPLAY=191.168.2.103:0
# export PULSE_SERVER=tcp:191.168.2.103:4712
