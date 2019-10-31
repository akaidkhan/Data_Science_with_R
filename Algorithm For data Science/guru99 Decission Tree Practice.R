set.seed(678)
path <- 'https://raw.githubusercontent.com/guru99-edu/R-Programming/master/titanic_data.csv'
titanic <-read.csv(path)
head(titanic)
tail(titanic)


shuffle_index <- sample(1:nrow(titanic))
head(shuffle_index)


titanic <- titanic[shuffle_index, ]
head(titanic)

library(dplyr)
# Drop variables
clean_titanic <- titanic % > %
  select(-c(home.dest, cabin, name, X, ticket)) % > % 
  #Convert to factor level
  mutate(pclass = factor(pclass, levels = c(1, 2, 3), labels = c('Upper', 'Middle', 'Lower')),
         survived = factor(survived, levels = c(0, 1), labels = c('No', 'Yes'))) % > %
  na.omit()
glimpse(clean_titanic)

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


dim(data_test)


prop.table(table(data_train$survived))


prop.table(table(data_test$survived))



install.packages("rpart.plot")	
library(rpart)
library(rpart.plot)
fit <- rpart(survived~., data = data_train, method = 'class')
rpart.plot(fit, extra = 106)



predict_unseen <-predict(fit, data_test, type = 'class')
table_mat <- table(data_test$survived, predict_unseen)
table_mat

accuracy_Test <- sum(diag(table_mat)) / sum(table_mat)

print(paste('Accuracy for test', accuracy_Test))


accuracy_tune <- function(fit) {
  predict_unseen <- predict(fit, data_test, type = 'class')
  table_mat <- table(data_test$survived, predict_unseen)
  accuracy_Test <- sum(diag(table_mat)) / sum(table_mat)
  accuracy_Test
}



control <- rpart.control(minsplit = 4,
                         minbucket = round(5 / 3),
                         maxdepth = 3,
                         cp = 0)
tune_fit <- rpart(survived~., data = data_train, method = 'class', control = control)
accuracy_tune(tune_fit)


minsplit = 4
minbucket= round(5/3)
maxdepth = 3cp=0
