# Importing table/text
# read.table ()
# Import the hotdogs.txt file: hotdogs
?read.table
getwd()
setwd("F:\\data science\\Data_Science_with_R\\R Import  Export")
hotdogs <- read.table( "NewHotdog.txt",sep = "\t", header = TRUE)

# Call head() on hotdogs
head(hotdogs)
