library(dslabs)
library(ggplot2)

# histogram of carat counts with mean line added to it
png(file = "DiamondsCaratHist.png")
h = ggplot(diamonds, aes(x = carat)) + geom_histogram(fill="blue", alpha=.5, binwidth = 0.2)
h + geom_vline(aes(xintercept=mean(diamonds$carat)),
            color="blue", linetype="dashed", size=1)
dev.off()

# Smooth Density Estimation over histogram
png(file = "SmoothDensityWHistogram.png")
hs = ggplot(diamonds, aes(x = carat))
hs = hs + geom_histogram(aes(y=..density..), color="black", fill="blue", alpha = .5)
hs
hs + geom_density(adjust = 1, alpha=.3, fill="#FF6666")
dev.off()

# Smooth Density Curve
png(file = "SmoothDensity.png")
s = ggplot(diamonds, aes(x = carat))
s + geom_density(adjust = 1, alpha=.3, fill="#FF6666")
dev.off()

# overlaying different groups1
png(file = "SmoothDensity1.png")
s1 = ggplot(diamonds, aes(carat, color = cut))
s1 + geom_density(adjust = 1, alpha= .3)
dev.off()

# overlaying different groups2
png(file = "SmoothDensity2.png")
s1 = ggplot(diamonds, aes(carat, fill = cut))
s1 + geom_density(adjust = 1, alpha= 1)
dev.off()
