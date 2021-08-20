# Install Package 
install.packages('tidyverse')
install.packages('readxl')

# Run Library
library(tidyverse)
library(readxl)

# Read File Excel
rm(list = ls())

# Dir file excel
setwd('C:/Users/MuhammadGusKhamim/Documents/Folder Data CSV/vais/')

# read file
my_files <- list.files(pattern = "*.xlsx")
my_files

#  
nba = lapply(my_files, function(i){
  x = read_excel(i,sheet=1)
  
  x$file = i
  
  x
})
nba[1]
nba = do.call('rbind.data.frame', nba)
