#conditionals
library(dslabs)

a = 0

if(a!=0){
  print(1/a)
} else{
  print("No reciprocal for 0.")
}
#> [1] "No reciprocal for 0."
print("----------------------")

#ifelse is a function
a = 0
ifelse(a > 0, 1/a, NA)
#> [1] NA

print("----------------------")

#vectorize
a <- c(0,1,2,-4,5)
result <- ifelse(a > 0, 1/a, NA)

class(result)
result

print("----------------------")

# another useful way to use the ifelse function
data(na_example)
no_nas <- ifelse(is.na(na_example), 0, na_example)
sum(is.na(no_nas))
#> [1] 0

print("----------------------")
