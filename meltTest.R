library(reshape2)

# example data frame
x = data.frame(
  id   = c(1, 1, 2, 2),
  blue = c(1, 0, 1, 0),
  red  = c(0, 1, 0, 1)
)

x

melt(data = x)

# collapse the data frame
melt(data = x, id.vars = "id", measure.vars = c("blue", "red"))
