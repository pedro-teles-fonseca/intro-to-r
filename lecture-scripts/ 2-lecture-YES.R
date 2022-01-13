
## Lecture 2

logical_value <- FALSE


log_vec <- c(FALSE, TRUE, FALSE)

log_vec_shorter <- c(F, T, F)

matrix(c(FALSE, TRUE, FALSE, TRUE), ncol = 2)

x

x == 3

x <= 4


x <- log(5, 10)

y <- log(5 , exp(1))

x == y

vec_x <- c(1, 5, 6, 7, 3)
vec_y <- c(1, 6, 8, 2, 1)


vec_x == vec_y

vec_x != vec_y
vec_x > vec_y

!TRUE
!FALSE

!(vec_x == vec_y)

factorial(5)
5*4*3*2
prod(1,2,3,4,5)

myvec <- c(5, -2.3, 4, 4, 1)

myvec[c(1, 2)]
myvec[c(TRUE, TRUE, FALSE, F, F)]

mymat <- matrix(1:9, nrow = 3)
mymat


mymat[, c(TRUE, FALSE, TRUE)]


mymat[c(TRUE, FALSE, TRUE), ]

mymat

mymat[c(TRUE, FALSE, TRUE), c(TRUE, TRUE, FALSE)]


myvec <- c(5, -2.3, 4, 4, -1)

myvec<0

myvec[myvec<0]

myvec[myvec == 4]


mymat <- matrix(1:9, nrow = 3, byrow = TRUE)

mymat 

mymat < 5

mymat[mymat < 5]

mymat[mymat == 5]

mymat[!(mymat == 5)]

mymat[(mymat != 5)]


mymat[mymat < 5] <- 0 
mymat

mymat <- matrix(1:9, nrow = 3, byrow = TRUE)
mymat

mymat[which(mymat < 5)] <- 0

mymat

is.logical(NA)
is.logical(5)

y <- c(1, 2, 3, 7, 0.5, NA) 
y_without_nas <- y[-6]


5 + NA

mean(y)

mean(y, na.rm = TRUE)
mean(y_without_nas)

sum(y, na.rm = TRUE)
sum(y_without_nas)


y

t_no_nas <- na.omit(y)


M <- matrix(c(1:3, NA, c(5, 9)), nrow = 3, byrow = TRUE)


M

na.omit(M)

M <- matrix(c(1:3, NA, c(NA, 9)), nrow = 3, byrow = TRUE)

is.na(M)

table(is.na(M))

set.seed(123)

dados <- sample(1:10, 1000, replace = TRUE)
dados_2 <- sample(c("Heads", "Tails"), 1000000, replace = TRUE, prob = c(0.2, 0.8))

table(dados_2)

M <- matrix(c(1:3, NA, c(NA, 9)), nrow = 3, byrow = TRUE)

M[is.na(M)] <- 0
M

M <- cbind(
  y = c(3, NA, 7, 1),
  x1 = c(1, 7, 9, 6), 
  x2 = c(6, 7, 9, NA)
)

M[, "y"]

median(M[, "y"], na.rm = TRUE)

is.na(M[, "y"])

M[is.na(M[, "y"]), "y"] <- median(M[, "y"], na.rm = TRUE)
M

M[is.na(M[, "x2"]), "x2"] <- median(M[, "x2"], na.rm = TRUE)
M


y <- c(1, 2 , 3, NA, 6, NA, 9, NA)


is.na(y)

table(is.na(y))


as.numeric(TRUE)
as.numeric(c(FALSE, TRUE))

as.logical(0:5)

sum(TRUE)

sum(is.na(y))

y

length(which(is.na(y)))


(6 < 4) || (3 != 1)

(6 < 4) && (3 != 1)

(6 > 4) && (3 > 1)

(6 > 4) && (3 == 1)

(6 > 4) || (3 == 1)

y <- c(1, 5 ,3, 1, 2, 9)






y <- c(1, 5 ,3, 1, 2, 9)

y[(y > 2) & (y < 6)]


(y > 2) 
y[(y > 2) | (y < 6) & (y != 2)]

y[((y > 2) | (y < 6)) & (y != 2)]


y <- c(1, 5 , 3, NA, 2, 9)

any(y > 2, y < 6, !is.na(y))

all(y > 2, y < 6, !is.na(y))

foo <-  "hello"
is.character(foo)

vec <- c("2", "3")
is.numeric(vec)
is.character(vec)

sum(vec)

char_vec <- c("hello", "world", "!!!")

length(char_vec)

nchar(char_vec)

char_vec <- c('he"llo')

pi

paste("The life of", pi, "!", "?")

paste("I", "love", "R", sep = "")
paste("I", "love", "R", sep = "_")


paste(c(3, 2, 1), c("a", "b", "c"), sep = "*")

paste("X", 1:5, sep = "_")

paste("X", 1:5, sep = "_", collapse = "")

paste("X", 1:5, sep = "_", collapse = "+")


letters
LETTERS

paste0(1:3, letters[1:3])

paste(3 + NA)

vec <- c("awesome","R","is")

paste(vec[2], vec[3], "totally", vec[1], "!")

y <- paste(vec[2], vec[3], "totally", vec[1], "!")
x <- cat(vec[2], vec[3], "totally", vec[1], "!")

y


"beta" %in% c("alpha","beta","gamma")

"Beta" %in% c("alpha","beta","gamma")

"delta" %in% c("alpha","beta","gamma")

"aa" > "ab"

"Aaa" > "aaa"


blood <- c("B", "AB", "O", "A", "O", "O", "A", "B")
blood

blood_factor <- factor(blood)

blood_factor_2 <- factor(blood,
                         levels = c("O", "A", "B", "AB"))

blood_factor
blood_factor_2

str(1:5)
str(blood)

blood_factor
str(blood_factor)

table(blood_factor)

levels(blood_factor) <- c("BT_A", "BT_AB", "BT_B", "BT_O")



blood <- c("B", "AB", "O", "A", "O", "O", "A", "B")


factor(blood, levels = c("A", "AB", "B", "O"))

factor(blood, levels = c("A", "AB", "B", "O"), 
              labels =  c("blood_A", "blood_A", "blood_B", "blood_O"))



blood <- c("B", "AB", "O", "A", "O", "O", "A", "B")

blood_factor[1] > blood_factor[2]

tshirt <- c("M", "L", "S", "S", "L", "M", "L", "M")

tshirt_factor <- factor(
  c("M", "L", "S", "S", "L", "M", "L", "M"), ordered = TRUE, 
  levels = c("S", "M", "L"))

tshirt_factor

tshirt_factor[1]
tshirt_factor[2]

tshirt_factor[1] < tshirt_factor[2]

tshirt_factor[1] == tshirt_factor[2]

table(tshirt_factor)


hair_color <- factor(c("Brown", "Black", "Black", "Black", "Blond", "Blond",
                         "Black", "Black"))     

eye_color <- factor(c( "Blue", "Blue", "Green", "Green", "Green", "Blue",
                       "Blue", "Blue"))

table(hair_color, eye_color)

rowSums(table(hair_color, eye_color))
colSums(table(hair_color, eye_color))


hair_color <- factor(c("Brown", "Black", "Black", "Black", "Blond", "Blond",
                         "Black", "Black"))
eye_color <- factor(c( "Blue", "Blue", "Green", "Green", "Green", "Blue",
                         "Blue", "Blue"))
shirt_size <- factor(c("L", "S", "S", "M", "L", "L", "S", "S"),
                       ordered = TRUE)

table(hair_color, eye_color, shirt_size)


y <-factor(c(0.53, 5.4, 1.5, 3.33, 0.45, 0.01, 2, 4.2, 1.99, 1.01, 1.01))
table(y)

y <- c(0.53, 5.4, 1.5, 3.33, 0.45, 0.01, 2, 4.2, 1.99, 1.01, 1.01)

limits <- c(0, 2, 4, 6)

y_factor <- cut(y, limits)
y_factor

table(y_factor)

(x <-cut(y, limits, right = TRUE))
(z <-cut(y, limits, right = FALSE))


(z <-cut(y, limits, right = FALSE, include.lowest =  TRUE))

(x <-cut(y, limits, right = TRUE, include.lowest = TRUE))

as.character(pi)
pi


0.4 == c(0.1, 0.5, 0.4)





























































































