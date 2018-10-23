# dealing with NA

# raw data
d = c("1", "2", "3", "h")
d

# type coercion
d_int = as.integer(d)
d_int

# finding the mean
mean(d_int)

#sum(d_int)

#table(d_int)

#finding out the NAs in your dataset
# is.na returns a logical vector indicating where the NAs occur in your dataset
ind = is.na(d_int)

class(ind)
ind

# logical values will be coerced into 0 or 1 when it is a parameter for sum
sum(ind)

clean_d_int = d_int[!ind]
clean_d_int

#finding the mean and sum of the dataset
mean(clean_d_int)
sum(clean_d_int)
