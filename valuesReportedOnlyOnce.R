library(dslabs)
data(heights)
tab <- table(heights$height)
sum(tab==1)


tab1 = as.data.frame(tab)
x = sum(tab1$Freq == 1)
x
