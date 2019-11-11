########################################################################



# WordCloud



#Instal the packages



install.packages("wordcloud")



install.packages("RColorBrewer")



#Load the packages



library("wordcloud")



library("RColorBrewer")



# Create model_table of manufacturer frequencies



rownames(mtcars)



model_table <- table(rownames(mtcars))



model_table



# Create the default wordcloud from this table



#scale - range of the size of the word



#freq - frequency of word



wordcloud(words = names(model_table),
          
          
          
          freq = as.numeric(model_table),
          
          
          
          scale = c(1.5, 0.25))



# Change the minimum word frequency



#min.freq - below min.freq word will not be plotted



wordcloud(words = names(model_table),
          
          
          
          freq = as.numeric(model_table),
          
          
          
          scale = c(1, 0.25),
          
          
          
          min.freq = 1)



##################################################################################

