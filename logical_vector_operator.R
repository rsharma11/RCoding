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

