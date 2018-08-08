library(dplyr)
library(tidyverse)
library(reshape2)

######################################
length(lynx)
order(lynx)
which(lynx < 500)
subset(lynx, lynx < 500)

######################################
install.packages("ggplot2")
library(ggplot2)

hist(x = lynx, xlab = "", ylab = "", col = c("green", "red"), 
     main = "Exercise Question\nHistogram", sub = "r-tutorials.com")
######################################

class(iris)
mysepal <- iris$Sepal.Length
summarise(iris, sum(mysepal))
summarise(iris, mean(mysepal))
summarise(iris, median(mysepal))
summarise(iris, max(mysepal))
summarise(iris, min(mysepal))
summary(object = mysepal)

######################################

x = c(3,6,9)
myvec <- c(1,rep(x, 4),1)
myvec[5]
nth(myvec, 5)	
class(myvec)

######################################
attach(mtcars)
subset(mtcars,am == 1) -> mysubset
mysubset[c(1,2),c(1,2)]
######################################

mysubset[c(1:9),c(1:11)]
head(mtcars, 9)

######################################
?arrange
arrange(mtcars, carb)

######################################

group_by(iris, Species) %>% 
  summarise(mean(Sepal.Length), mean(Sepal.Width))

######################################

a<-c(1,2)
b<-rep(a,75); length(b)

######################################

irisx<-head(mutate(iris, b))

######################################

melt(irisx)
by(irisx[,c(1,3,4)], irisx$b, colSums)

######################################
length(subset(lynx,lynx < 500))
######################################

length(subset(iris,iris$Sepal.Length >= 5))
######################################

plot(iris$Sepal.Length, iris$Sepal.Width, xlim = c(3,9), ylim = c(0,5), xlab = "Sepal Length", ylab = "Sepal Width") 
text(6,1, "r-tutorials.com", col = "red", cex = 2, lwd = 2)