# creating an array, a multidimensional vector
# all must be of the same type
# individual elements are access using square brackets
# elements are row index, column index, outer dimensions
theArray <- array(1:12, dim = c(2, 3, 2))
theArray

# accessing elements using square brackets
theArray[1, , ]

theArray[1, , 1]

theArray[, , 1]
