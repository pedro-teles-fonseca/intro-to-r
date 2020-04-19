
# Homework 2

# 1 # Create the following matrix:

A <- matrix(c(-1, 1, 2, 
              -5, 3, 4,
              10, 8, -4), 
            ncol = 3, 
            byrow = TRUE)

# 1.1 # Compute the determinant of A and the inverse matrix of A


# 1.2 # Extract the elements from the main diagonal of A and return them as a 3x1 matrix


# 2 # Create the following objects:

B <- matrix(c(1, 2, 3, 4), ncol = 2)
y <- c(1,2)

# 2.1 # Solve the following matricial equation: ((B'B)^{-1})B'y,
      # where B' is the transpose of B, (B'B)^{-1} is the inverse matrix of (B'B)

# 2.2 See this page: https://www.chilimath.com/lessons/advanced-algebra/inverse-of-a-2x2-matrix/ 
# and see the formula for the inversion of a 2x2 matrix. With that formula, compute the inverse of B.
# Compare your result with solve(B)

# 3  Run this code:

air <- as.matrix(airquality) 

# 3.2 # What are the column names of air?

# 3.3 # How many rows an columns are there in air?

# 3.4 # How many NAs? 

# 3.5 # How many rows without NAs?

# 3.6 # How many rows with NAs?

# 3.7 # How many NAs are there in each column? 

# 3.8 # Replace the NAs in the "Solar.R" column by zero. Use your answer from #3.7# to verify if your solution worked.

# 3.9 # Replace the NAs in "Ozone" by the mean of Ozone. 

# 3.10 # How many observations are from May (Month == 5) ? 

# 3.11 Build a matrix called Weather_may with:
    # only the Wind and Temp columns and
    # only observations from May 









