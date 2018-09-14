#Usage of lapply
lapply(LIST, FUNCTION, ...)

list1 <- list(observationA = c(1:5, 7:3), observationB=matrix(1:6, nrow=2))

#length of the list
lapply(list1, length)

#sum of the list
lapply(list1, sum)

#quantiles of the list
lapply(list1, quantile)

#class of list1
lapply(list1, class)

#DerivativeFunction
DerivativeFunction <- function(x) { log10(x) + 1 }
lapply(list1, DerivativeFunction)

#unique values of list1
lapply(list1, unique)

#range of list1
lapply(list1, range)

#print list1
lapply(list1, print)

#Convert the above output to a vector
unlist(lapply(list1, print))
