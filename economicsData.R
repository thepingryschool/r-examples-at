library(ggplot2)
library(reshape2)
library(scales)
data(economics)

head(economics)
#pce is the personal consumption expenditures
#psavert is the personal savings rate

# correlation between spending and saving
cor(economics$pce, economics$psavert)

#economics[,c(2, 4:6)]

#build the correlation matrix
econCor = cor(economics[,c(2, 4:6)])
econCor

#melt it into the long format
econMelt = melt(econCor, varnames = c("x", "y"), value.name= "Correlation")
econMelt

#order it according to the correlation
econMelt = econMelt[order(econMelt$Correlation),]

econMelt

## plot it with ggplot2
# init the plot with x and y on the x and y axes
base = ggplot(econMelt, aes(x=x, y=y))
# draw tiles filling the color based on Correlation
base = base + geom_tile(aes(fill=Correlation))

# make the fill(color) scale a three color gradient with muted
# red for the low point, white for the middle and stell blue
# for the high point
# the guide should be a colorbar with no ticks, whose height is
# 10 lines
# limits indicates the scale should be filled from -1 to 1
base = base + scale_fill_gradient2(low=muted("red"), mid="white", high="steelblue", guide = guide_colorbar(ticks=FALSE, barheight = 10), limits=c(-1,1))
# use the minimal theme so there are no extras in the plot
base = base + theme_minimal()
# make the x and y labels blank
base = base + labs(x=NULL, y=NULL)

base
