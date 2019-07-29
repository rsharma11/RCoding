# This is code to explore data and get hidden data insights
# Code developed by Ranu Sharma

# loading libraries
library(tidyverse)
library(nycflights13)
diamond_data <- diamonds

ggplot(data = diamond_data, mapping = aes(x = x)) +
  geom_histogram(binwidth = 0.25)

ggplot(data = diamond_data, mapping = aes(x = y)) +
  geom_histogram(binwidth = 0.25)

ggplot(data = diamond_data, mapping = aes(x = z)) +
  geom_histogram(binwidth = 0.25)

ggplot(data = diamond_data, mapping = aes(x = price)) +
  geom_histogram(binwidth = 0.25) +
  ylim(0, 70)

diamond_data %>% 
  filter(carat == 0.99)

diamond_data %>% 
  filter(carat == 1)

