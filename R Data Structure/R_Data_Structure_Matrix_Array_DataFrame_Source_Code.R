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

head(mtcars) # head()- first several rows
tail(mtcars) # tail()-last several rows

str(mtcars) # structure of the dataset
mtcars[1:2,1:4] # First 4 attributes of the first 2 brand of the car
summary(mtcars)
mtcars$mpg #Accessing column
mtcars$disp #Accessing column

mtcars$gear



###############################Code - Data Frame Part #2
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