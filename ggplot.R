# GGplot

library(ggplot2)
# Basic barplot
p<-ggplot(data=dataWithoutMap, aes(x=UniqueCarrier, y=avgDel, fill=UniqueCarrier)) +
  geom_bar(stat="identity")
p

# Horizontal bar plot
p + coord_flip()