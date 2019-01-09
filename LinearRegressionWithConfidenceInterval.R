library(dplyr)
library(ggplot2)

# Galton Families Data
library(HistData)
data("GaltonFamilies")

head(GaltonFamilies, 5)

HistData::GaltonFamilies

galton_heights <- GaltonFamilies %>%
  filter(childNum == 1 & gender == "male") %>%
  select(father, childHeight) %>%
  rename(son = childHeight)

g = galton_heights %>% ggplot(aes(son, father))
g + geom_point() + geom_smooth(method = "lm")
