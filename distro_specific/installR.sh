# install R
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y r-base r-base-dev

# Install colourout
git clone https://github.com/jalvesaq/colorout.git
R CMD INSTALL colorout

# copy .Rprofile



########### DEBIAN
sudo apt-get install software-properties-common python-software-properties

echo "deb https://pbil.univ-lyon1.fr/CRAN//bin/linux/debian jessie-cran34/" > /etc/apt/sources.list
sudo apt-get install -y --force-yes r-base r-base-dev
git clone colorout and install it

#dependencies for tidyverse:

sudo apt-get update -qq && apt-get -y --no-install-recommends install \
  libxml2-dev \
  libcairo2-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libssh2-1-dev \
  libcurl4-openssl-dev \
  libcurl-openssl-dev \
  libssl-dev


		#R (copy the R profile first)
git clone https://github.com/jalvesaq/colorout.git
R CMD INSTALL colorout
sudo R --vanilla <<EOF
install.packages('tidyverse', repos='http://cran.us.r-project.org')
install.packages('devtools', repos='http://cran.us.r-project.org') 
devtools::install_github("hadley/lazyeval")
install.packages('lubridate', repos='http://cran.us.r-project.org') 
install.packages('ggplot2', repos='http://cran.us.r-project.org') 

q()
EOF


# install shiny server
	# copy exemples
	# add the shiny user and its password
	# reinstall the libraries
