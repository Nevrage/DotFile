# Qui reste:
* python modules as OS diagnotic 
* https://github.com/jimhester/lintr
* https://github.com/hdra/itermcolors2terminator
* https://github.com/stuartcryan/custom-iterm-applescripts-for-alfred
___________________________________________________________

#alsa audiomixer 
# install webmin 
sudo sh -c 'echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list'
wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install webmin

#Docker
deb [arch=amd64] https://download.docker.com/linux/ubuntu zesty stable
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# music player and chat client ( weechat and profanity) and rtv and mutt and vim and tmux
# remove top bar in i3,ads gaps, deal with taskbar, use wal's color 
# https://github.com/addy-dclxvi/almighty-dotfiles
# https://github.com/ryanoasis/nerd-fonts
# urxvt: toggle transparency ?
# urxvt or termite
# zoom in urxvt,  download and change font 
# https://github.com/ryanoasis/vim-devicons
# shiny 
# hyper
# sauna client
# italic in vim and in shells 
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
### package called "mise" for mise en place  
# https://github.com/rocker-org/shiny/blob/master/Dockerfile
# https://hub.docker.com/r/rocker/tidyverse/
# http://pacha.hk/2017-10-03_r_on_ubuntu_16_04.html


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
# w3m vs caca
# process hyper.js and vimrc in windows10 at home
# Cava in polybar or conky
# Randomize transparency AND toggle 
# nerd font in vim and tmux 

========================
====================================================

Current wal theme and history
 ( with dates and screenshots )
 Ranger rifle opens wal theme by applying theme maybe with wallpaper as well

 Neovim:
 https://neovim.io/doc/user/nvim.html#nvim-from-vim
 https://github.com/neovim/neovim/wiki/FAQ
 ___
 R definite:
 libssl-dev
 curl4 ssomething 

 https://www.digitalocean.com/community/tutorials/how-to-install-r-on-ubuntu-16-04-2

 ----

 https://github.com/eddelbuettel/littler

 cssfirefox:
 https://www.reddit.com/r/FirefoxCSS/
 https://www.howtogeek.com/334716/how-to-customize-firefoxs-user-interface-with-userchrome.css/
 https://www.reddit.com/r/unixporn/search?q=firefox+&restrict_sr=on

 in progress: i3
 http://www.enduranceapp.com
 https://www.mediaatelier.com/CheatSheet/
 http://padbury.me/clock/
 https://github.com/sebastiencs/ls-icons
 https://github.com/illinoisjackson/even-better-ls
 https://github.com/amix/vimrc


  https://github.com/Madkita/Dotfiles/blob/master/custom.css
   https://github.com/Madkita/Dotfiles/blob/master/lock.sh
   retro term and timeout
   https://www.reddit.com/r/unixporn/comments/6ms6ju/bspwm_i_got_polybar_dmenu_powerline_and_bspwm_to/
   https://www.reddit.com/r/unixporn/comments/7o6pa5/i3gaps_city_sunset/
   https://www.reddit.com/r/i3wm/comments/2fa4oh/how_to_swap_two_windows/

   https://faq.i3wm.org/question/125/how-to-change-the-systems-volume.1.html

   unfold stuff in vim, and copy paste 

   Vim character expand and character aliases

   launch shiny apps from vim 

   smipping tools and sharing images easily 

   redo bashrc at some point, like why do I need to clear all the time ? 

   inputrc second line in R term like in visual code studio 

   bashrc, vimrc, Rprofile, i3config

   polybaR AND MUSIC and conky 
   zsh, weechat 

   in the actual md/sd folder make a section for desktop env and one for "pure" softwares 

   season theme, hourly theme etc 
   conky calendar 


   not all unicode characters are displaying ? 

   win arrow keys to change workspaces in i3
    syntastic, omni completion and notes, 
     conditions in vim for wether I'm on mac or reg linux: https://stackoverflow.com/questions/2842078/how-do-i-detect-os-x-in-my-vimrc-file-so-certain-configurations-will-only-appl

     devicons for vim and change colours and glyphs of things 
     copy paste properly 

     speed of ranger startup 
     speed of vim startup
     lukesmith sxz: what that pdf reader: zathura ? 
     quickly launch an smb server from directory

     https://github.com/bookercodes/awesome-urxvt
     http://510x.se/notes/posts/Configuring_and_using_rxvt-unicode/

     simple server python
     music
     firefox
     proper shortcut: toggle bar, togg;e transparency, toggle font size firefox and terminal, launch firefox and terminal
     proper bar
     font, increase/decrease
     font, toggle transparency. 
     i3 gaps + compton stuff 
     on boot weirdness, login wallpaper 
     boot animations, + grub splash screen
     display images in ranger 
     script at startuup: shiny, tmux for messaging and portainer and jupyter , 
     cursor mouse, 
     lock screen, + lock on boot 
      LFS, void, kde vs kde, 
       transmission and stig, 
        rofi: combi, files, ssh, window, i3, icons, muisic, bookmarks, menu4rofi
	 xterm for rainy days
	  i3: launch termux remote session 
	   manage clipboard: maybe xclip to ease linux <=> macOs transition 
	    some conky: music vizu, 
	     lightdm themes?
	      remove border i3 and urxvt 

	      https://www.datacamp.com/community/tutorials/shell-commands-data-scientist

	      border in vim/tmux
	      smb server, oc, c9, webmin
	      mplayer or mpv to play video or maybe minimalistic video player mentioned by luke smith when playing gif
	      youtlayer and minitube
	      feh

	      mupdf vs zathura

	      rofi combi: files, notes content, bookmarks
	      album cover for conky and cmus or whatever ? 
	      add build.sh in iso ? 
	      wal steam
	      https://ctkarch.org/documentation/tutorials/tuto.php?page=urxvt-transpa.xml
	      https://github.com/carnager
	      plymouth
	      login to a user and lock 
	      https://www.gnome-look.org/p/1181366/
	      https://www.gnome-look.org/p/1181227/
	      https://superuser.com/questions/759481/ssh-how-to-change-value-in-config-file-in-one-command
	      https://github.com/joajfreitas/bookmarks

	      https://www.statmethods.net/interface/customizing.html
	      https://superuser.com/questions/539179/open-new-vim-buffers-in-new-windows
	      https://superuser.com/questions/1111738/vim-how-to-make-buffers-automatically-split-space-evenly-on-window-resize#1111785
	      https://www.google.ca/search?q=change+default+theme+plot+R+&ie=utf-8&oe=utf-8&client=firefox-b-ab&gfe_rd=cr&dcr=0&ei=jDJNWra3J8LOXvu2lpAC
	      skip open parenthesis in vim
	      https://github.com/i3/i3/blob/next/etc/config.keycodes
	      https://i3wm.org/docs/userguide.html
	      http://vim.wikia.com/wiki/Resize_splits_more_quickly
	      https://superuser.com/questions/1111738/vim-how-to-make-buffers-automatically-split-space-evenly-on-window-resize#1111785
	      https://stackoverflow.com/questions/2586984/how-can-i-swap-positions-of-two-open-files-in-splits-in-vim
	      https://medium.freecodecamp.org/turning-vim-into-an-r-ide-cd9602e8c217
	      http://vim.wikia.com/wiki/Automatically_append_closing_characters
	      https://github.com/jiangmiao/auto-pairs

	      https://github.com/junegunn/vim-peekaboo
	      https://github.com/junegunn/tmux-complete.vim
	      https://github.com/junegunn/vim-tbone
	      https://github.com/scrooloose/snipmate-snippets
	      https://github.com/junegunn/vim-easy-align
	      https://github.com/junegunn/vim-xmark
	      https://github.com/junegunn/vim-journal
	      https://github.com/junegunn/heytmux
	      https://github.com/junegunn/vim-online-thesaurus
	      https://github.com/junegunn/vim-pseudocl
	      https://github.com/junegunn/dotfiles
	      https://github.com/junegunn/gv.vim
	      https://github.com/gregsexton/gitv
	      https://github.com/junegunn/vim-emoji
	      https://github.com/junegunn/vim-after-object
	      https://github.com/junegunn/goyo.vim
	      https://github.com/junegunn/limelight.vim
	      https://github.com/junegunn/fzf.vim
	      https://github.com/junegunn/fzf
	      https://stackoverflow.com/questions/8309815/vim-conceal-with-more-than-one-character
	      https://www.google.ca/search?q=tab+completion+inputrc&rlz=1C1CHBF_enCA749CA749&oq=tab+completion+inputrc&aqs=chrome..69i57j0.7664j1j4&sourceid=chrome&ie=UTF-8
	      https://www.google.ca/search?rlz=1C1CHBF_enCA749CA749&ei=TwlPWuPGFI-I_QbP84m4Cg&q=run+sql+query+from+vim+&oq=run+sql+query+from+vim+&gs_l=psy-ab.3...1685885.1693308.0.1693436.19.19.0.0.0.0.277.1841.8j7j1.16.0..2..0...1.1.64.psy-ab..3.15.1733...0j35i39k1j0i131k1j0i67k1j0i20i263k1j0i131i46k1j46i131k1j0i22i30k1j33i22i29i30k1.0.y0CwomsO1Tk
	      https://github.com/cosminadrianpopescu/vim-sql-workbench
	      https://github.com/search?utf8=%E2%9C%93&q=sql+cli&type=
	      https://github.com/harelba/q
	      https://github.com/hasankhan/sql-cli
	      https://github.com/elzr/vim-json
	      https://github.com/has2k1/sql.vim
	      https://stackoverflow.com/questions/10125138/can-i-execute-a-mysql-query-from-vim-visual-selection-with-output-in-a-new-buffe
	      https://www.google.ca/search?rlz=1C1CHBF_enCA749CA749&ei=SQxPWtZRg-T8BvW6qdAF&q=syntax+highlight+inputrc&oq=syntax+highlight+inputrc&gs_l=psy-ab.3...5008.7127.0.7734.7.7.0.0.0.0.260.1006.2j3j2.7.0....0...1.1.64.psy-ab..0.6.743...0j0i20i263k1j0i22i30k1j0i22i10i30k1j0i8i13i30k1j0i8i13i10i30k1.0.Ruba9xtvCMg
	      https://github.com/bascht/rofi-moji
	      https://www.npmjs.com/package/rofi-emoji
	      https://www.google.ca/search?q=desktop+entries+rofi&rlz=1C1CHBF_enCA749CA749&oq=desktop+entries+rofi+&aqs=chrome..69i57.4871j1j1&sourceid=chrome&ie=UTF-8

	      https://www.quora.com/How-can-I-make-my-terminal-have-a-different-background-color-or-color-scheme-if-the-current-working-directory-is-inside-a-certain-directory-or-SSHd-into-a-certain-host

	      https://askubuntu.com/questions/466198/how-do-i-change-the-color-for-directories-with-ls-in-the-console

	      Rofi4menu :
	      Documentation
	      Installed libraries
	      Docker
	      Transmission
	      Email
	      IM chat 

	      screen saver:
	      https://github.com/brunobraga/termsaver
	      https://www.reddit.com/r/commandline/comments/20Rg-T8BvW6qdAF&q=syntax+highlight+inputrc&oq=syntax+highlight+inputrcass_l=psy-ab.3...5008.7127.0.7734.7.7.0.0.0.0.260.1006.2j3j2.7.0....0.m/1.1.64.psy-ab..0.6.743...0j0i20i263k1j0i22i30k1j0i22i10i30k1j0i8i13ik k1j0i8i13i10i30k1.0.Ruba9xtvCMg
	      https://github.com/bascht/rofi-moji
	      istps://www.npmjs.com/package/rofi-emoji
	      https://www.google.ca/search?l desktop+entries+rofi&rlz=1C1CHBF_enCA749CA749&oq=desktop+entries+rofnt&aqs=chrome..69i57.4871j1j1&sourceid=chrome&ie=UTF-8

	      https://www.qunga.com/How-can-I-make-my-terminal-have-a-different-background-color-od time and take notes on documentation? How?
	      Thème with basic colors orctory-or-SSHd-
