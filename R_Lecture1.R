a <- 4
a

b <- 2
b <- 3
a + b

# Arithmetic operation
a + b
a - b
a / b
a * b
a^2
sqrt(b) # b^0.5

a %% b  # mod
a %/% b # value

a <- 2
a <- c(1, 2, 3)
b <- c(4, 5, 6)

# sometimes vector can be longer than you think
a <- c(1:10)

# define vector with seq.
seq(0, 1, by = 0.01)
seq(0, 1, length.out = 4)


# recycling 
a <- c(1, 2, 3, 4)
a + 1          # a + c(1, 1, 1, 1)
a + c(1, 2)    # a + c(1, 2, 1, 2)
a + c(1, 2, 3) # a + c(1, 2, 3, 1) 


a <- seq(2, 100, by = 2) # even numbers
b <- seq(1, 100, by = 2) # odd numbers

a <- seq(1, 100, by = 2)
b <- a + 1




# define function
sum(a)

# function define grammar
# function_name <- function(input1, input2){
#   input1 + input2  
# }
mysum <- function(num1, num2){
    # return(num1 + num2)
    num1 + num2
}
mysum(1, 2)
mysum(a, 3)


mysub <- function(num1, num2){
  # return(num1 - num2)
  num1 - num2
}
mysub(1, 2)

# measure vector's length
a <- c(1, 2, 3, 4)
length(a)

# pick specific element in vector
a <- c(10:1)
a[1]
a[c(1, 3, 5)]
a[1:5]

# condition
a[a < 3] # actual value

# find element postion
which(a < 3) # element position which satisfied condition
which.max(a) # max position
which.min(a) # min position
# a[which(a < 3)]

# c(1, 2, 3)[c(TRUE, FALSE, TRUE)]
# c(1, 2, 3)[c(1, 3)]
# c(1, 2, 3) < 2 # c(1, 2, 3) < c(2, 2, 2)

mysum2 <- function(vec1){
  n <- length(vec1)
  
}

1 + 2 + 3 + .. + 10



mysum2 <- function(vec1){
  n <- length(vec1)
  result <- 0

  for (i in 1:n) {
    result <- result + vec1[i]
  }
  
  return(result)
}
mysum2(a)

mean(a)

mymean <- function(vec1){
  n <- length(vec1)
  result <- 0
  
  for (i in 1:n) {
    result <- result + vec1[i]
  }
  
  return(result/n)
}
mymean(a)

mymean2 <- function(input_vec){
  # use function that is already defined
  n <- length(input_vec)
  mysum2(input_vec) / n
}
mymean2(a)
