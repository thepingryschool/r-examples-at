# theme examples

library(ggplot2)
library(ggthemes)

#build a plot and store it in g2
g2 = ggplot(diamonds, aes(x=carat, y = price))

g2 = g2 + geom_point(aes(color = color))


#apply a few themes
g2 + theme_economist() + scale_color_economist()
g2 + theme_excel() + scale_color_excel()
g2 + theme_tufte()
g2 + theme_wsj()
