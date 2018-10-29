#functions

#my_function <- function(VARIABLE_NAME){
  #perform operations on VARIABLE_NAME and calculate VALUE
  #VALUE
#}

avg = function(x){
  s = sum(x)
  n = length(x)
  s/n
}

x = 1:100
identical(mean(x), avg(x))
#> [1] TRUE

print("-----------------")

avg = function(x, arithmetic = TRUE){
  n = length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}

y = 1:10
avg(y)
avg(y, FALSE)
