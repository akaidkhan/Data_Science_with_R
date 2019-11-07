# Adding details with par function

#########################################################################

# par function

#View current setting

par()

# Assign the return value from the par() function to plot_pars

plot_pars <- par()

# Display the names of the par() function's list elements

names(plot_pars)

# Display the number of par() function list elements

length(plot_pars)

#########################################################################

#mfrow =c(row,col)

# Creating plot array with mfrow parameter

# Set up a two-by-two plot array

par(mfrow = c(2, 2))

# Plot y1 vs. x1

plot(anscombe$x1, anscombe$y1)

# Plot y2 vs. x2

plot(anscombe$x2, anscombe$y2)

# Plot y3 vs. x3

plot(anscombe$x3, anscombe$y3)

# Plot y4 vs. x4

plot(anscombe$x4, anscombe$y4)

# Define common x and y limits for the four plots

xmin <- min(anscombe$x1, anscombe$x2, anscombe$x3, anscombe$x4)

xmax <- max(anscombe$x1, anscombe$x2, anscombe$x3, anscombe$x4)

ymin <- min(anscombe$y1, anscombe$y2, anscombe$y3, anscombe$y4)

ymax <- max(anscombe$y1, anscombe$y2, anscombe$y3, anscombe$y4)

# Set up a two-by-two plot array

par(mfrow = c(2, 2))

# Plot y1 vs. x1 with common x and y limits, labels & title

plot(anscombe$x1, anscombe$y1,
     
     xlim = c(xmin, xmax),
     
     ylim = c(ymin, ymax),
     
     xlab = "x value", ylab = "y value",
     
     main = "First dataset")

# Do the same for the y2 vs. x2 plot

plot(anscombe$x2, anscombe$y2,
     
     xlim = c(xmin, xmax),
     
     ylim = c(ymin, ymax),
     
     xlab = "x value", ylab = "y value",
     
     main = "Second dataset")

# Do the same for the y3 vs. x3 plot

plot(anscombe$x3, anscombe$y3,
     
     xlim = c(xmin, xmax),
     
     ylim = c(ymin, ymax),
     
     xlab = "x value", ylab = "y value",
     
     main = "Third dataset")

# Do the same for the y4 vs. x4 plot

plot(anscombe$x4, anscombe$y4,
     
     xlim = c(xmin, xmax),
     
     ylim = c(ymin, ymax),
     
     xlab = "x value", ylab = "y value",
     
     main = "Fourth dataset")