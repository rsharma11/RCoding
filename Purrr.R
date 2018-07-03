#### This file will contain function from purrr

install.packages("tidyverse")
library(dplyr)
library(hflights)
n = c(2, 3, 5) 
s = c("aa", "bb", "cc", "dd", "ee") 
b = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
x = list(n, s, b, 3)   # x contains copies of n, s, b 

x = as.list(c(1:10))
y = as.list(c(1:10))
z = as.list(c(1:10))

library(dplyr)
library(purrr)
y_sqrt = map(y,sqrt)
flights <- as_tibble(hflights)
View(flights)

# write a function to get square of a value
sqr <- function(x) {
  return(x*x)
}

y_sqrt = purrr::map(y,sqr)


# write a function to get sum of two value
sum <- function(x, y) {
  return(x+y)
}

y_sum = map2(x,y,sum)


# write a function to get sum of three value
sum3 <- function(x, y, z) {
  return(x+y+z)
}


listoflist = list(x,y,z)
y_sum = pmap(listoflist, sum3)

#### Assignment 1: calculate average departure delay for each carrier

avgDeptDelay  <- function(){

avgDepDelay <- flights %>% 
                  na.omit() %>% 
                  select(UniqueCarrier,DepDelay) %>% 
                  group_by(UniqueCarrier) %>% 
                  summarise(avgDel = mean(DepDelay))
  
  return(avgDepDelay)
  
}

# Function to get avg dept delay
#' @description Function to get avg dept delay
#' @param carrierName Unique identifier of carrier
#' @return a tibble with Unique identifier and avg delay

avgDeptDelayByName  <- function(carrierName){
  
  avGDepDelay <- flights %>% 
                  na.omit() %>% 
                  filter(UniqueCarrier == carrierName) %>% 
                  select(UniqueCarrier,DepDelay) %>% 
                  group_by(UniqueCarrier) %>% 
                  summarise(avgDel = mean(DepDelay))
  
  return(avGDepDelay)
  
}

# creating a list of unique carrier

carrierList <- flights %>% 
                  select(UniqueCarrier) %>% 
                  unique() 

       

test  =map(carrierList,avgDeptDelayByName)




df <- data_frame(flights)
group_by(flights,origin)
select()




tidy_output =flights %>% 
                na.omit() %>% 
                select(tailnum, dep_delay) %>% 
                 group_by(tailnum) %>% 
                 summarise(Avg_delay = mean(dep_delay))


avgDelay  <- function(one.tailnum){
result = flights %>% 
          na.omit() %>% 
          select(tailnum, dep_delay) %>% 
          filter(tailnum == one.tailnum) %>% 
          mutate(AvgDelay  = mean(dep_delay)) 
          
  return(result$AvgDelay %>%  unique())
}

allTailNum = flights$TailNum %>%  unique()
delay_output  =map(allTailNum,avgDelay) 

func_output = data.frame(tailnum  = allTailNum,
                        Avg_delay =as.vector(delay_output))

