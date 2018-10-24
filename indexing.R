#indexing using logical operators

v = c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)
which(v)

print("-------------------------")

library(dslabs)
data(murders)

index = match(c("New York", "Florida", "Texas"), murders$state)
index
murders$state[index]
murders$total[index]

print("-------------------------")

v2 = 1:10
v3 = c(2, 5, 7, 11)
v3 %in% v2
