###############################################################################



#Histogram



#Simple histogram



hist(mtcars$mpg)



#Colored histogram



?hist



#The width of each of the bar can be decided by using breaks.



hist(mtcars$mpg, breaks = 4, col = "lightblue", xlab = "mpg", ylab = "freq")



hist(mtcars$mpg, breaks = 15, col=rainbow(7), xlab = "mpg", ylab = "freq")



#Change of bin



hist(AirPassengers, col=rainbow(7))



#Histogram of the AirPassengers dataset with 5 breakpoints



hist(AirPassengers, breaks=5)



# If you want to have more control over the breakpoints between bins,



# you can enrich the breaks argument by giving it a vector of breakpoints.



# You can do this by using the c() function:



# Compute a histogram for the data values in AirPassengers,



# and set the bins such that they run from 100 to 300, 300 to 500 and 500 to 700.



hist(AirPassengers, breaks= c(100, 300, 500, 700))



# We can use seq(x, y, z) function instaed of c()



# x = begin number of the x-axis,



# y = end number of the x-axis



# z = the interval in which these numbers appear.



hist(AirPassengers, breaks= seq(100, 700, 100))



# Note that you can also combine the two functions:



# Make a histogram for the AirPassengers dataset, start at 100 on the x-axis,



# and from values 200 to 700, make the bins 150 wide



hist(AirPassengers, breaks=c(100, seq(200,600, 150), 700))



################################################################################