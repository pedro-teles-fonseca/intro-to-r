
## Lecture 2

mymatrix <- matrix(1:6, ncol = 3, byrow = TRUE)



mymatrix[, 1] <- c(5, 5)

mymatrix

mymatrix[2, 3] <- 60

mymatrix

A <-  matrix(1:4, ncol = 2)
B <- matrix(2:5, ncol = 2)

A

A * 2

A - 2
A + 2


A
A * B

A + B 

A * B
B * A


t(A)
solve(A)

A <- rbind(c(1, 3), c(2, 4))
B <- matrix(1:4, ncol = 2, byrow = TRUE)

det(A)
det(B)

A %*% B

B %*% A

solve(A)

rm(list = ls()) # clears the blobal enviroment 

A <- rbind(
  c(3, 2),
  c(1, 1)
)

b <- c(8, 2)


solve(A, b)

solve(A) %*% b

### Non-numerical values

x <- FALSE

x <-  c(FALSE, TRUE, FALSE)

cbind(
  c(FALSE, TRUE, FALSE),
  c(FALSE, TRUE, FALSE)
)

x <-  5
x

x == 5

x == 3

x != 3

1<4
1<=4

x_log <- log(5, base = 10)
y_log <- log(5, base = exp(1))

y_log == x_log

y_log >= x_log

y_log
x_log

vec_x <- c(1, 5, 6, 7, 3)
vec_y <- c(1, 6, 8, 2, 1)

vec_x == vec_y
vec_x != vec_y

!TRUE
!FALSE
!c(TRUE, FALSE, TRUE, TRUE, FALSE)

x_logical <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
!x_logical

!(vec_x >= vec_y)

factorial(5)
5*4*3*2
prod(5,4,3,2)

rm(b) # delete an object from the global environment

myvec <- c(5, -2.3, 4, 4, 1)
myvec[c(1, 3)]
myvec[c(TRUE, FALSE, TRUE, FALSE, FALSE)]

length(myvec)

myvec[c(TRUE, FALSE)]

mymat <- matrix(1:9, nrow = 3)

mymat[, c(TRUE, FALSE, TRUE)]

mymat[c(TRUE, TRUE, FALSE), ]

myvec <- c(5, -2.3, 4, 4, 1)

myvec_negative <- myvec[myvec < 0]
myvec_negative

myvec2 <- c(5, -2.3, 4, 4, 1, -1, -6, 1)

myvec2<0

myvec2_negative <- myvec2[myvec2<0]

mymat <- matrix(1:9, nrow = 3, byrow = TRUE)

mymat<5

mymat

mymat[mymat<5] <- 0

mymat[mymat == 0] <- -1

mymat <- matrix(1:9, nrow = 3, byrow = TRUE)

which(mymat<5)

mymat[which(mymat<5)] <- 0
mymat

is.logical(5) 
is.logical(c(5 , 7, 0))
is.logical(TRUE)
is.logical(FALSE)
is.logical(NA)

y <- c(1 , 3, 4 , NA)
y + 1

NA + 4
NA * 4

(NA + 3) > 0

y <- c(1, 2, 3, 7, 0.5, NA)

y_without_nas <- y[-6]


sum(y, na.rm = TRUE)
sum(y_without_nas)

y

y_new <- na.omit(y)
mean(y_new)

is.na(y)

is.na(c(1, 2, 3, 7, 0.5, NA))

sum(is.na(y))

M <- matrix(c(1:3, NA, c(5, NA)), 2, 3, TRUE)

is.na(M)
sum(is.na(M))

M[is.na(M)] <- 0
M

M <- cbind(
  y = c(3, NA, 7, 1),
  x1 = c(1, 7, 9, 6),
  x2 = c(6, 7, 9, NA)
)

M[, "y"]
is.na(M[, "y"])

median(M[, "y"], na.rm = TRUE)

M[is.na(M[, "y"]), "y"] <- median(M[, "y"], na.rm = TRUE)

M

median(M[, "x2"], na.rm = TRUE)

M[is.na(M[, "x2"]), "x2"] <- median(M[, "x2"], na.rm = TRUE)

M

y <- c(1, 2, 3, NA, 6, NA, 9, NA)

table(is.na(y))

table(c(1,1,1,3,4,4,4,47,7,8))

sum(is.na(y))

table(is.na(y))

as.numeric(TRUE)
as.numeric(FALSE)

as.logical(0:5)




(6<4) || (3!=1)
(6<4) && (3!=1)

y <- c(1, 5, 3, 1, 2, 9)
y

(y>2) & (y<6)
(y>2) | (y<6)


y[y>2 & (y<6 & y !=3)]

y[y>2 & (y<6 | y !=3)]

y <- c(1, 5, 3, NA, 2, 9)

any(y>2, y<6, !is.na(y))
all(y>2, y<6, !is.na(y))

foo <- "hello" 
foo2 <- 'world'

vec <- c("hellooooo", "world")
foo

length(vec)

nchar(vec)

sum(nchar(vec))


ex1 <- "The ’R’ project for statistical computing"

pi

paste("the life of", pi)
paste("the life of", 3.14)
v <- paste("the life of", "someone", "else")
v

paste("the life of", "someone", "else", sep = " ")
paste("the life of", "someone", "else", sep = "")
paste("the life of", "someone", "else", sep = "-")
paste("the life of", "someone", "else", sep = "!")
paste("the life of", "someone", "else", sep = "...")

paste("X", 1:5, sep = "_" )

paste0(1:3, c("!", "!", "!"), sep = "", collapse = "")

paste0("X", 1:5)
paste0("X", 1:5, collapse = "")

paste("the resut is", 3+3)
paste("the resut is", 4+NA)

vec <- c("awsome", "R", "is")
vec[1]

paste(vec[2], vec[3], vec[1], sep = "-")

paste(vec[2], vec[3], "totally", vec[1],"?", sep = "-")

c("23", "4")
is.numeric(c("23", "4"))
is.character(c("23", "4"))

c("23", "4") + c("23", "4")
c("23", "4") * 4

"alpha" == "alpha"
"alpha" != "alpha"

"Alpha" == "alpha"

"Alpha" > "alpha"
"alpha" > "alPha"

"Alpha" < "alpha"

range(runif(10, 0, 1))

