# basic data frame
x <- 10:1
y <- -4:5
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")
theDF <- data.frame(x, y, q)

# assigning names
theDF <- data.frame(First = x, Second =y, Sport = q)
theDF

# creates a three element list
list(1, 2, 3)

# creates a single element list where the only element is 
# a vector that has three elements
list(c(1, 2, 3))

# creates a two element list
# first element is a three element vector
# second element is a five element vector
(list3 <- list(c(1, 2, 3), 3:7))

# creates a two element list
# first element is a data.frame
# second element is a 10 element vector
list(theDF, 1:10)

# creates a three element list
# first is a data.frame
# second is a vector
# third is list3, which holds two vectors
list5 <- list(theDF, 1:10, list3)
list5

# checking names of each element
names(list5)

# assigning names to elements of list5
names(list5) <- c("data.frame", "vector", "list")
names(list5)

# viewing list5 with assigned names
list5

# names can also be assigned to list elements during creation using name-value pairs
list6 <- list(TheDataFrame = theDF, TheVector = 1:10, TheList = list3)
names(list6)

list6

# creating an empty list of a certain size, with vector
(emptyList <- vector(mode = "list", length = 4))

# accessing an individual element of a list using double square brackets
list5[[1]]

list5[["data.frame"]]

# once an element is access, it can be treated as if that actual element
# is being used, allowing nested indexing of elements
list5[[1]]$Sport

# appending elements to a list by using an index (either numeric or named) 
# that doesn't exist

# see how long it currently is
length(list5)

# add a fourth element, unnamed
list5[[4]] <- 2
length(list5)

# add a fifth element, named
list5[["New Element"]] <- 3:6
length(list5)

names(list5)

list5