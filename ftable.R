library(datasets)

ftable(Titanic, row.vars = "Class")
#OR
ftable(Titanic, row.vars = 1)

ftable(Titanic, row.vars = 1, col.vars = 2)

ftable(Titanic, row.vars = 2, col.vars = 1)

ftable(Titanic, row.vars = 2, col.vars = 3)

data.frame(ftable(Titanic, row.vars = 2, col.vars = 3))

titanicStats <- ftable(Sex ~ Class + Age, data = Titanic)

write.ftable(x = titanicStats, file = "table1")

data1 <- read.ftable(file = "/Users/vimal/RCoding/table1")