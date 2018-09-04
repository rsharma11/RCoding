library(caret)
library(doSNOW)

#===============================================
#Load Data
#===============================================
train <- read.csv("all/train.csv")
View(train)

#===============================================
#Replace missing embarked values with mode
#===============================================
table(train$Embarked)
train$Embarked[train$Embarked==""] <- "S"

#===============================================
#Handeling missing age data
#===============================================
summary(train$Age)
train$MissingAge <- ifelse(is.na(train$Age),"Y","N")

#===============================================
#Add feature for family size
#===============================================






