library(dplyr)
#setwd("")
#library(nycflights13)
#data("flights")


# loading flight data
load("hflights/data/hflights.rda")
#converting to tibble
hflights <- hflights %>%  as_data_frame() 
summary(flights)

getwd()



