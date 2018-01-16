library(colorout)
library(tidyverse)
library(jsonlite)
library(crayon)
library(grDevices)

options(prompt = blue("⇨  "))

makecolors <- function() {
  wal <- fromJSON("~/.cache/wal/colors.json")
  colors <- wal$colors
colorize <- function(x) {
	  paste(as.vector(col2rgb(x)), collapse = ";")
  }
  colours <- lapply(colors, colorize)

lapply(colours, function(x){paste(x)})

  escaped <- lapply(colours, function(x){
			    paste("\x1b[38;2;", x, "m",sep="")
})


  setOutputColors256(normal = 40, negnum = 209, zero = 226,
                   number = 214, date = 179, string = 85,
                   const = 35, false = 203, true = 78,
                   infinite = 39, stderror = 33,
                   warn = c(1, 0, 1), error = c(1, 15),
                   verbose = TRUE, zero.limit = NA)

  setOutputColors256( normal = escaped[[3]],
                      number  = escaped[[2]],
                      negnum = escaped[[3]],
                      date = escaped[[4]],
                      string = escaped[[5]],
                      const = escaped[[6]],
                      stderror = escaped[[7]],
                      true = escaped[[8]],
                      false = escaped[[9]])
                                       }

makecolors()
cc <- function() cat(c("\033[2J","\033[0;0H"))

rm(makecolors)

cc()
