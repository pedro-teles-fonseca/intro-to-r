
# Homework 2

# Create the following matrix:

A <- matrix(c(-1, 1, 2, 
              -5, 3, 4,
              10, 8, -4), 
            ncol = 3, 
            byrow = TRUE)

# Compute the determinant of A and the inverse matrix of A

det(A)
solve(A)

# Extract the elements from the main diagonal of A and return them as a 3x1 matrix

matrix((diag(A)))

# Create the following objects:

B <- matrix(c(1, 2, 3, 4), ncol = 2)
y <- c(1,2)

# Solve the following matricial expression: ((B'B)^{-1})B'y,
# where B' is the transpose of B, (B'B)^{-1} is the inverse matrix of (B'B)

solve(t(B)%*%B)%*%t(B)%*%matrix(y)

# See this page: https://www.chilimath.com/lessons/advanced-algebra/inverse-of-a-2x2-matrix/ and
# see the formula for the inversion of a 2x2 matrix. With that formula, compute the inverse of B.
# Compare your result with solve(B)

(1/det(B))* rbind(c(B[2,2], -B[1, 2]), c(-B[2, 1], B[1,1]))

solve(B)

# Run this code:

air <- as.matrix(airquality) 

# What are the column names of air?

colnames(air)

# How many rows an columns are there in air?

nrow(air)
ncol(air)
dim(air)

# How many NAs? 

sum(is.na(air))
table(is.na(air))["TRUE"]

# How many rows without NAs?

nrow(na.omit(air))

# How many rows with NAs?

nrow(air) - nrow(na.omit(air))

# How many NAs are there in each column? 

colSums(is.na(air))

# Replace the NAs in the "Solar.R" column by zero. Use your answer to the last question to verify if your solution worked.

air[is.na(air[, "Solar.R"]), "Solar.R"] <- 0
colSums(is.na(air))

# Replace the NAs in "Ozone" by the mean of Ozone. 

air[is.na(air[, "Ozone"]), "Ozone"] <- mean(air[, "Ozone"], na.rm = TRUE)
colSums(is.na(air))

# How many observations are from May (Month == 5) ? 

table(air[, "Month"])["5"]

# Build a matrix called Weather_may with:
  # only the Wind and Temp columns and
  # only observations from May 

Weather_may <- air[air[, "Month"] == 5, c("Wind", "Temp")]









