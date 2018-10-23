# This example script shows the properties of vectors


# 2 ways to create a vector
v1 = c(1L, 2L, 3)
v1
v2 = seq(1, 10)
v2
v3 = 1:10
v3
# coercion
v4 = c(1L, 2L, 3, "4", "h")
v4

print("-------------------")

#vectors hold same type
typeof(v1)
class(v1)
typeof(v2)
class(v2)
typeof(v4)

print("-------------------")

#length of a vector
length(v2)

print("-------------------")

#a vector of length 0 is NULL
a = c()
a

print("-------------------")

#vectors can have attributes or names
at = c('A', 'B', 'C')
names(v1) = at
v1
print("-------------------")

v5 = c(C = 1, D = 2)
v5
print("-------------------")
v6 = c("A" = 2, 'B' = 3)
v6
print("-------------------")
names(v6)
attributes(v5)

#vectors do not have dimension
ve = c(1, v2, c("a", "b"))
ve
