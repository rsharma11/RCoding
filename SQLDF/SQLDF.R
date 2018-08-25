#INSTALL libraies
install.packages("sqldf")
install.packages("PASWR")

#LOADING libraies and dataset
library(sqldf);library(PASWR)
df<-data("titanic3")

#LIMIT
sqldf("SELECT * from titanic3 LIMIT 3")

#COUNT
sqldf("SELECT COUNT (*) from titanic3")

#CREATING a SUBSET of titanic3 dataset
TitanicSubset2Cols <- sqldf("SELECT pclass, survived from titanic3")

sqldf("SELECT * from titanic3 Limit 6") 

#COUNTING all FEMALE passengers
sqldf("select count (*) from (select * from titanic3 WHERE sex = 'female')")

#COUNTING all FEMALE passenges & EMBARKED southampton
sqldf("select count (*) from (select * from titanic3 WHERE sex = 'female' AND embarked = 'southampton')")

#COUNTING distinct Cabin types
sqldf("SELECT COUNT (*) from (SELECT DISTINCT cabin from titanic3)")

#COUNTING all passengers whose name begins with A
sqldf("SELECT COUNT (*) from (SELECT * from titanic3 WHERE name LIKE 'A%')")
