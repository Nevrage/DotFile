# home cooked functions
clear <- function() cat(c("\033[2J","\033[0;0H"))
len <- length()
li <- library()
insta <- install.packages()

library(colorout)
library(tidyverse)
library(sf)
library(RMySQL)
clear()

## Greetings
# time and date 
# Starting VersionName Version_number as User on MachineName running: Unix/windows: OS_arch with GUI
# amount of ram, number core for CPU/GPU 

cat("Greetings!", "\n", as.character(Sys.time()), "\n")
cat("\n","\n","\n","\n")
cat("Starting ", R.Version()[[6]],".",R.Version()[[7]]," (",R.Version()[[14]],")",
    " as ",Sys.info()[[7]], " on ", Sys.info()[[4]]," running ",Sys.info()[[1]],": ",.Platform$arch,
    " with ", .Platform$GUI,
    "\n",sep="")
# library(parallel)
# detectCores 
# add version for ubuntu ? 
# add ram ? (methos depends on the OS ? )


# if linux setwd in ~
# if windows set wd in equivalent 
        #### some new default for certain options 
# -for invokink system commands
# -for reading csv
# -for accessing a DB 
options(dependencies=TRUE)

# log everything into a text file and never ask if saves, but easy project management too 

