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