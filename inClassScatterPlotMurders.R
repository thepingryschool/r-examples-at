library(dslabs)
library(ggplot2)

# first graph object with Data
sp = ggplot(data = murders, aes(x = population/10^6, y = total, label = abb) )
# sp = ggplot(data = murders)
# sp = ggplot(murders)
#class(sp)
#sp
#head(murders)

# geometric layer: scatter Plot
sp = sp + geom_point(size = 1)
#sp

sp = sp + geom_text(aes(color = region), nudge_x = 0.1)
#sp

sp = sp + scale_x_log10() + scale_y_log10()
#sp

sp = sp + xlab("Population in millions (log scale)") + ylab("Total number of murders (log scale)")
sp
