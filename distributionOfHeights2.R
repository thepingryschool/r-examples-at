library(dslabs)
library(ggplot2)

ggplot(data=heights,aes(x=heights$height)) + stat_ecdf()
#hist(heights$height)
