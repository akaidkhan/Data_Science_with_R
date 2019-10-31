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