
###############################################################

## Examples: Vectorized arithmetic vs Non vectorized arithmetic

###############################################################

set.seed(123)

## Example 1:  "Standardize" observations from normal(5, 3) distribution

x <- rnorm(n = 100, mean = 5, sd = 3) # 100 pseudo-random extractions from a N(5, 3) distribution

# Non-vectorized calculation

results <- vector(length = length(x))

for (i in 1:length(x)) {
  
  results[i] <- (x[i] - 5)/3

}

results

# Vectorized calculation

(x-5)/3

# Are they the same?

results == (x-5)/3 

## Example 2:  Sum two vectors

# Non-vectorized calculation

y <- rpois(n = 100, lambda = 2)

results2 <- vector(length = length(x))

for (i in 1:length(x)) {
  
  results2[i] <- x[i] + y[i]
  
}

results2

# Vectorized calculation

x+y

###################################

z <- rnorm(10000, 1, 2)

mean(z)
sd(z)

sum(z)/length(z)
sqrt((1/length(z))*sum((z-mean(z))^2))


A <- matrix(data = c(1, 2, 3 ,4 ,5 , 6), nrow = 2, ncol = 3)
A

B <- matrix(data = c(1, 2, 3 ,4 ,5 , 6), nrow = 2, ncol = 3, byrow = TRUE)
B

set.seed(123)

a <- 1:4
b <- seq(from = 1, by = 0.5, length.out = 4)
c <- round(rpois(4, lambda = 2), 2)

A <- rbind(c(1, 3), c(2, 4))
B <- matrix(1:4, ncol = 2, byrow = TRUE)
A
B

solve(A)
A %*% B
B %*% A

A
2*A
A + 5

B <- matrix(rep(1, times = 4), ncol = 2)

A + B
A-B
C <- matrix(rep(2, times = 4), ncol = 2)

A*C
A/C

t(rbind(
c(0.17, 893),
c(2.00, -3)
))


M <- matrix(c(1, 5, 3, 7), ncol = 2, byrow = TRUE)

rownames(M) <- c("x1", "x2")
colnames(M) <- c("y1", "y2")

M
M[, "y1"]
M["x2", "y1"]
