
# Homework 1

set.seed(123)

# Create the follow vectors:

# x: 100 observations from a normal distribution with mean=2 and sd=5
# y: 100 observations from a uniform distribution (min=1, max = 10). Tip: see ?runif
# z: The square roots of the first 100 natural numbers 

x <- rnorm(100, 2, 5)
y <- runif(100, 1, 10)
z <- sqrt(1:100)

# now use x, y and z to build a 100 x 3 matrix with named columns. The matrix should be called M.

M <- cbind(x, y, z)

# Standerdize the N(2, 5) distribution and replace the values in column x with the corresponding standardized values.

M[, "x"] <- (x-2)/5

# What is the standard deviation of column x of matrix M? round the results to three digits.

round(sd(M[, "x"]), digits = 3)

# without using the mean() function, compute the mean of y. Tip: use sum() and length()
# compare your result with the true answer: mean(y)

(mean_y <- sum(y)/length(y))
mean(y)

# without using the sd() function, compute the mean of y. Tip: use mean()
# Tip2: google the formula for the "sample standard deviation"
# compare your results with the true answer:  sd(y)

(sqrt(sum(((y-mean(y))^2))/(length(y)-1)))
sd(y)

# Build a matrix called S that summarizes our dataset M. You shoud create a 3x3 matrix with
  # one (named) row for each variable (variables are x, y and z). 
  # three (named) columns: minimum, median, maximum.

S <- matrix(
  c(
    min(x), median(x), max(x),
    min(y), median(y), max(y),
    min(z), median(z), max(z)
  ), nrow = 3, byrow = TRUE
)

colnames(S) <- c("Min", "Median", "Max")
rownames(S) <- colnames(S)

# build vetor q: a vector with the quantiles 0, 0.25, 0.5, 0.75 and 1 of vetor y

quantile(y, probs = seq(from = 0, to = 1, by = 0.25))

# Run the following code

Mat <- cbind(
  x1 = rpois(100, 5),
  x2 = rt(100, 1),
  x3 = rbeta(100, 3, 3)
)

# what is the value of the largest x2?

(max_x2 <- max(Mat[, 2]))

# In which position of the matrix is that value?

which(Mat[, 2] == max_x2)  # position (9, 2)











