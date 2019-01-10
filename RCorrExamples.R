m <- c(9, 9, NA, 3, NA, 5, 8, 1, 10, 4)
n <- c(2, NA, 1, 6, 6, 4, 1, 1, 6, 7)
p <- c(8, 4, 3, 9, 10, NA, 3, NA, 9, 9)
q <- c(10, 10, 7, 8, 4, 2, 8, 5, 5, 2)
r <- c(1, 9, 7, 6, 5, 6, 2, 7, 9, 10)
# combine them together
theMat <- cbind(m, n, p, q, r)

# using "everything"
# the entirety of all must be free of NAs, otherwise the result is NA
#cor(theMat, use = "everything")

# using "all.obs"
# even a single NA in any column will cause an error
#cor(theMat, use = "all.obs")

# using "complete.obs"
# it keeps only rows where every entry is not NA
# will return an error if not a single complete row can be found
cor(theMat, use = "complete.obs")

# using "na.or.complete"
# it keeps only rows where every entry is not NA
# will return NA if not a single complete row can be found
cor(theMat, use = "na.or.complete")

# calculate the correlation just on complete rows
cor(theMat[c(1, 4, 7, 9, 10), ])

# compare "complete.obs" and computing on select rows
# should give the same result
identical(cor(theMat, use = "complete.obs"), cor(theMat[c(1, 4, 7, 9, 10), ]) )

# the entire correlation matrix
cor(theMat, use = "pairwise.complete.obs")

#compare the entries for m vs n to this matrix
cor(theMat[, c("m", "n")], use = "complete.obs")

# compare the entries for m vs p to this matrix
cor(theMat[, c("m", "p")], use = "complete.obs")
