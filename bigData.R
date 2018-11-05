library(dplyr)
library(ggplot2)

# Create connection to the database
air <- src_postgres(
  dbname = 'flight',
  host = 'localhost',
  port = '8080',
  user = '',
  password = 'imacpassword123$'
)