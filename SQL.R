#Connection asking with password
con <- DBI::dbConnect(RMySQL::MySQL(), 
                      host = "localhost",
                      user = "root",
                      password = rstudioapi::askForPassword("Database password")
)  

#Connection asking without password
con <- DBI::dbConnect(RMySQL::MySQL(), 
dbname = "ranu_database2",                      
host = "localhost",
user = "root",
password = "abc123"
) 


#connect with table and extract city
tbl(con,"Persons") %>% select(City) %>% show_query()

?copy_to

#copy data from dataframe to SQL
copy_to(con, nycflights13::flights, "flights",
        temporary = FALSE, 
        indexes = list(
          c("year", "month", "day"), 
          "carrier", 
          "tailnum",
          "dest"
        )
)

tbl(con,"flights") %>% select(carrier) %>% show_query()
tbl(con,"flights") %>% select(year:day, dep_delay, arr_delay)
tbl(con,"flights") %>% filter(dep_delay > 240)

tbl(con,"flights") %>% group_by(dest) %>%
  summarise(delay = mean(dep_time)) %>% show_query()











#Disconnection 
library(DBI)
dbDisconnect(con)