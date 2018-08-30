data <- readLines("http://www.r-exercises.com/wp-content/uploads/2016/11/gambler.txt")

#Number of Paragraphs in the text
length(data)

#Number of characters in the text
nchar(data)

#Collapse paragraphs into one
CollapsedData <- paste(data, collapse="\n")

#Convert to Uppercase
gambler-upper.txt <- toupper(data)

#Change all letters ‘a’ and ‘t’ to ‘A’ and ‘T’
chartr("at", "AT", data)

#finding word in a text
'lucky' %in% data

#Total number of words in a text
w <- strsplit(CollapsedData, " ")
length(w[[1]])

#Matching word 'money'
grepl('money',w[[1]])
sum(w[[1]][] == 'money')

div <- function(x,y){
  
  z = x/y
  return(z)
  
}