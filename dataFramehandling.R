#create datafrane from vector
Age <- c(22, 25, 26)
Weight <- c(150, 165, 120)
Sex <- c('M', 'M', 'F')
df <- data.frame(Age, Weight, Sex)
names <- c('Sam', 'Frank', 'Amy')
row.names(df) <- names

#checking the class of the dataframe
is.data.frame(mtcars)

#converting matrix into dataframe
mat <- matrix(1:25, nrow = 5)
as.data.frame(mat)

#operations on mtcars
df <- mtcars
head(mtcars, n = 6)

#operations on mtcars
mean(df$mpg)

#Select rows where all cars have 6 cylinders
df[df$cyl == 6,]
df[df[2] == 6,]
subset(df,cyl==6)

#Select columns am, gear, carb
df[, 9:11]
df[, c('am', 'gear', 'carb')]

#Create new column permormance = hp/wt
perform <- data.frame(df$hp/df$wt)
colnames(perform) <- 'performance'
cbind(mtcars, perform)