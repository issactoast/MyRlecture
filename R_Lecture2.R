library(magrittr)
# pipe operator %>% 

# pipe use the previous result as input
sum(a) %>% sqrt() %>% abs()
abs(sqrt(sum(a)))

a <- 10:1
b <- 1:10

# pipe can be applied to multiple input function
# min(1, 2, 3)
(a + b) %>% sum() %>% min(200, 50)

# make bigger object! Matrix
# cbind, rbind
a
b
myMat1 <- cbind(a, b)
myMat2 <- rbind(a, b)
# define Matrix
matrix(c(1:20), nrow = 4, ncol =5)
matrix(c(1:20), 4, 5)
matrix(c(1:20), nrow = 4, ncol =5, byrow = TRUE)
myMat3 <- matrix(c(1:20), nrow = 4, byrow = TRUE)
# matrix(c(1:20), nrow = 4, ncol =6, byrow = TRUE)
# matrix(c(1:31), ncol =7, byrow = TRUE)
dim(myMat1)
dim(myMat2)
dim(myMat3)

# pick element from matrix
c(myMat3[2,2], myMat3[3,4])
myMat3[c(2, 3),2]
myMat3[,2] # find all number in 2nd column
myMat3[3,] # find all number in 2nd row

myMat3
colnames(myMat3) <- c("Jan", "Feb", "Mar", "Apr", "May")
rownames(myMat3) <- c("1st", "2nd", "3rd", "4th")
myMat3[,c("Jan", "Mar")]

# add constant to column, row
myMat3[,"Mar"] <- myMat3[,"Mar"] + 20
myMat3
myMat3["2nd",] <- myMat3["2nd",] - 10
myMat3[myMat3 < 0] <- abs(myMat3[myMat3 < 0])
# myMat3[myMat3 < 0] <- myMat3[myMat3 < 0] %>% abs


