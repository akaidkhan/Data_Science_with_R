# Set the directory to the folder 
getwd()
setwd("F:\\data science\\Data_Science_with_R\\R Import  Export")

####################################################################################
#Importing csv file
# read.csv()
titanic_train<- read.csv(file.choose())
class(titanic_train)

titanic <- read.csv("titanic_train.csv")
str(titanic)

#Using readr package
install.packages("readr")
library(readr)
titanic <- read_csv("titanic_train.csv")
titanic
#########################################################################################
