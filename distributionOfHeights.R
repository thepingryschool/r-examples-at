library(dslabs)
data(heights)

class(heights$sex)

# This two category frequency table
# is the simplest form distribution
prop.table(table(heights$sex))
