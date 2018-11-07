library(dslabs)
library(dplyr)
library(ggplot2)
data("heights")

# histogram of male heights with counts
png(file = "HistogramCount.png")
heights %>%
  filter(sex=="Male") %>% ggplot(aes(height)) +
  geom_histogram(binwidth = 1)
dev.off()

# histogram of male heights
png(file = "HistogramWithDensity.png")
heights %>%
  filter(sex=="Male") %>% ggplot(aes(height)) +
  geom_histogram(aes(y=..density..), binwidth = 1)
dev.off()

# addition of smooth density curve to the prior histogram
png(file = "HistogramSmoothDensity.png")
heights %>%
  filter(sex=="Male") %>% ggplot(aes(height)) +
  geom_histogram(aes(y=..density..), binwidth = 1) +
  geom_density(col="#00BFC4", adjust = 2)
dev.off()
