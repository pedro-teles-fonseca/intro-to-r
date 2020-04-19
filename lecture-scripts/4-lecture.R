
## lecture 4

name <- c("Anne", "Pete", "Frank", "Julia", "Cath")
age <- c(28, 30, 21, 39, NA)
child <- c(FALSE, NA, TRUE, FALSE, TRUE)

people <- data.frame(name, age, child, stringsAsFactors = FALSE)

str(people)


height <- c(175, 170, 166, 182, 172)

people$height <- height

str(people)

people

weight <- c(86, 63, 68, 55, 56)

people <- cbind(people, weight)


people$height <-  people$height/100

people$bmi <- round(people$weight/(people$height^2))

people


people$weight_status <- ifelse(
  people$bmi < 18.5, "underweight",
    ifelse(people$bmi < 24.9, "normal", 
      ifelse(people$bmi < 29.9, "overweight","obese") 
      )
  )

people$bmi <- NULL
people$weight_status <- NULL

people <- people[, -5]

people

tom <- data.frame("Tom", 37, FALSE, 1.38)

rbind(people, tom)

tom <- data.frame(name = "Tom", age = 37, child = FALSE, height = 1.38)

people <- rbind(people, tom)

rbind(people, tom)


people

(people$child == FALSE)

people[people$child == FALSE, c("name", "age")]


people[people$child == FALSE & people$height > 1.70, c("name", "age")]


people[people$child == FALSE & people$height > 1.70, c("name", "age", "height")]


people$age

sort(people$age, decreasing = TRUE)

sort(people$age)

ranks <- order(people$age)

people$age[ranks]


people[ranks, ]

people[c(3, 1, 2, 4, 5), ]


people[order(people$age), ]

-people$age


people[order(-people$age), ]
people[order(people$age, decreasing = TRUE), ]

people[order(people$name), ]



## reading and writing tables



mtcars0 <- read.csv(file = "datasets/mtcars0.csv")

mtcars1 <- read.csv(file = "datasets/mtcars1.csv", row.names = 1)

air0 <- read.csv2("datasets/airquality0.csv")

read.csv2("datasets/airquality1.csv")

air1 <- read.csv2("datasets/airquality1.csv", row.names = 1)


iris0 <- read.delim("datasets/iris0.txt")

iris1 <- read.delim("datasets/iris1.txt", header = FALSE, row.names = 1)

woman <- read.delim2("datasets/woman.txt")
woman <- read.delim("datasets/woman.txt")

woman2 <- read.delim2("datasets/womanNA.txt", na.strings = c("NA","Na"))

woman2$height
is.numeric(woman$weight)

woman$height <- as.numeric(woman$height)


woman4 <- read.table("datasets/woman.txt", sep = "\t", header = TRUE)

chick <- read.table("datasets/ChickWeight.txt", sep = "&", row.names = 1)


iris3 <- read.table("datasets/irisNA.csv", sep = ";", dec = ",", header = TRUE)

iris4 <- read.table("datasets/irisNA2.csv", sep = ";",
                    dec = ",",
                    header = TRUE, na.strings = "-", skip = 5)

iris5 <- read.table("datasets/irisNA3.csv", sep = ";", dec = ",",
                    header = TRUE, na.strings = "-", skip = 3)

table(iris5$Species)


x <- read.delim("http://www.sthda.com/upload/boxplot_format.txt")


write.csv(x = mtcars1, file = "outputs/mtcars1.csv")


write.table(air0, file = "outputs/air0.txt", sep = "\t", row.names = FALSE, na = "-")



write.table(chick, file = "outputs/chick.txt", sep = "|",
            row.names = FALSE, col.names = FALSE)


iris0 <- read.delim("~/Documents/Publicações e Projetos/intro-to-r-programming/datasets/iris0.txt", stringsAsFactors=FALSE)
























































 



























