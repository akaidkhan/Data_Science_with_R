##Selecting columns using select()

##select() keeps only the variables you mention



##Use This Command To Perform The Above Mentioned Function

#######################################
#select(): Select specific column from tbl
#######################################
tbl <- select (hflights, ActualElapsedTime, AirTime, ArrDelay, DepDelay )
glimpse(tbl)

#starts_with("X"): every name that starts with "X",
#ends_with("X"): every name that ends with "X",
#contains("X"): every name that contains "X",
#matches("X"): every name that matches "X", where "X" can be a regular expression,
#num_range("x", 1:5): the variables named x01, x02, x03, x04 and x05,
#one_of(x): every name that appears in x, which should be a character vector.

#Example: print out only the UniqueCarrier, FlightNum, TailNum, Cancelled, and CancellationCode columns of hflights

select(hflights, ends_with("Num"))
select(hflights, starts_with("Cancel"))
select(hflights, UniqueCarrier, ends_with("Num"), starts_with("Cancel"))



##Create new columns using mutate()

##mutate() is the second of five data manipulation functions you will get familiar with in this course. mutate() creates new columns which are added to a copy of the dataset.



##Use This Command To Perform The Above Mentioned Function

#######################################
#mutate():  Add columns from existing data
#######################################
g2 <- mutate(hflights, loss = ArrDelay - DepDelay)
g2

g1 <- mutate(hflights, ActualGroundTime = ActualElapsedTime - AirTime)
g1

#hflights$ActualGroundTime <- hflights$ActualElapsedTime - hflights$AirTime

#######################################



###Selecting rows using filter()

###Filtering data is one of the very basic operation when you work with data. You want to remove a part of the data that is invalid or simply you’re not interested in. Or, you want to zero in on a particular part of the data you want to know more about. Of course, dplyr has ’filter()’ function to do such filtering, but there is even more. With dplyr you can do the kind of filtering, which could be hard to perform or complicated to construct with tools like SQL and traditional BI tools, in such a simple and more intuitive way.


R comes with a set of logical operators that you can use inside filter():
  • <
  • <=
  • == 
  • !=
  • !=
  • > 
  
  
  
  Use This Command To Perform The Above Mentioned Function



#filter() : Filter specific rows which matches the logical condition
#######################################
#R comes with a set of logical operators that you can use inside filter():

#x < y, TRUE if x is less than y
#x <= y, TRUE if x is less than or equal to y
#x == y, TRUE if x equals y
#x != y, TRUE if x does not equal y
#x >= y, TRUE if x is greater than or equal to y
#x > y, TRUE if x is greater than y
#x %in% c(a, b, c), TRUE if x is in the vector c(a, b, c)

# All flights that traveled 3000 miles or more
long_flight <- filter(hflights, Distance >= 3000)
View(long_flight)
glimpse(long_flight)

# All flights where taxing took longer than flying
long_journey <- filter(hflights, TaxiIn + TaxiOut > AirTime)
View(long_journey)

# All flights that departed before 5am or arrived after 10pm
All_Day_Journey <- filter(hflights, DepTime < 500 | ArrTime > 2200)

# All flights that departed late but arrived ahead of schedule
Early_Flight <- filter(hflights, DepDelay > 0, ArrDelay < 0)
glimpse(Early_Flight)

# All flights that were cancelled after being delayed
Cancelled_Delay <- filter(hflights, Cancelled == 1, DepDelay > 0)

#How many weekend flights flew a distance of more than 1000 miles but 
#had a total taxiing time below 15 minutes?

w <- filter(hflights, DayOfWeek == 6 |DayOfWeek == 7, Distance >1000, TaxiIn + TaxiOut <15)
nrow(w)

y <- filter(hflights, DayOfWeek %in% c(6,7), Distance > 1000, TaxiIn + TaxiOut < 15)
nrow(y)

#######################################



Arrange or re-order rows using arrange()

To arrange (or re-order) rows by a particular column such as the taxonomic order, list the name of the column you want to arrange the rows 


Use This Command To Perform The Above Mentioned Function


#######################################
#arrange(): reorders the rows according to single or multiple variables,
#######################################
dtc <- filter(hflights, Cancelled == 1, !is.na(DepDelay)) #Delay not equal to NA
glimpse(dtc)

# Arrange dtc by departure delays
d <- arrange(dtc, DepDelay)

# Arrange dtc so that cancellation reasons are grouped
c <- arrange(dtc,CancellationCode )

#By default, arrange() arranges the rows from smallest to largest. 
#Rows with the smallest value of the variable will appear at the top of the data set. 
#You can reverse this behavior with the desc() function. 

# Arrange according to carrier and decreasing departure delays
des_Flight <- arrange(hflights, desc(DepDelay))

# Arrange flights by total delay (normal order).
arrange(hflights, ArrDelay + DepDelay)

#######################################