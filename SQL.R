#Connection asking with password
con <- DBI::dbConnect(RMySQL::MySQL(), 
                      host = "localhost",
                      user = "root",
                      password = rstudioapi::askForPassword("Database password")
)  

#Connection asking without password
con <- DBI::dbConnect(RMySQL::MySQL(), 
host = "localhost",
user = "root",
password = "abc123"
) 

#Disconnection 
library(DBI)
dbDisconnect(con)
