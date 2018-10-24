# dplyr package
# provides functionality for manipulating data frames

# mutate, filter, select and %>% operator

library(dplyr)

col1 = c("A", "B", "C", "D", "E")
col2 = 1:5

# by default data.frame function turns character vectors
# into Factors
df = data.frame(Names = col1, Q1 = col2)
str(df)

print("-------------------------")
df
print("-------------------------")

# set stringsAsFactors to FALSE to keep character vectors
df = data.frame(Names = col1, Q1 = col2, stringsAsFactors = FALSE)
str(df)

df = mutate(df, Q2 = seq(72, 80, 2) )
class(df)

print("-------------------------")
df
print("-------------------------")

df$Q3 = seq(45, 65, 5)

print("-------------------------")
df
print("-------------------------")

below50 = filter(df, Q3 <= 50)
class(below50)

# the pipe operator
df %>% filter(Q2 < 75)

new_table = df %>% select(Names, Q3)
class(new_table)

print("-------------------------")
new_table
print("-------------------------")


df %>% select(Names, Q3) %>% filter(Q3 < 50)
