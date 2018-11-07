# using ggplot2

library(ggplot2)
data(diamonds)

# structure of the diamonds data frame
#str(diamonds)

#because histograms are one-dimentional displays of data,
# we only need to specify one aesthetic mapping
png(file="caratHist.png")
ggplot(data = diamonds) + geom_histogram(aes(x = carat))
dev.off()

# save basics of ggplot object to a variable
g = ggplot(diamonds, aes(x = carat, y = price))
g
# need to add the geometric layer to render the graph
g = g + geom_point()
g

# facet_wrap takes the levels of one variable, cuts up the
# underlying data according to them, makes separate pane
# for each set, and arrange them to fit the plot
g + geom_point(aes(color = clarity)) + facet_wrap(~color)

# facet_grid assigns all levels of a variable to either a
# row or a column
g + geom_point(aes(color = clarity)) + facet_grid(cut~clarity)

# faceting works with histograms or any other geometric layers
#h = ggplot(diamonds, aes(x = carat)) + geom_histogram() + facet_wrap(~color)
h
