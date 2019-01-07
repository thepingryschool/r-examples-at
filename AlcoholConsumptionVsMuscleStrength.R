# pulling Alcohol Consumption vs Muscle Strength data
dat<-read.table("https://newonlinecourses.science.psu.edu/stat501/sites/onlinecourses.science.psu.edu.stat501/files/data/alcoholarm/index.txt", header=T)
head(dat,3)

# scatterplot
plot(dat$alcohol,dat$strength)

# correlation
cor(dat$alcohol,dat$strength)

# lm function
r <- lm(strength ~ alcohol, data = dat)
r

# add regression line
abline(r)

# full report
summary(r)

# names to access regression object
names(r)

# fitted values
r$fitted.values
fitted.values(r)

# plot alcohol vs fitted values
plot(dat$alcohol, r$fitted.values)

# if you want to make predictions for a certain x manually
# Estimate (Intercept) + Estimate alcohol * x value
26.36954 - 0.29587 * 15

# using coefficients to predict
coefficients(r)
r$coefficients[1]+r$coefficients[2]*15

# using predict command
predict(r,data.frame(alcohol=c(15,25,100)))

# with confidence interval
# what is the range of mean value of strength given alcohol value of 15 (sampling distribution)
predict(r,data.frame(alcohol=c(15,25,100)), interval = "confidence", level = 0.9)

# with prediction
# what is the range of likely value of strength given alcohol value of 15
# wider than confidence interval (has more randomness)
predict(r,data.frame(alcohol=c(15,25,100)), interval = "prediction", level = 0.9)

# extrapolation is using the model to make predictions outside of the range of input data
# 100 is out of the input data and gets a negative strength
# do NOT assume that the pattern continues both ways beyond the input data as a linear line
