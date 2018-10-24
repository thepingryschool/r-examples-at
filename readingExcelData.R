#another reading example
# no factors in the data.frame

# add as.is = TRUE
theUrl = "/Users/athuzar/Desktop/R/sampleData.csv"
testing = read.table( file = theUrl, header = TRUE, sep = ",")
class(testing)
dim(testing)

str(testing)
head(testing)

names(testing)

class(testing$Letters)
class(testing$Numbers)
