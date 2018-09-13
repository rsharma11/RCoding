x <- "Hallo Guten morgen! "

#Total number of characters in string x
nchar(x)


x <- c ("Nature’s", "Best ")
nchar(x)

x <- c("Nature’s"," At its best ")
nchar(x)

fname <- "Steve"
lname <- "Johnson"
cat(fname,lname)

m <- "Capital of America is Washington"
substr(m, start=1, stop=18)

n<-"Success is not final, failed is not fatal"
sub(pattern = "failed", replacement = "failure", x = n)

Names <- c("John", "Andrew", "Thomas")
Designation <- c("Manager", "Project Head", "Marketing Head")
data.frame(Names, Designation)
