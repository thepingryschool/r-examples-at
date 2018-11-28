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
sp = sp + geom_point(aes(color = region), size = 1)
#sp

# adding our own color and legend title
sp = sp + scale_color_manual(values = c("red", "blue", "green", "orange"), name = "Region")

# add the labels for each point
sp = sp + geom_text(nudge_x = 0.1)
#sp

# change x and y to log scale
sp = sp + scale_x_log10() + scale_y_log10()
#sp

# add labels
sp = sp + xlab("Population in millions (log scale)") + ylab("Total number of murders (log scale)")
#sp

# add ggtitle
sp = sp + ggtitle("US Gun Murders in 2010")
sp

# adjusting the title
sp = sp + theme(plot.title = element_text(hjust = 0.5))
sp

# changing the legend title
# capitalizing legend to Region
#sp = sp + scale_color_discrete(name = "Region")
sp
