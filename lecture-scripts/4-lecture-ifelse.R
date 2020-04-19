

?ifelse


vec <- c(1:10)


ifelse(vec > 5, 10, 5)

ifelse(vec > 5, "large", "small")

ifelse(vec > 5, vec-1, vec + 1)


ifelse(vec > 5, "large",
       ifelse(vec>3, "medium", "small"))





