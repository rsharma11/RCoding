library(dplyr)
df <- mtcars
head(df)

############
df %>% filter(mpg > 20 & cyl == 6)
df %>% arrange(cyl, desc(wt))
df %>% select(mpg, hp)
df %>% select(gear) %>% distinct()
df %>% mutate(Performance=hp/wt)
df %>% summarise(mean(mpg))
df %>% filter(cyl == 6) %>% summarise(mean(hp))
############

