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