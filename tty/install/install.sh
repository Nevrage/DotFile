# pipes.sh
cd
git clone https://github.com/pipeseroni/pipes.sh.git
cd pipes.sh
sudo make install
cd

#sc-im 
sudo apt install libzip-dev libxml2-dev bison  libncurses5-dev libncursesw5-dev
git clone https://github.com/andmarti1424/sc-im.git
cd sc-im
cd src && make && sudo make install 
