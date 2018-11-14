# Scatter Plot on murders data

library(dslabs)
library(ggplot2)
library(dplyr)

# first associate the graph with the data and create a data object
sp = ggplot(murders)
#class(sp)
#sp

# the first added layer is to define the Geometry (add size later)
sp = sp + geom_point(aes(x = population/10^6, y = total, size = 3))
#sp

# add the layer geom_text (add nudge_x later)
sp = sp + geom_text(aes(population/10^6, total, label = abb), nudge_x = 1)
#sp

sp = ggplot(murders, aes(population/10^6, total, label = abb))
sp = sp + geom_point(size = 3)
sp = sp + geom_text(nudge_x = 1)
#sp

# local overrides global
#sp = sp + geom_text(aes(label = "Hello there!" ))
#sp

# scale axis to log10
#sp  = sp + scale_x_continuous(trans = "log10") + scale_y_continuous(trans = "log10")

# more efficient code
sp = sp + scale_x_log10() + scale_y_log10()

# adding labels
sp = sp + xlab("Population in millons (log scale)") + ylab("Total number of murders (log scale)") + ggtitle("US Gun Murders in 2010")
sp
