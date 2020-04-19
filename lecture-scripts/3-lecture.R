
### Lecture 3

blood <- c("B", "AB", "O", "A", "O", "O", "A", "B")

typeof(blood)

blood_factor <- factor(blood)

blood_factor2 <-  factor(blood, levels = c("O", "A", "B", "AB"))

table(blood_factor)
table(blood_factor2)

levels(blood_factor) <- c("BT_A", "BT_AB", "BT_B", "BT_O")
blood_factor

blood_factor <- factor(blood)

factor(blood,
       levels = c("O", "A", "B", "AB"),
       labels = c("BT_O", "BT_A", "BT_B", "BT_A"))


blood_factor[1]  < blood_factor[2]


tshirt <- c("M", "L", "S", "S", "L", "M", "L", "M")

tshirt_factor <- factor(tshirt, levels = c("S", "M", "L"))

tshirt_factor[1]  < tshirt_factor[2]

table(tshirt_factor)


tshirt_factor_ord <- factor(tshirt, levels = c("S", "M", "L"), ordered = TRUE)
tshirt_factor_ord

tshirt_factor_ord[1]  < tshirt_factor_ord[2]
tshirt_factor_ord[1]  > tshirt_factor_ord[2]
tshirt_factor_ord[1]  == tshirt_factor_ord[2]


### table

hair_color <- factor(c("Brown", "Black", "Black", "Black", "Blond", "Blond",
                       "Black", "Black"))

eye_color <- factor(c( "Blue", "Blue", "Green", "Green", "Green", "Blue",
                       "Blue", "Blue"))

shirt_size <- factor(c("L", "S", "S", "M", "L", "L", "S", "S"),
                     ordered = TRUE)

table(tshirt_factor_ord)

table(hair_color, eye_color)

table(hair_color, eye_color, shirt_size)


y <- c(0.53, 5.4, 1.5, 3.33, 0.45, 0.01, 2, 4.2, 1.99, 1.01)

limits <- c(0, 2, 4, 6)

y_factor <- cut(y, breaks = limits)
y_factor

table(y_factor)

y_factor_2 <- cut(y, breaks = limits, right = FALSE)
y_factor_2

y_factor_2 <- cut(y, breaks = limits, right = FALSE, include.lowest = TRUE)
y_factor_2


## Lists

str(c(1,3,4))
str(vec1 <- c(TRUE, FALSE))

mat_char <- matrix(c("a", "u", "mk", "q!"), ncol = 2) 
str(mat_char)
str(blood_factor)

y

typeof(y)

typeof(c(1L, 3L, 4L))

c("1", 2, 3)

c(TRUE, FALSE, 1)

c(TRUE, FALSE, 1, "hey")


my_list <- list(
  matrix(c(1, 5, -1, 4), ncol = 2),
  c("S", "M", "S", "W"),
  "I-am-a-string",
  c(TRUE, FALSE, FALSE)
)

my_list

str(my_list)

a_list_of_lists <- list(list(list(list(c(1, 5),
                                       c("a", "b")))))
a_list_of_lists

names(my_list) <- c("Numbers", "Letters", "a-lonely_string", "T_F")

my_list

my_list <- list(
  some_numbers = matrix(c(1, 5, -1, 4), ncol = 2),
  some_letters = c("S", "M", "S", "W"),
  a_lonely_string = "I-am-a-string",
  T_F = c(TRUE, FALSE, FALSE)
)

names(my_list) <- c("Numbers", "Letters", "a-lonely_string", "T_F")
my_list

num_vec <- 1:3
char_mat <- matrix(c("a", "b", "c", "m"), ncol = 2)
a_lonely_string <- "Hello!"
a_factor <- factor(c("Yes", "No", "Yes"))

my_list2 <- list(
  num_vec,
  char_mat,
  a_lonely_string,
  a_factor,
  my_list
)

as.list(c(1, 2))

as.list(c("yes", "no"))

num_matrix <-  matrix(1:4, ncol = 2)

as.list(num_matrix)


str(my_list)


length(my_list)

my_list[1]

is.list(my_list[1])
is.matrix(my_list[1])

my_list[[1]]

is.list(my_list[[1]])
is.matrix(my_list[[1]])

str(my_list)

my_list["some_letters"]
typeof(my_list["some_letters"])

my_list[["some_letters"]]

typeof(my_list[["some_letters"]])
is.vector(my_list[["some_letters"]])
is.list(my_list[["some_letters"]])

my_list$some_letters

a_short_list <- list(a = c(1, 2), b = 3)

a_short_list[[1]]
a_short_list[["a"]]


rec_l <- list(
  a = list(
    b = list(
      c = list(
        d = 3)
      )
    )
  )

str(rec_l)

rec_l[[c("a", "b", "c", "d")]]

rec_l[["a"]][["b"]][["c"]]["d"]


my_list

my_list[2]

my_list[c(2, 3)]


my_list[[2]]

my_list[[2]][1]

my_list[[c(2, 1)]]

my_list[[2]][c(2, 3)]

# A[,]

my_list[[1]][, 2]
my_list[[1]][, 1]


my_list[[1]][1, ]
my_list[[1]][2, ]

my_list[[1]][1, 2]
my_list[[1]][2, 2]


my_list[[1]][-1, ]
my_list[[1]][, -1]

length(my_list)

my_list[[5]] <- matrix(c(0.21, 0.45, 0.6, 3), ncol = 2)

length(my_list)

str(my_list)


my_list$new_thing <- list(
  c(1, 5),
  "some-stuff",
  matrix(1:6, nrow = 2)
)

str(my_list)

my_list

my_list[[6]][[3]][1, ]
my_list[[6]][[3]][, 2]

str(my_list)

my_list[["new_thing"]][[3]][, 2]

list1 <- list(
  1,
  2)
list2 <- list(
  c("Sun","Mon"),
  c(1, 2))
list3 <- list("Hi!")

merged.list <- c(list1, list2, list3)


str(merged.list)
str(merged.list)

str(my_list)

my_list$new_thing <- NULL

str(my_list)



l <- list( x = 1:2,
           y = c("ab", "3"),
           m = matrix(1:4, ncol = 2) )

unlist(l)

l2 <- list( x = 1:2,
           m = matrix(1:4, ncol = 2) )

unlist(l2)




df <- data.frame(
  age = c(20, 38, 50, 19),
  smoker = c(TRUE, FALSE, FALSE, FALSE), 
  marital = factor(c("M", "S", "W", "S"))
  )

df


View(df)

summary(airquality)

summary(df)

str(df)



name <- c("Anne", "Pete", "Frank", "Julia", "Cath")
age <- c(28, 30, 21, 39, 35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)

df2 <-  data.frame(
  name,
  age,
  child)

df2


df_no_names <- data.frame(
  c(20, 38, 50, 19),
  c(TRUE, FALSE, FALSE, FALSE), 
  factor(c("M", "S", "W", "S"))
)

names(df_no_names) <- c("a-namee", "another-name", "third-name")

df_no_names


df4 <- data.frame(
  age = c(35, 27, 18),
  hair = c("blond", "brown", "black")
)

df4

df4 <- data.frame(
  age = c(35, 27, 18),
  hair = c("blond", "brown", "black"),
  row.names = c("Bob", "Susan", "Sam")
)


letters
LETTERS

df4 <- data.frame(
  age = c(35, 27, 18),
  hair = c("blond", "brown", "black"),
  row.names = letters[1:3]
)

df4

ncol(df4)

df4 <- data.frame(
  age = c(35, 27, 18),
  hair = c("blond", "brown", "black"),
  row.names = letters[1:3]
)

rownames(df4) <- c("Bob", "Susan", "Sam")


df4

df5 <- data.frame(
  person = c("John", "Matt", "Mary"),
  age = c(20, 38, 50),
  smoker = c(TRUE, FALSE, FALSE), 
  marital = factor(c("M", "S", "S"))
)

str(df5)

typeof(c("John", "Matt", "Mary"))
is.factor(c("John", "Matt", "Mary"))

df5 <- data.frame(
  person = c("John", "Matt", "Mary"),
  age = c(20, 38, 50),
  smoker = c(TRUE, FALSE, FALSE), 
  marital = factor(c("M", "S", "S")),
  stringsAsFactors = FALSE
)

str(df5)


M <- matrix(1:9, nrow = 3)

is.matrix(M)
is.data.frame(M)

as.data.frame(M)



name <- c("Anne", "Pete", "Frank", "Julia", "Cath") 
age <- c(28, 30, 21, 39, NA)
child <- c(FALSE, NA, TRUE, FALSE, TRUE)

people <- data.frame(name, age, child, stringsAsFactors = FALSE)

people

people[3, ]

people[, 1]

people[, c(1,2)]

people[c(1, 2), c(2,3)]

people[c(1, 2), "age"]

people[c(1, 2), c("name", "age")]
is.data.frame(people[c(1, 2), c("name", "age")])

people[3, 2]
people[, "age"]

is.data.frame(people[3, 2])
is.data.frame(people[, "age"])

people[, "age"]
as.data.frame(people[, "age"])

people[, "age", drop = FALSE]

is.data.frame(people[, "age", drop = FALSE])

people[, "age", drop = TRUE]

people[, "age", drop = FALSE]


people




people[!is.na(people[, "age"]), c("name", "child")]

people[!is.na(people[, "age"]), c("name", "child")]

people[!is.na(people[, "age"]), c("name", "age")]

people[!is.na(people[, "age"]) & people[, "age"] > 21, c("name", "child", "age")]


##### list syntax

str(people)

people[2]

people[[2]]

people["age"]

people[["age"]][1]
people[["age"]][c(1, 3)]

people$na

people$n

people[["ag"]]









































































































































































































