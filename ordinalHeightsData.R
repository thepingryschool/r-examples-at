library(dslabs)
data(heights)
head(heights)
x <- heights$height
class(x)


unique(x)
length(unique(x))
tab = table(x)
tab
