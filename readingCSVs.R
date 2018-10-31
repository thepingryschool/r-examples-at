# reading CSVs

#theUrl = "http://www.jaredlander.com/data/Tomato%20First.csv"
theUrl = "/Users/athuzar/Desktop/R/TomatoFirst.csv"
tomato = read.table( file = theUrl, header = TRUE, sep = ",")

class(tomato)
tomato
 
print("-----------------")
dim(tomato)
ncol(tomato)
nrow(tomato)
