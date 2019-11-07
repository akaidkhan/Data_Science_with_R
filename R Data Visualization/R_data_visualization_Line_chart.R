#################################################################################
# Line Chart
plot(AirPassengers,type="l")  #Simple Line Plot

#Example 2
# Create the data for the chart.
v <- c(7,12,28,3,41)

# Plot the bar chart. 
plot(v,type = "o")

# Plot the bar chart.
plot(v,type = "o", col = "red", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")

#Multiple Lines
# More than line can be drawn on the same chart by using the line() function
# Create the data for the chart.
t <- c(14,7,6,19,3)

lines(t, type = "o", col = "blue")

#################################################################################

