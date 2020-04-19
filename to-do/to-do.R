
# meter a função ifelse nos slides dos vetores e quando estiver retirar dos slides dos DFs
# na aula dos data frames, no dataframe people, transformar a variavel child num fator (para evitar fazer child == FALSE, NAs podem ser problema)
# meter os vetores letters e afins na aula dos vetores e quando estiver retirar dos slides de data Wrangling

#### cartesian product 

set.seed(1)

Sales <- data.frame(
  Product = sample(
    c("Toaster", "Radio", "TV"),
    size = 7,
    replace = TRUE
  ),
  CustomerID = c(
    rep("1_2019", 2),
    paste(2:3, "2019", sep = "_"),
    paste(1:3, "2020", sep = "_")
  )
)

Sales$Price <- round(ifelse(
  Sales$Product == "TV",
  rnorm(1, 400, 20),
  ifelse(Sales$Product == "Toaster",
         rnorm(1, 40, 2), rnorm(1, 35, 2))
))

Clients <- data.frame(CustomerID = c(paste(2:4, "2019", sep = "_"),
                                     paste(1:2, "2020", sep = "_")),
                      State = sample(c("CA", "AZ", "IL", "MA"),
                                     size = 5, replace = TRUE))


(x = merge(x = Sales, y = Clients, by = NULL) )
      
(y = sqldf("SELECT Product, Sales.CustomerID, Price, Clients.CustomerID, State
       FROM Sales
       CROSS JOIN Clients 
       ORDER BY State DESC, Clients.CustomerID"))

x == y

library(sqldf)

sqldf(
  "select CustomerID FROM Clients ORDER BY CustomerID"
)

sort((Clients$CustomerID))
sort(as.character(Clients$CustomerID))



