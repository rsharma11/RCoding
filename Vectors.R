x <- c(4,6,5,7,10,9,4,15)
c(4,6,5,7,10,9,4,15) < 7

p <- c (3, 5, 6, 8)
q <- c (3, 3, 3,4)
p+q

Age <- c(22, 25, 18, 20)
Name <- c("James", "Mathew", "Olivia", "Stella")
Gender <- c("M", "M", "F", "F")

a<-cbind(Age, Name, Gender)
b<-data.frame(a)
b[c(1:2),]

z <- 0:9
digits <- as.character(z)
as.integer(digits)

x <- c(1,2,3,4)
(x+2)[(!is.na(x)) & x > 0] -> k

data(AirPassengers)

x <- c(2, 4, 6, 8)
y <- c(TRUE, TRUE, FALSE, TRUE)
sum(x[y])

x <- c(34, 56, 55, 87, NA, 4, 77, NA, 21, NA, 39)
sum(is.na(x))