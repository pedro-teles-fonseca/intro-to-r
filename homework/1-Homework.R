
# Homework 1

set.seed(123)

# Ex 1: Create the follow vectors:

# x: 100 observations from a normal distribution with mean=2 and sd=5
# y: 100 observations from a uniform distribution (min=1, max = 10). Tip: see ?runif
# z: The square roots of the first 100 natural numbers 


# Ex 2: now use x, y and z to build a 100 x 3 matrix with named columns. The matrix should be called M.


# Ex 3: Standerdize the N(2, 5) distribution and replace the values in column x with the corresponding standardized values.


# Ex 4: What is the standard deviation of column x of matrix M? Round the results to three digits.


# Ex 5:  without using the mean() function, compute the mean of y. Tip: use sum() and length()
#        compare your result with the true answer: mean(y)

# Ex 6: without using the sd() function, compute the mean of y. Tip: use mean()
#       Tip2: google the formula for the "sample standard deviation"
#       compare your results with the true answer:  sd(y)

# Ex 7: build a matrix called S that summarizes dataset X:
#       one (named) row for each variable. 
#       three (named) columns: minimum, median, maximum


# build vetor q: a vector with the quantiles 0, 0.25, 0.5, 0.75 and 1 of vetor y

# Run the following code

set.seed(123)

Mat <- cbind(
  x1 = rpois(100, 5),
  x2 = rt(100, 1),
  x3 = rbeta(100, 3, 3)
)

# what is the value of the largest x2?

max(Mat[, "x2"])


# In wich position of the matrix is that value?












