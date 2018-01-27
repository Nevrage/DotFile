mkdir ~/github

# pipes.sh
cd ~/github
git clone https://github.com/pipeseroni/pipes.sh.git
cd pipes.sh
sudo make install
cd ~/github

#sc-im 
sudo apt install libzip-dev libxml2-dev bison  libncurses5-dev libncursesw5-dev
git clone https://github.com/andmarti1424/sc-im.git
cd sc-im
cd src && make && sudo make install 

# metropolis theme for latex beamer
cd ~/github
git clone https://github.com/matze/mtheme.git
cd mtheme
make sty
sudo make install
cd ~/github

