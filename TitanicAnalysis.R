library(dplyr)
#setwd("")
#library(nycflights13)
#data("flights")


# loading flight data
load("hflights/data/hflights.rda")
#converting to tibble
hflights <- hflights %>%  as_data_frame() 
#summary(flights)
getwd()
View(hflights)
View(planes)
View(flights)
Summary(flights)
class(flights)
flights

#usage of filter
#To SFO or OAK
a<-filter(flights,flights$dest=="SFO")
View(a)
b<-filter(flights,flights$dest %in% c("SFO","OAK"))
View(b)

#In January
c<-filter(flights,flights$month==1)
View(c)

#Delayed by more than an hour
d<-filter(flights,flights$dep_delay>60)
View(d)

#Departure between midnight and five am
e<-filter(flights,flights$dep_time )
View(e)

#Delayed by more than an hour
f<-filter(flights,flights$arr_delay>2*flights$dep_delay)
View(f)

