library(dslabs)
data(murders)

library(dplyr)

# adding a murder rate column to the data frame
my_states = murders %>% mutate(rate = total/population*100000)

head(my_states)
#names(my_states)

# constructing a histogram
hist(my_states$rate)

#figuring out which state has the most murder rate
my_states$state[which.max(my_states$rate)]
max(my_states$rate)

# which region has the highest murder rate
boxplot(rate~region, data = my_states)

#my_states
