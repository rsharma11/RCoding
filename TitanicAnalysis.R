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
cc <- filter(flights, flights$time_hour<"2013-02-01")
View(c)
View(cc)

#Delayed by more than an hour
d<-filter(flights,dep_delay>60)
View(d)

#Departure between midnight and five am
e<-filter(flights,flights$dep_time >=0 & flights$dep_time <=5)
View(e)

#Delayed by more than an hour
f<-filter(flights,flights$arr_delay>2*flights$dep_delay)
View(f)

#usage of select
?select()
select(flights,dep_delay)
select(flights,starts_with("sched",ignore.case = TRUE))
select(flights,ends_with("time",ignore.case = TRUE))
select(flights,contains("delay",ignore.case = TRUE))
select(flights,matches("_",ignore.case = TRUE))
#select(flights,num_range("sched",1:5,width=2))
select(flights,one_of("carrier","month", "hour", ignore.case = TRUE))
select(flights,everything())
select(flights,-year) %>% select(.,-month)

#usage of arrange
#Which flights were most delayed (N384HA)
arrange(flights,desc(dep_delay))
arrange(flights,desc(arr_delay))

#Which flights caught up the most time during the flight
arrange(flights,desc(dep_delay - arr_delay))

#Order the flights by departure date and time
arrange(flights, day, hour, minute)

#usage of mutate
#compute speed

flights %>%  
    mutate(time_in_min=hour*60+minute,
           speed = distance/time_in_min) %>% 
    select(tailnum, speed) %>% 
    arrange(desc(speed)) %>% 
    .[1,]
    
#time made up or lost
flights %>% 
  mutate(delta=dep_delay-arr_delay)


#compute hour and minute from dep

flights %>% 
  mutate(hour=dep_time%/%100,
         minute=dep_time%%100)

#usage of summary

flights %>%
  group_by(origin) %>% 
  filter(!is.na(dep_time)) %>% 
  summarise(total=sum(dep_delay)) %>% 
  system.time()

#data table style
flights[!is.na(dep_time), sum(dep_delay) , by =origin] %>%  system.time()

#1
flights %>% 
  filter(!is.na(arr_delay)) %>% 
  select(dest,arr_delay) %>% 
  group_by(dest) %>% 
  summarise(mean=mean(arr_delay), n=n()) %>%
  arrange(desc(mean))

#2
flights %>%
  select(year,month,day,carrier,flight)) %>%
  merge(year,flight)
 
#3

  