################################################################################
################################################################################
# Commenting - Ctrl+Shift+C
# Uncommenting - Ctrl+Shift+C


################################################################################
################################################################################
#Get the working directory
getwd()


#Set the working directory
setwd("") #Error Code
setwd("D:\\DataScience\\Machine Learning\\Tutorial\\EduCBA")
setwd("D:/Project/Analytics/Tutorial/SL/Data Science with R")

################################################################################
################################################################################

#to install the package
install.packages("ggplot2")
install.packages("plyr")
install.packages("reshape2")
install.packages("sqldf")
install.packages("party")
install.packages("Hmisc")
install.packages("ggthemes")
install.packages("scales")
install.packages("mice")
install.packages("dplyr") 
install.packages("caret")
install.packages(c("rpart.plot","rstan"))
install.packages(c("praise","proto","purrr","Rcurl","reshape","RJSONIO","rmarkdown"))
install.packages(c("ROCR","roxygen2"))
install.packages(c("rprojroot","rsconnect","RSQlite","rstan","rstanarm","rstudioapi","shinydashboard","shinythemes"))


#to load the package
library('ggplot2') # visualization
library('ggthemes') # visualization
library('scales') # visualization
library('dplyr') # data manipulation
library('mice') # imputation
library('randomForest') # classification algorithm
library("dplyr") 
library("caret")

################################################################################
################################################################################
#help for the function
?mean
help("mean")

#example of a function
example(mean)

################################################################################
################################################################################
#Left and Right Assignment 
a = 5
a
print(a)

a <- 6
a

7 -> a
a


# Assign a value to the variable my_apples
my_apples <- 5 
my_apples

# Fix the assignment of my_oranges
my_oranges <- 6 
my_oranges

# Create the variable my_fruit and print it out
my_fruit <- my_apples + my_oranges 
my_fruit

#############################################################################################
#Vectors are one-dimension arrays that can hold numeric data, character data, or logical data. 
#Combine values into a vector with the combine function c()
#############################################################################################
#VECTOR
# Declare variables of different types

#numerical vector
my_number <- 42
my_number <- 1:5
my_number <- c(1,2,3,4,5)
my_number
class(my_number)

#Character vector
my_character <- "universe"
my_character <- c("universe","sun","moon")
my_character
class(my_character)

#logical vector
my_logical <- FALSE
my_logical <- c(TRUE,FALSE)
my_logical
class(my_logical)

################################################################################
################################################################################
# OPERATOR
#Arithmetic Operators
a = 8
a
b = 2
b

c=a+b
c
d=a-b
d
e=a*b
e
f=a/b
f
g=a^2
g

h=a%%b #modulus operator : gives remainder
h
6%%2
5%%2
7%%2

i=a%/%b #Integer Division Operaor: Gives the quotient
i
6%/%2
5%/%2
7%/%2

print(a)
print(b)
print(c)
print(d)
print(e)
print(f)
print(g)
print(h)
print(i)

#ctrl+l for clearing console

################################################################################
################################################################################
#Relational operators
a
b
a<b
a<=b
a>b
a>=b
a==b
a!=b

x <- c(1:10)
x
x > 8
################################################################################
################################################################################
#Logical operators in R

#AND Operator - Only True if both are TRUE
TRUE & TRUE
FALSE & FALSE
TRUE & FALSE
FALSE & FALSE

x <- 12
x>5 & x<15


#OR Operator - TRUE if atleast one is TRUE, FALSE inly if both are FALSE
TRUE | TRUE
FALSE | FALSE
TRUE | FALSE
FALSE | FALSE

y <- 4
y<5 | y>15


#NOT Operator - TRUE if atleast one is TRUE, FALSE inly if both are FALSE
!TRUE
!FALSE

C(TRUE, TRUE, FALSE) & C(TRUE, FALSE, FALSE)
C(TRUE, TRUE, FALSE) && C(TRUE, FALSE, FALSE)

################################################################################
################################################################################
#If else 
a <- 5

if(a < 4)
{
  print("a is less than 4")
}else
{
  if(a==4)
  {
    print("a has the value of 4")
  }else
  {
    print("a >4")
  }
}


#Nested if..else
if(a < 4){
  print("a is less than 4")
  
}else if (a==4){
  print("a has the value of 4")
}else
  print("a >4")

#ifelse function
ifelse(a==4 ,"Yes","No")

# switch function as controlled if else statement
# switch (expression, list)
# The expression is evaluated and based on this value, 
# the corresponding item in the list is returned.
# If the value evaluated from the expression matches with more than one item of the list,
# switch() function returns the first matched item.

?switch()

switch(2, "apple","bat", "cat")
switch("color","color"= "green","shape"= "square","length"= 5)

color="green"
switch(color, "red" = {print("apple")}, "green" = {print("avocado")}, "black" = {print("grapes")})
################################################################################
################################################################################
# Loops in R

# For Loop
# The for loop executes a code for a specific number of times
vec <- c(1,2,3,4)
for (i in vec)
{
  print(i)
}

# While loop
# In the while loop, while the test expression remains true, 
# the code inside the loop keeps on executing
i <- 1
while (i<6)
{
  print(i)
  i =i+1
}


i=1
p=5
while(i<=p)
{
  print(i)
  i = i+1
}

#Repeat Loop
# A repeat loop iterates a code multiple times. 
# Since there is no conditional check to exit the loop, 
# you must specify it inside the of the loop.
x <- 1
repeat {
  print(x)
  x=x+1
  if (x==6){
    break
  }
}

# Break Statement - when present inside a loop, it stops the iteration from executing
# and forces the flow to jump off the loop


# Next Statement - it helps in skipping the current iteration of a loop
num <- 1:5
for (i in num)
{
  if (i == 3)
  {
    next
  }
  print(i)
}

################################################################################
#Take input from the console
name =readline(prompt = "Please enter your name: ")
name

################################################################################
#Function

?mean

mean(c(1,5,6,7))

vec <- c(1,5,6,7,NA)
mean(vec,na.rm = TRUE)

sd(vec)

?sd

sd(x= vec, na.rm = FALSE)
sd(x= vec, na.rm = TRUE)


# Commonly used functions

# Numeric Function
sqrt(9)
ceiling(3.0001)
floor(5.9)
exp(2)
log(1)


# append() - add element to a vector
x = 1:5
x
x=append(x,7)
x

# identical()- test if two objects are identical
i <- 5
identical(i, 7)


#length() - return the length of vector
vec1 <- 1:17
length(vec1)

#ls() - list objects in the current environment
ls("package:stats")

#range() - returns the range
range(vec1)

#rep(x,n) - repeat the number x, n time
rep(5, 10)
rep(5, length(vec1))

#rev()- provide the reverse version of the argument
p=rev(c(1,3,5,7))
p

#seq(x,y,n) - generate regular sequences from x to y, spaced by n
seq(2,100,2)
seq(100,1)

#unique() - Remove duplicate entries from the vector
vec2 <- c(1,2,3, 1,3,5,5,2)
vec2
unique(vec2) #to find the unique numbers in the vector


# Statistical Function
mean(1:5)
median(1:8)
sum(1:5)
sd(1:5)
range(1:5)
min(1:5)
max(1:5)


# Character Function

#tolower() - convert a string to lower case letter
tolower(x = c("ABhilasha", "RENU", "MAnish", "Abhilasha"))

#toupper () - convert a string to upper case letters
toupper(x = c("a", "abhilasha"))

# Substr
x <- "abcdef"
substr(x, 2, 4) 



#grep() - use for regular expression
z= c("WaterMelon", "Water Melon", "Earth", "H2o", "water blue water")
z
?grep
grep(pattern = "Water",x = z)
grep(pattern = "Water",x = z, ignore.case = T)


#sub() - replace pattern only at the first place
sub(pattern = "Water",x =z, replacement = "H2O",ignore.case = T)

#gsub() - replace pattern all the places
gsub(pattern = "Water",x =z, replacement = "H2O",ignore.case = T)


paste("Rajib","Layek")

#####################################################################
# Writing Function - Example 1

triple <- function(x){
  y <- 3*x
  return(y)
}


triple(3)
triple(7)

# Writing Function - Example 2

math_magic <- function(a,b) {
  a*b + a/b
}

math_magic(a= 2, b=1)
math_magic(2)

math_magic <- function(a,b=1) {
  a*b + a/b
}

math_magic(2,1)
math_magic(2)