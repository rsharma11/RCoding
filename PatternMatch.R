#grepl,gregexpr,regexpr,sub.gsub

text1 <- "The current year is 2016"

#check if there is any digit
my_pattern <- grepl(pattern = "\\d+", text1)
grepl(pattern = "[0-9]", text1)

#find all the positions in text1 where there is a digit
string_position <- gregexpr(pattern = "[0-9]", text = text1)

#positions with one upper and one digit
my_pattern <- "[[:upper:][:digit:]]"
grepl(my_pattern,text1)

#positions with first blank position
regexpr("[[:blank:]]", text1)

#positions of pattern with one lower, any character, and one digit
gregexpr("[[:lower:].[:digit:]]", text1)

#pattern with one space, lower case alphabet, lower case alphabet, one space
pattern <- "\\s[a-z][a-z]\\s"
regexpr(pattern, text = text1)

#Replacing above pattern
text2 <- sub(pattern = pattern, replacement = " is not ", text1)

#pattern with four digits at the end
pattern <- "\\d{4}$"
string_pos4 <- gregexpr(pattern, text = text2)

#Extracting first two digits from above extracted substring position
substr(x = text2, start = 25, stop = 26)

