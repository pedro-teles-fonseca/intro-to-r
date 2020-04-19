
## Lecture 3


vec <- c(1, 5, 0.1)

str(vec)


str(matrix(c("a", "u", "mk", "q!"), ncol = 2))




typeof(c(TRUE, FALSE, 2))

as.numeric(c(TRUE, FALSE, 2))


my_list <- list(
  matrix(c(1, 5, -1, 4), ncol = 2),
  c("S", "M", "S", "W"),
  "I-am-a-string",
  c(TRUE, FALSE, FALSE)
)

str(my_list)

names(my_list) <- c("Number", "Letters", "a_lonely_string", "T_or_F")

my_list

my_list <- list(
  some_numbers = matrix(c(1, 5, -1, 4), ncol = 2),
  some_letters = c("S", "M", "S", "W"),
  a_lonely_string = "I-am-a-string",
  T_or_F  = c(TRUE, FALSE, FALSE)
)

num_vec <- 1:3
char_mat <- matrix(c("a", "b", "c", "m"), ncol = 2) 
a_lonely_string <- "Hello!"
a_factor <- factor(c("Yes", "No", "Yes"))

my_list2 <- list(
  char_mat = num_vec,
  a_lonely_string = a_lonely_string,
  a_factor = a_factor,
  old_list = my_list
)

str(my_list2)

str(as.list(c("yes", "no")))

num_matrix <- matrix(1:4, ncol = 2)

as.list(num_matrix)

str(my_list)

my_list[1]
is.matrix(my_list[1])
is.list(my_list[1])

str(my_list[1])

my_list[[1]]

str(my_list[[1]])
is.matrix(my_list[[1]])
is.list(my_list[[1]])


my_list["some_letters"]
my_list[2]

my_list[["some_letters"]]

a_short_list <- list(
  a = c(1, 2),
  b = 3)

my_list[c(1,2)]

a_short_list[["a"]]


rec_l <- list(a = list(b = list(c = list(d = 3))))


rec_l[["a"]][["b"]][["c"]][["d"]]
rec_l[[1]][["b"]][["c"]][["d"]]
rec_l[[1]][[1]][[1]][[1]]


my_list[c(2, 3)]

my_list[[2]][1]
my_list[[2]][4]

my_list[[c(2, 1)]] # same as my_list[[2]][1]

my_list[[2]][c(1, 4)]

my_list[[1]][, 2]
my_list[[1]][1, ]

my_list[[1]][2, 2]

str(my_list)
length(my_list)


my_list[[5]] <- matrix(c(0.21, 0.45, 0.6, 3), ncol = 2)

str(my_list)


my_list$new_thing <- list(c(1, 5), "some-stuff", matrix(1:6, nrow = 2))

str(my_list)

my_list[[6]][[3]][2, 3]
my_list[["new_thing"]][[3]][2, 3]

list1 <- list(1, 2)
list2 <- list(c("Sun","Mon"), c(1, 2))
list3 <- list("Hi!")

merged.list <-  c(list1, list2, list3)


str(my_list)

my_list$new_thing <- NULL

str(my_list)

my_list[5] <- NULL

str(my_list)

l <- list( x = 1:2,
           y = c("ab", "3"),
           m = matrix(1:4, ncol = 2) 
           )

unlist(l)


## data frames 

vec <- 1:5

vec > 2

ifelse(vec > 2, 2, 1 )

ifelse(1:5 > 2, "large", "small")


heights <- c(1.66, 1.88, 1.76, 1.68, 1.7, 1.9)

shirts <- ifelse(heights >= 1.9, "XL",
                 ifelse(heights > 1.8, "L", 
                        ifelse(heights>1.75, "M", 
                               "S")
                        )
                 )

df <- data.frame(
  age = c(20, 38, 50, 19),
  smoker = c(TRUE, FALSE, FALSE, FALSE),
  marital = factor(c("M", "S", "W", "S"))
)

df

summary(df)

str(df)

typeof(df)

class(df)



name <- c("Anne", "Pete", "Frank", "Julia", "Cath") 
age <- c(28, 30, 21, 39, 35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)

df2 <- data.frame(
  name, 
  age, 
  child
)

df3 <- data.frame(
  c(1, 4, 6),
  c(6, 7, 9)
)

names(df3)

names(df3) <- c("a-name", "some-other-name")
names(df3)

df4 <- data.frame(
  age = c(35, 27, 18),
  hair = c("blond", "brown", "black"),
  row.names = c("Bob", "Susan", "Sam") # row names!
)

df4
rownames(df4) <- c("Bob M.", "Susan B.", "Sam L.")

typeof((c("John", "Matt", "Mary")))
is.factor((c("John", "Matt", "Mary")))

df5 <- data.frame(
  person = c("John", "Matt", "Mary"), 
  age = c(20, 38, 50),
  smoker = c(TRUE, FALSE, FALSE),
  marital = factor(c("M", "S", "S"))
)

str(df5)

df5 <- data.frame(
  person = c("John", "Matt", "Mary"), 
  age = c(20, 38, 50),
  smoker = c(TRUE, FALSE, FALSE),
  marital = factor(c("M", "S", "S")),
  stringsAsFactors = FALSE
)

str(df5)

as.data.frame(matrix(1:9, ncol = 3))


name <- c("Anne", "Pete", "Frank", "Julia", "Cath") 
age <- c(28, 30, 21, 39, NA)
child <- c(FALSE, FALSE, TRUE, FALSE, TRUE)

people <- data.frame(name, age, child, stringsAsFactors = FALSE)


people[3, ]
people[c(1, 3), ]

people[3, 2]
people[3, "age"]

people[, "age"]

people[, c(1, 3)]

people[c(3, 5), c(1, 3)]

people[c(3, 5), c(2,3)]
people[c(3, 5), c("age", "child")]

people[c(1, 2), "age"]
people[1, c("age", "child")]


people[c(1, 2), "age"]
people[c(1, 2), "age", drop = FALSE]



people[, "age"]


people[!is.na(people[, "age"]), c("name",  "child")]


people[!is.na(people[, "age"]) & people[, "age"] > 21, c("name",  "child")]

people[!is.na(people[, "age"]) & people[, "age"] > 21, c("name", "age", "child")]

df4["Bob M.", ]

people[2]
people["age"]

people[c(1, 3)]

people["age"]
people[["age"]]

people$age
people[["age"]]

people[["age"]][1]

people[["age"]][c(1, 4)]

people$age[c(1, 2)]
 
names(people)

people$n

people$na

people[["na", exact = FALSE]]

people$na
people[["name"]]

str(people)

height <- c(175, 170, 166, 182, 172)

people$height <- height

str(people)

weight <- c(86, 63, 68, 55, 56)

people <-  cbind(people, weight)

str(people)

people$height <- people$height/100

people

people$bmi <- round(people$weight/(people$height^2))

people

people$weight_status <- ifelse(
  people$bmi < 18.5, "underweight",
    ifelse(people$bmi < 24.9, "normal",
           ifelse(people$bmi < 29.9, "overweight", 
                  "obese")
           )
  )

people
str(people)

people$bmi <- NULL 
people$weight_status <- NULL

str(people)

people <- people[, -5]

str(people)

tom <- data.frame("Tom", 37, FALSE, 1.83)

rbind(people, tom)

tom <- data.frame(name ="Tom", age = 37, child = FALSE, height =  1.83)

names(tom) <- names(people) 

rbind(people, tom)

people[people$child == FALSE, c("name", "age")]

people[people$child == FALSE & people$height > 1.7, c("name", "age")]
people[people$child == FALSE & people$height >= 1.7, c("name", "age")]


people$age
sort(people$age)
sort(people$age, decreasing = TRUE)

people$age
order(people$age)

people$age[order(people$age)]
sort(people$age)

ranks <- order(people$age)

people[ranks, ]

people[order(people$age), ]

people[order(-people$age), ]

people[order(people$age, decreasing = TRUE), ]

letters[1] > letters[2]

sort(people$name)


people[order(people$name), ]

people[order(people$name, decreasing = TRUE), ]

















































































































































































































































































































