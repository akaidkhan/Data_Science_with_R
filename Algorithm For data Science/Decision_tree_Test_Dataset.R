

## Directoory Settings
getwd()
setwd("F:/data science/Data_Science_with_R/Algorithm For data Science")

## Load Data
DTreeDTSET <- read.csv("titanic_data.csv")
View(DTreeDTSET)

head(DTreeDTSET)
tail(DTreeDTSET)

shuffle_index <- sample(1:nrow(DTreeDTSET))
head(shuffle_index)

DTreeDTSET <- DTreeDTSET[shuffle_index,]
head(DTreeDTSET)


library(dplyr)
clean_DTreeDTSET <- DTreeDTSET % > %
  select(-c(home.dest,cabin,name,X,ticket)) % > %
  mutate(pclass= factor(pclass, levels = c(1,2,3),levels = c('Upper','Middle','Lower')),
servived = factor(servived,levels = c(0,1), levels= c('No','Yes'))) % > %
  na.omit()
glimpse(DTreeDTSET)


library(rpart.plot)

create_train_test & lt;- function(data, size = 0.8, train = TRUE) {
  n_row = nrow(data)
  total_row = size * n_row
  train_sample & lt; - 1: total_row
  if (train == TRUE) {
    return (data[train_sample, ])
  } else {
    return (data[-train_sample, ])
  }
}

data_train <- create_train_test(clean_titanic, 0.8, train = TRUE)
data_test <- create_train_test(clean_titanic, 0.8, train = FALSE)
dim(data_train)

prop.table(table(data_train$survived))
prop.table(table(data_test$survived))












  




