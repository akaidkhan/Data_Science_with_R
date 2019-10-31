#############################################################################################

# Lession 4: R Data Structure

#############################################################################################

#############################################################################################

#Vectors: are one-dimension arrays that can hold numeric data, character data, or logical data.

#############################################################################################

#VECTOR

# Declare variables of different types

#In R, you create a vector with the combine function c()

############################################################################

#numerical vector:

vec1 <- 42

vec1

vec1 <- c(1,2,3,4,5) # use of combine function

vec1

vec1 <- c(1:5) # Use of colon operator

vec1

class(vec1) #class of vecor

vec1[2] #Accessing vector element

vec1[c(1,3)] # Accessing first and third element

vec5=c(1L, 2L, 4.5) #if we mix integer and float values, the entire vector gets converted into float (numeric datatype)

vec5

class(vec5)

############################################################################

#Character vector

vec2 <- "universe"

vec2

vec2 <- c("universe","sun","moon")

vec2

class(vec2)

vec2[3]

vec2[c(1,3)]

vec6 = c(1L, 4.5, "Abhijeet") #if we mix character and numeric then all the values will be converted to character

vec6

class(vec6)

############################################################################

#logical vector

vec3 <- FALSE

vec3

vec3 <- c(TRUE,FALSE)

vec3

class(vec3)

vec3[1]

vec7 = c(TRUE, 1, 4.5) # Numeric given preference

vec7

class(vec7)

vec8= c(TRUE, 1, 5, "Sudhir") # Character given preference

vec8

class(vec8)

# paste() : combine two charater

name = c ("Uma", "maheshwar")

name

name = paste("Uma", "maheshwar")

name

#############################################################################################

#MATRICES: Two Dimentional array

#############################################################################################

# vector with -rows and columns (same data type and length)

?matrix

mat1 <- matrix(c(1,2,3,4),nrow=2,ncol=2, byrow = TRUE)

mat1

mat2 <- matrix(c(1,2,3,4),nrow=2,ncol=2, byrow = FALSE)

mat2

mat2[1,] # row 1

mat2[2,] # row 2

mat2[,1] # column 1

mat2[,2] # column 2

mat2[1,2] # row 1 column 2

#############################################################################################

#############################################################################################

#ARRAY : Similar to metrices but can have more than two dimensions

#############################################################################################

#Numeric-Character-Boolean

?array

Arr <- array (c(1:27), dim = c(3,3,3))

Arr

Arr[1,1,1]

Arr[2,1,1]

Arr[3,1,2]

z <- array(1:24, dim=c(2,3,4))

z

# Ex: 3 Dim : Age, Sex, Race

# Ex: 4 Dim : Age, Sex. Race, Country

#############################################################################################

# DATAFRAME: Similar to general metrics but its columns can contain

# different modes of data types such as numeric and character

#############################################################################################

# Creating a datagrame

num <- c(2, 3, 5)

char <- c("aa", "bb", "cc")

log <- c(TRUE, FALSE, TRUE)

df = data.frame(num, char, log)       # df is a data frame

df

#inbuilt dataframe in R - mtcars

mtcars

#data description

#https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html

head(mtcars) # head()- first several rows

tail(mtcars) # tail()-last several rows

str(mtcars) # structure of the dataset

mtcars[1:2,1:4] # First 4 attributes of the first 2 brand of the car

summary(mtcars)

mtcars$mpg #Accessing column

mtcars$disp #Accessing column

mtcars$gear

#accessing column/attribute

df <- mtcars

df

#Using $

df$wt

df$disp # Access column

df$disp[2]

# Using []

df[2,]   # access 2nd row

df[,"disp"]  # access disp column

df[2, "disp"] # access disp column of 2nd row

df[2,3] # access 3rd column of 2nd row

##################################################################################

# Dropping a attribute

df[,-3] # Drop 3 column

df[,-c(2,3)] # Drop 2nd and 3rd column

#################################################################################

# Subset ()

car1 <- subset (df, cyl > 6)

car1

car1$cyl

car2 <- subset (df, hp >50)

car2

car2$hp

################################################################################

#rbind() - Combine row

str(df)

df1 <- df[1:20,]

str(df1)

df2 <- df[21:32,]

str(df2)

df_full <- rbind(df1,df2)

str(df_full)

# cbind() - Combine column

df3 <- df$mpg

df3

df4 <- df$cyl

df4

df_full <- cbind(df3,df4)

df_full

#############################################################################################

#FACTOR

#############################################################################################

# In a data frame, character vectors are automatically converted into factors

name <- c("joe","john","nancy")

class(name)

sex <- c("M","M","F")

class(sex)

age <- c(27,26,26)

class(age)

df <- data.frame(name,sex,age)

df

class(df)

class(df$name)

class(df$sex)

class(df$age)

##############################################################################

# Change numeric to factor class

str(mtcars)

mtcars$cyl = as.factor(mtcars$cyl)

mtcars$am = as.factor(mtcars$am)

mtcars$gear = as.factor(mtcars$gear)

mtcars$carb = as.factor(mtcars$carb)

str(mtcars)

##############################################################################

# Example  - Change the name of the factors using level()

gender_vector <- c("Male", "Female", "Female", "Male", "Male")

gender_vector

class(gender_vector)

# Convert gender_vector to a factor

factor_gender_vector <- as.factor(gender_vector)

factor_gender_vector # factor_gender has two levels - Male and Female

# Change the name of the factors using level()

levels(factor_gender_vector) <- c("F", "M")

factor_gender_vector

#############################################################################################

#LIST: It may contain a combinaton of vectors, matrices, data frames and even other list

#############################################################################################

# Vector with numerics from 1 up to 10

my_vector <- 1:10

# Matrix with numerics from 1 up to 9

my_matrix <- matrix(1:9, ncol = 3)

# First 3 rows of the built-in data frame mtcars

my_df <- mtcars[1:3,]

# Construct list with these different elements:

my_list <- list(my_vector, my_matrix, my_df)

my_list # no name as of now

# give name using name ()

names(my_list) <- c("vec", "mat", "df")

# Print out my_list

my_list

#############################################################################################

#############################################################################################