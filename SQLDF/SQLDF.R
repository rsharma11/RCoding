install.packages("sqldf")
install.packages("PASWR")

library(sqldf);library(PASWR)
df<-data("titanic3")

sqldf("select * from titanic3 limit 3")

sqldf("select count (*) from titanic3")

TitanicSubset2Cols <- sqldf("select pclass, survived from titanic3")

sqldf("select * from titanic3 Limit 6") 

sqldf("select count (*) from (select * from titanic3 WHERE sex = 'female')")


