# Load the datasets and define some variables
library(dslabs)
data(murders)

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total

#png(file="popuPlot.png")
#plot(population_in_millions, total_gun_murders)
#dev.off()

# Transform population using the log10 transformation and save to object log10_population
log10_population = log10(murders$population)
# Transform total gun murders using log10 transformation and save to object log10_total_gun_murders
log10_total_gun_murders = log10(total_gun_murders)
# Create a scatterplot with the log scale transformed population and murders
#png(file="logPopuPlot.png")
#plot(log10_population, log10_total_gun_murders)
#dev.off()

# Store the population in millions and save to population_in_millions
population_in_millions <- murders$population/10^6


# Create a histogram of this variable
png(file="popuHist.png")
hist(population_in_millions)
dev.off()
