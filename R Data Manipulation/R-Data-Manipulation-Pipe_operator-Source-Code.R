#Create summaries of the data frame using summarise()

#The summarise() function will create summary statistics for a given column in the data frame such as finding the mean.


##Use This Command To Perform The Above Mentioned Function

#######################################
#summarise(): reduces each group to a single row by calculating aggregate measures.
#######################################
#summarise(), follows the same syntax as mutate(), 
#but the resulting dataset consists of a single row instead of an entire new column in the case of mutate()

#min(x) - minimum value of vector x.
#max(x) - maximum value of vector x.
#mean(x) - mean value of vector x.
#median(x) - median value of vector x.
#quantile(x, p) - pth quantile of vector x.
#sd(x) - standard deviation of vector x.
#var(x) - variance of vector x.
#IQR(x) - Inter Quartile Range (IQR) of vector x.
#diff(range(x)) - total range of vector x.

# Print out a summary with variables 
# min_dist, the shortest distance flown, and max_dist, the longest distance flown
summarise(hflights, max_dist = max(Distance),min_dist = min(Distance))

# Print out a summary of hflights with max_div: the longest Distance for diverted flights.
# Print out a summary with variable max_div
div <- filter(hflights, Diverted ==1 )
summarise(div, max_div = max(Distance))

summarise(filter(hflights, Diverted == 1), max_div = max(Distance))

###########################################################



##Pipe operator: %>%
  
  ##Before we go any futher, let’s introduce the pipe operator: %>%. dplyr imports this operator from another package (magrittr). This operator allows you to pipe the output from one function to the input of another function. Instead of nesting functions (reading from the inside to the outside), the idea of of piping is to read the functions from left to right.

##se This Command To Perform The Above Mentioned Function

#######################################
#Chaining function using Pipe Operators
#######################################
hflights %>%
  filter(DepDelay>240) %>%
  mutate(TaxingTime = TaxiIn + TaxiOut) %>%
  arrange(TaxingTime)%>%
  select(TailNum )

# Write the 'piped' version of the English sentences.
# Use dplyr functions and the pipe operator to transform the following English sentences into R code:

# Take the hflights data set and then ...
# Add a variable named diff that is the result of subtracting TaxiIn from TaxiOut, and then ...
# Pick all of the rows whose diff value does not equal NA, and then ...
# Summarise the data set with a value named avg that is the mean diff value.

hflights %>%
  mutate(diff = TaxiOut - TaxiIn) %>%
  filter(!is.na(diff)) %>%
  summarise(avg = mean(diff))

# mutate() the hflights dataset and add two variables:
# RealTime: the actual elapsed time plus 100 minutes (for the overhead that flying involves) and
# mph: calculated as Distance / RealTime * 60, then
# filter() to keep observations that have an mph that is not NA and that is below 70, finally
# summarise() the result by creating four summary variables:
# n_less, the number of observations,
# n_dest, the number of destinations,
# min_dist, the minimum distance and
# max_dist, the maximum distance.

# Chain together mutate(), filter() and summarise()
hflights %>%
  mutate(RealTime = ActualElapsedTime + 100, mph = Distance / RealTime * 60) %>%
  filter(!is.na(mph), mph < 70) %>%
  summarise(n_less = n(), 
            n_dest = n_distinct(Dest), 
            min_dist = min(Distance), 
            max_dist = max(Distance))

#######################################