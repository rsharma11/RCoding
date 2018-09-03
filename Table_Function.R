#Data frame creation
Gender <- c("Female","Female","Male","Male")
Restaurant <- c("Yes","No","Yes","No")
Count <- c(220, 780, 400, 600)
DiningSurvey <- data.frame(Gender, Restaurant, Count)
DiningSurvey

#Compare gender & Restaurant
table(DiningSurvey$Gender)
table(DiningSurvey$Restaurant)

#Summarize Data
table(DiningSurvey$Count>650)

#Finding NA values
DiningSurvey$Restaurant <- c("Yes", "No", "Yes", NA)
table(DiningSurvey$Restaurant,useNA = "always")
table(is.na(DiningSurvey$Gender))

#Exclude gender Male
table(DiningSurvey$Gender, exclude = "Male")

#margin.table() Data summed over Sections
RentalUnits <- matrix(c(45,37,34,10,15,12,24,18,19),ncol=3,byrow=TRUE)
colnames(RentalUnits) <- c("Section1","Section2","Section3")
rownames(RentalUnits) <- c("Rented","Vacant","Reserved")
RentalUnits <- as.table(RentalUnits)
margin.table(RentalUnits,margin = 2)

#tables of proportions 
prop.table(RentalUnits)
prop.table(RentalUnits, margin = 1)
prop.table(RentalUnits, margin = 2)

#Summarize the table
ftable(RentalUnits)

#Chi-Square Test of Independence
summary(object = RentalUnits)

#list frequencies
as.data.frame(RentalUnits)

#creates arbitrary margins
addmargins(RentalUnits)
addmargins(RentalUnits, 1) #Columnwise
addmargins(RentalUnits, 2) #Rowwise
addmargins(prop.table(RentalUnits,2)) #Proportion