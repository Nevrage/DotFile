library(colorout)
library(tidyverse)
library(jsonlite)
library(crayon)

options(prompt=blue('⇨'))

colors <- fromJSON("~/.cache/wal/colors.json")


colorize  <- function (x) {paste(as.vector(col2rgb(x)), collapse = ",")}




normal_color <-  unlist(strsplit(colorize(colors$colors[[1]]),",") %>% lapply(as.integer)) %>% as.numeric

number_color  <- unlist(strsplit(colorize(colors$colors[[2]]),",") %>% lapply(as.integer))%>% as.numeric

negnum_color  <- unlist(strsplit(colorize(colors$colors[[3]]),",") %>% lapply(as.integer))%>% as.numeric

date_color  <-   unlist(strsplit(colorize(colors$colors[[4]]),",") %>% lapply(as.integer)) %>% as.numeric

string_color  <- unlist(strsplit(colorize(colors$colors[[5]]),",") %>% lapply(as.integer)) %>% as.numeric

const_color  <-  unlist(strsplit(colorize(colors$colors[[6]]),",") %>% lapply(as.integer)) %>% as.numeric

error_color  <-  unlist(strsplit(colorize(colors$colors[[7]]),",") %>% lapply(as.integer)) %>% as.numeric



setOutputColors256(normal = normal_color,
		   number = number_color,
		   negnum = negnum_color,
		   date = date_color,
		   string = string_color,
		   const = const_color,
		   stderror = error_color)

cc <- function() cat(c("\033[2J","\033[0;0H"))
cc()
