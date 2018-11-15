#### Install packages
install.packages("sparklyr")

#### Load the libraries
library(sparklyr)

#### Install Spark version 2.1.0 
spark_install(version = "2.1.0")

#### Create a Spark session
conf <- spark_config()
conf$`sparklyr.shell.driver-memory` <- "16G"
conf$spark.memory.fraction <- 0.8

sc <- spark_connect(master = "local", config = conf, version = "2.1.0")

## Copy data into Spark

if(!file.exists("data"))dir.create("data")

if(!file.exists("data/2003.csv.bz2")){
  download.file("http://stat-computing.org/dataexpo/2009/2003.csv.bz2", "data/2003.csv.bz2")
}
if(!file.exists("data/2004.csv.bz2")){
  download.file("http://stat-computing.org/dataexpo/2009/2004.csv.bz2", "data/2004.csv.bz2")
}

#### Retrieving the column names

top_rows <- read.csv("data/2003.csv.bz2", nrows = 5)
file_columns <- top_rows %>% 
  purrr::map(function(x)"character")
rm(top_rows)