library(nycflights13)
library(tidyverse)
nycflights13::flights
View(flights)
#Usage of filter
#Arrival delay of two or more hours
(delay <- filter(flights, arr_delay >= 120))
#Flew to Houston
View(Houston <- filter(flights, dest %in% c("IAH", "HOU")))
#Departure in summer
(summer <- filter(flights, month %in% c(7,8,9)))
#Arrived late by >2 hrs but dep delay = 0
(Arrival <- filter(flights, (arr_delay >= 120 & dep_delay == 0)))

#Usage of arrange
