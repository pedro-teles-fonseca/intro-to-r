
### create a factor

blood <- c("B", "AB", "O", "A", "O", "O", "A", "B") 
blood

blood_factor <- factor(blood) 
blood_factor # R sorts levels alphabetically!

str(blood_factor)
levels(blood_factor)

### order levels difrently

blood_factor2 <- factor(blood,
                        levels = c("O", "A", "B", "AB"))

blood_factor
blood_factor2

str(blood_factor2)
str(blood_factor)

table(blood_factor2)
table(blood_factor)

### Rename factor levels

blood <- c("B", "AB", "O", "A", "O", "O", "A", "B") 
blood_factor <- factor(blood)
blood_factor 
levels(blood_factor) <- c("BT_A", "BT_AB", "BT_B", 
                          "BT_O")
blood_factor

blood <- c("B", "AB", "O", "A", "O", "O", "A", "B") 
factor(blood, 
       labels = c("BT_A", "BT_AB", "BT_B", "BT_O"))

blood <- c("B", "AB", "O", "A", "O", "O", "A", "B")
blood_factor <- factor(blood)

factor(blood,
       levels = c("O", "A", "B", "AB"),
       labels = c("BT_O", "BT_A", "BT_B", "BT_AB"))

factor(blood,
       levels = c("O", "A", "B", "AB"),
       labels = c("BT_O", "BT_A", "BT_B", "BT_A"))

### Nominal versus Ordinal

blood <- c("B", "AB", "O", "A", "O", "O", "A", "B") 
blood_factor <- factor(blood)
blood_factor[1] < blood_factor[2]


tshirt <- c("M", "L", "S", "S", "L", "M", "L", "M")

tshirt_factor <- factor(tshirt, ordered = TRUE, 
                        levels = c("S", "M", "L"))
tshirt_factor

tshirt <- c("M", "L", "S", "S", "L", "M", "L", "M")

tshirt_factor <- factor(tshirt, ordered = TRUE,
                        levels = c("S", "M", "L"))

tshirt_factor

tshirt_factor[1] < tshirt_factor[2]

## Subseting

hair_color <- factor(c("Brown", "Black", "Black", 
                       "Black", "Blond", "Blond", 
                       "Black", "Black"))
eye_color <- factor(c( "Blue", "Blue", "Green",
                       "Green", "Green", "Blue", 
                       "Blue", "Blue"))

table(hair_color, eye_color)

hair_color <- factor(c("Brown", "Black", "Black", "Black", "Blond", "Blond", "Black", "Black"))
eye_color <- factor(c( "Blue", "Blue", "Green", "Green", "Green", "Blue", "Blue", "Blue"))
shirt_size <- factor(c("L", "S", "S", "M", "L", 
                       "L", "S", "S"),
                     ordered = TRUE)

table(hair_color, eye_color, shirt_size)


person <- c("John", "Mary", "Veronica", "Tom", "Mark", "Peter", "Marie", "Julian")

person_s <- person[shirt_size == "S"]
person_l <- person[shirt_size == "L"]
person_s_or_m <- person[shirt_size < "L"]
person_s_or_l <- person[shirt_size == "S" | shirt_size == "L"]

y <- c(0.53, 5.4, 1.5, 3.33, 0.45, 0.01, 2, 4.2, 1.99,
       1.01)
limits <- c(0,2,4,6)
y_factor <- cut(y, breaks = limits)
y_factor
table(y_factor)

###

# intervals closed on the right and open on the left (default)
# Excludes 0
levels(cut(y, breaks = c(0, 2, 4, 6))) 

# intervals open on the right and closed on the left
# Excludes 6
levels(cut(y, breaks = c(0, 2, 4, 6), right = FALSE)) 

##

# Intervals open on the left and closed on the right
# Includes 0
levels(cut(y, breaks = c(0, 2, 4, 6),
           include.lowest = TRUE)) 
# Intervals open on the right and closed on the left
# Includes 6
levels(cut(y, breaks = c(0, 2, 4, 6), right = FALSE, 
           include.lowest = TRUE)) 







