
#Assigning a character string to a variablema
x <- "Hello World!"

#Print the variable
print(x) #explicit printing

#Assignment Operators
y = "Hello World!"
"Hello World!" -> z

#Implicit Printing
y

#Variables
logical <- TRUE #boolean variable
integer <- 123L #L stands for long, for long integer (32-bit) integer
numeric <- 1.23 #numeric value contains decimal precision numeric value
character <- "ABC 123" #character string
date <- as.Date("2018-07-18") #date and time data type

#Displaying Variables
logical
integer
numeric
character
date

# Creating a function
f <- function(x) { x+1 }

# Invoking a function
f(2)

# Creating a vector
v <- c(1, 2, 3);
v

# Creating a sequence
s <- 1:5 #ascending order
s

s <- 5:1 #descending order
s

# Creating a matrix
m <- matrix(data = 1:6, nrow=2, ncol=3) #matrix of 2*3
m

# Creating an array
a <- array(data=1:8, dim=c(2,2,2)) #array of 2*2*2
a

# Creating a list
l <- list(123.45, TRUE, 123L, "abc") #list can store heterogeneous values
l

# Creating a factor
categories <- c("Male", "Female", "Male", "Male", "Female") #list of categorical values
factor <- factor(categories) 
factor # 5 values with two levels- Male & Female
levels(factor) #list of unique name values or levels
unclass(factor)

# Creating a dataframe
df <- data.frame(
Name = c("Cat", "Dog", "Cow", "Bear"),
HowMany = c(5, 10, 15, 20),
IsPet = c(TRUE, TRUE, TRUE, FALSE))
df

# Indexing dataframes by row and column
df[1,2]

# Indexing dataframe by row
df[1,]

# Indexing dataframe by column
df[,2]

df[['HowMany']]

df$HowMany  #this method is generally preferred

# Subsetting dataframes
df[c(2,4),]

df[2:4,]

df[c(TRUE, FALSE, FALSE, TRUE),]

df[df$IsPet == TRUE,]

df[df$HowMany > 10,]

df[df$Name %in% c("Cow", "Cat"),]

#Indexing in R is also applied to vectors, matrices, list, arrays in addition to dataframe

# R is a vectorized language
1 + 2
c(1,2,3) + c(2,4,6)

# Named vs Ordered Arguments
m <- matrix(data = 1:6, nrow=2, ncol=3) #matrix of 2*3
n <- matrix(1:6, 2, 3) #matrix of 2*3
m == n #it will return a matrix of true and false
identical(m,n) #two check if two matrices are identical

# Installing Packages
install.packages("dplyr")

# Loading packages
library("dplyr")

# Viewing Help
?data.frame
