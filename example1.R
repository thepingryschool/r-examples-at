x = c(1, 2, 3, 1, 2, 3, 4, 5, 5, 5, 5)
#table(x)

# NA example
x = c("1", "2", "3", "5", "hello")
y = as.numeric(x)
y

# NULL example
z = c(1, 2, NULL)
z

t = c(1, 2)
#names(cost) = t
#cost
s = c(3, 4, 5)
#names(cost) = c(t, s)
#cost
u = c(2, 3 ,4)
#names(cost) = c(t, s, u)

#which_min
cost = c(50, 75, 90, 100, 150)
which.min(cost)



#factors
class(murders[["region"]])
levels(murders[["region"]])



#looking up
abbs <- c("DC")
ind <- match(abbs, murders$abb)
murders$population[ind]

# deleting names
cost
names(cost) = NULL
cost

#creating a data frame
s = c(3, 4, 5, 6, 7)
d = data.frame(cost, s)
str(d)
head(d)

#extracting data
cost[cost < 50]
cost[cost == 90]


# order and rank

cost_rev = rev(cost)
cost_rev

# rank them
r = rank(cost_rev)
r
#s = rank(cost)
#s

# order the indices
or = order(r)
#os = order(s)

#print out using the ranked and ordered indices
cost[or]
