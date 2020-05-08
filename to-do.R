
# meter a função ifelse nos slides dos vetores e quando estiver retirar dos slides dos DFs


set.seed(1)

Sales <-data.frame(
  Product = sample(c("Toaster", "Radio", "TV"),
    size = 7, replace = TRUE),
  CustomerID =c(14, 14, 56, 92, 309, 569, 600)
  )

Sales$Price <- round(ifelse(
  Sales$Product == "TV", rnorm(1, 400, 20),
  ifelse(Sales$Product == "Toaster",
    rnorm(1, 40, 2), rnorm(1, 35, 2))))

set.seed(1)

Clients <-data.frame(
  CustomerID =c(56, 92, 102, 309, 569),
  State = sample(c("CA", "AZ", "IL", "MA"),
    size = 5, replace = TRUE))

name <- c("Anne", "Pete", "Frank", "Julia", "Cath") 
age <- c(28, 30, 21, 39, NA)
child <- c(FALSE, FALSE, TRUE, FALSE, TRUE)
heights <- c(175, 170, 166, 182, 172) 

people <- data.frame(name, age, child, 
  stringsAsFactors = FALSE)
people$height <- heights


df[["marital"]] <- NULL


d <- data.frame(
  a = 1:4,
  b = letters[4:1],
  c = c("yes", "yes", "no", NA)
)

d[d$c == "yes", ]
d$c == "yes"




