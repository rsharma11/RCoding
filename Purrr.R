#### This file will contain function from purrr

n = c(2, 3, 5) 
s = c("aa", "bb", "cc", "dd", "ee") 
b = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
x = list(n, s, b, 3)   # x contains copies of n, s, b 

x = as.list(c(1:10))
y = as.list(c(1:10))
z = as.list(c(1:10))

library(purrr)
y_sqrt = map(y,sqrt)



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

