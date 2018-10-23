library(dslabs)
data("murders")


#murders$abb
#murders[["abb"]]
class(murders$abb)

#str(murders)

#head(murders)

# vectorization
x = c(1, 2, 3, 4)
y = c(1, 2, 3, 4)
#x + y

# the max total murders
max(murders$total)
