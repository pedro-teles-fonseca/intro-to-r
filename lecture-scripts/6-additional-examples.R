
f <-  factor(c("a", "b"), levels = c("a", "b", "c"))

factor(f)
factor(f, ordered = TRUE)
ordered(f)

as.factor(f)
as.ordered(f)


