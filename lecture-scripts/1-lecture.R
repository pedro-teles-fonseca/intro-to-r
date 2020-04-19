
## Introduction to R programming -- Lecture 1

# This is a comment. Use hashtags to comment
# Comments will be ignored by the compilor 

############ Functions and arithmetic with scalars ###################################### 

log(x = 5, base = 10) 

log(x = 5) # By default, R computes the natural logarithm (base = exp(1))

log(x = 5, base = exp(1)) # This will return the same as log(x = 5)

log(5, exp(1)) # argument names are not mandatory

log(base = exp(1), x = 5) # If you don't provide argument names, their order is irrelevant, since R knows what value to assign to each value

log(exp(1), 5) # Without names, R uses the default order. see ?log

# Skip argument names only if you know the correct order

?log

log10(10) # unlike log(), log10() computes base 10 logarithms by default

sqrt(25) # square root function

sqrt(2^log2(6)) # you can chain as many operations and function as you want. log2 computes the base 2 logarithm

z <-  46 + 8 # This is how you assign the result of a calculation to a variable

z

z <- 33 # This overwrights the previous assignment

z

pi # the value of pi

(r_rock <- 5) # "noisy" assignment. It does the assignment and prints the stored value to the console

r_rock

r_Rock # This will print an error. R is case sensitive! 

ls() # This function prints the name of all stored objects to the console.

rm(list = ls()) # This command deletes all stored objects

z # This will print an error. we just deleted tll saved objects!

############ Functions and arithmetic with vectors ###################################### 

myvec <- c(1, 3, 1, 42) # The c() functions combines several numbers into a single vector

myvec2 <- c(myvec, 1, 2) # It also combines vectors with numbers

myvec3 <- c(myvec, myvec2, c(1, 2)) # and vectors with other vectors

# The output of c() is always a vector

1:5 # a sequence from 1 to 5, one by one. 
5:1 # a sequence from 5 to 1

# sequences also are vectors!

x <- 1:5
y <- 5:1

z <- c(4, 8, 4, 1,6)

z[3] # What is the third element from vector z?
z[-3] # Prints vector z without the third element

z[4] # What is the fourth element from vector z?

z[4] <- 10 # This changes the fourth value of z. It is now 10
z
z[4]

z
z[c(1, 2)] # What are the first and second elements of z?

z[c(1, 2)] <- c(5, 6) # This overrights the first two values of z. The first value os now 5 and the second value os now 6

seq(from = 1, to = 10, by = 0.1) # increasing sequence from 1 to 10, steps of 0.1

seq(from = 10, to = 1, by = -0.1) # decreasing sequence from 10 to 1, steps of -0.1

seq(from = 1, by = 0.5, length.out = 20) # sequence with 20 elements, starting at 1 with steps of 0.5

seq(10, 1, -0.1) # remember: argument names are optional

rep(x = 1, times = 5) # creates a vector by repeating 1 five times
rep(10, 50) # vector of length 50 with five repeated tens

rep(x = c(3, 6), times = 3) # repeats (3, 6) three times

rep(c(3, 6), times = 3, each = 2) # repeats two consecutive times each element of c(3, 6). then repeats that pattern 3 times

myvec2 <- c(1, 3, 1, 42, -5, 10, -50)

myvec2_sorted <- sort(c(1, 3, 1, 42, -5, 10, -50)) # this will sort myvec2 in increasing order

sort(c(1, 3, 1, 42, -5, 10, -50)) # the "decreasing" argument is set to FALSE by default
sort(c(1, 3, 1, 42, -5, 10, -50), decreasing = FALSE) # same result as the previous line
sort(c(1, 3, 1, 42, -5, 10, -50), decreasing = TRUE) # sort a vector in decreasing order

set.seed(123) # This assures that we all get the same pseuro-random numbers 

rnorm(n = 5) # N random numbers extracted from a Normal(0, 1) distribution

# N(0, 1)

pnorm(0)   # P(X >= 0)    distribution function
dnorm(0.3) # P(X = 0.3) density function

# N N(2, 2)

pnorm(0, mean = 2, sd =2)   # P(X >= 0)
dnorm(0.3, mean = 2, sd =2) # P(X = 0.3)

rt(n = 2, 1) # Two random numbers from a t-student distribution with one degree of freedom (aka Cauchy distribution)

set.seed(123)

runif(n = 10, min = 0, max = 1) # 10 random extractions from a uniform(0, 1) distribution 

# Vectorized arithmetic:

x <- c(1, 2, 3)
y <- rep(x = 0.3, times = 3)

x + y # summation is performed element-wise

1/x  # the one is recyled. Division is then performed element-wise

x

x + 4 

x^y # element-wise exponentiation

1/1:5
1/seq(from = 1, to = 5, by = 1) # same as previous line

log(c(1, 3, 6)) # log function is applied to each element in the vector

exp(1:5) - 2 # exp() is applied to each element in the vector. Then 2 is subtracted from each element

exp(1:5) - c(1, 5 , 7, 8, 5) # element-wise subtraction in two vectors with the same length

set.seed(123)
rnorm(3) 
round(rnorm(3), digits = 3) #round the results to three digits

round(rnorm(3)) # by default, R rouds to 0 digits

# try:

round(0.9)
round(0.1)

z <- rnorm(10)
round(z, 3)

round(c(3.271109, 3.374961, 2.313307, 4.837787), digits = 2) # round also applies to vectors
round(c(3.271109, 3.374961, 2.313307, 4.837787), 2) # same as asbove 

abs(-3) # absolute value 
abs(3)

# Some vectorzed statistical functions

z 

abs(z) 
max(z) 
min(z)
mean(z)
median(z)
quantile(z, 0.5) # quantile 0.5 = median
sd(z) #standard deviation
var(z) # variance
sum(z)

set.seed(123)
vec <- rnorm(n = 10, mean = 2, sd = 1)

which(vec > 2) # Which elements of vec are greater than 2?
which(vec > 3) # Which elements of vec are greater than 3?
which(vec > 3.7) # Which elements of vec are greater than 3.7?

# which() gives the positions of the values that verify the condition, not their values!

set.seed(123)
vec2 <- rpois(n = 10, lambda = 2) # Vector with 10 elements extracted from a poisson distribution

which(vec2 == 2) # Which elements of vec2 are greater than 3?

max(vec2) # what is the greater element in vec?

which(vec2 == max(vec2)) # Which element of vec2 is equal to the greater value of vec2?

vec2[which(vec2 > 1)] # The elements of vec2 that are greater than 1

length(which(vec2>=3)) # How many elements of vec2 are greather than or equal to 3?

large_vector <- rnorm(10000, 5, 10) # a large vector. 10000 extractions from a N(5, 10) distribution
length(which(large_vector>15)) # How many elements in large_vector are larger than 15?

1:length(vec2) # same as
seq_along(vec2) # This is safer, however

# Trignometric functions

sin(pi/2)
cos(pi)

z

sin(z) + cos(z) # trig functions are also vectorized. As usual, summation is performed element-wise

length(x) == length(y) # Are two vectors of the same length? length = nuumber of elements


x <- c(1, 2, 3, 4)
y <- rep(0.5, times = 8)

x + y # summation of two vectors of different length. R recycles the shorter vector, i.e., re-uses its elements until it reaches the length of the longer vector.

x <- c(1, 2, 3, 4) # if, however, the length of the longer vector is not multiple of the length of the shorter vector, R will throw a warning message
y <- rep(0.5, times = 7)

x + y

named_vector <- c(x1 = 1, x2 = 4, x3 = 7) # This is a named vector
named_vector

names(named_vector)

y <- c(1, 4, 7) # This vector is not named (yet)
names(y) <- c("name1", "name2", "name3") # alternative way to name a vector
y

y[1] # first element of y
y["name2"] # element of y with name "name2"

named_vector[c("x1", "x3")] # subset vectors using more than one name


# Some usefull functions to generate sequences of names:

paste("name", 1:5)
paste("name", 1:5, sep = "-")
paste("observation", 1:5, sep = "_")
paste("year", 1990:1999, sep = "")
paste0("X", 1:10)


############ Matrices ###################################### 

matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2) # a 3x2 matrix. by default, numbers are arranged by column
matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2, byrow = FALSE)  # same as above

matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2, byrow = TRUE) # numbers arranged by row
matrix(c(1, 2, 3, 4, 5, 6), 3, 2, TRUE) # same as previous line
matrix(c(1, 2, 3, 4, 5, 6), 2, 3, TRUE) # This is a different matrix! without argument names, order matters!! This is a 2x3 matrix


v1 <- 1:3
v2 <- 4:6
v3 <- rnorm(3)

rbind(v1, v2, v3) # combine three vectors into a matrix. Each vector is now a row of the matrix

m <- cbind(v1, v2, v3) # combine three vectors into a matrix. Each vector is now a column of the matrix
m

ncol(m) # number of columns
nrow(m) # number of rows

dim(m) # number of rows and columns

mat2 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2)

# set matrix row names and column names:

rownames(mat2) <- c("name1", "name2", "name3")  
colnames(mat2) <- c("some-name", "some-other-name")

mat2

# subsetting matrices

mat2[3, 2] # element in row 3 column 2
mat2[1, 1] # element in row 1 column 1

mat2[, 2] # second column
mat2[1, ] # first row
mat2[c(1, 3), ] # first and third rows
mat2[c(1, 3), ] # first and third rows

set.seed(123)
mat3 <- matrix(rnorm(9), nrow = 3)
mat3

mat3[, c(1, 3) ] # first and third columns

diag(mat3) # main diagonal of the matrix

diag(mat3) <- rep(1, times = 3) # replace the main diagonal with ones

mat3

mat3[, -2] # drops the second column of mat3

# subset matrices by name

mat2

mat2[, "some-name"] 

mat2["name1", "some-name"]








