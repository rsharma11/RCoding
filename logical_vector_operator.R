# Loading the data
data <- mtcars

# Output rows where column  mpg  is between 15 and 20 (excluding 15 and 20)
data[(data$mpg>15 & data$mpg<20),]

# Output rows where column  cyl = 6 and column  am = 0
data[(data$cyl == 6 & data$am == 0),]

# Output rows where column  cyl = 6 and column  am = 0
data[(data$cyl == 6 & data$am == 0),]

# Output rows where column  gear  or  carb  has the value 4
data[(data$gear == 4 | data$carb == 4),]

# output only the even rows of data
even_index <- seq(2,nrow(data),2)
data[even_index,]

# change every fourth element in column  mpg  to 0
data$mpg <- 0

#  rows where columns  vs  and  am  have the same value 1
data[(data$vs & data$am > 0),]

#  rows where at least  vs  or  am  have the value 1
data[(data$vs > 0|| data$am > 0),]

#  Change all values that are 0 in the column  am  in  data  to 2
data$am <- 2

#  Add 2 to every element in the column  vs
data$vs+2

#  Output only those rows of  data  where  vs  and  am  have different values
data[abs(data$vs - data$am)>0,]