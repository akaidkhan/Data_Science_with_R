#########################################################################

#########################################################################

#Following are the basic types of graphs, which can be chosen based on

#the situation and the data available.

# Basic Visualization

# Scatter Plot

# Line Chart

# Bar Plot

# Pie Chart

# Histogram

# Density plot

# Box Plot

# Advanced Visualization

# Mosaic Plot

# Heat Map

# 3D charts

# Correlation Plot

# Word Cloud

#########################################################################

# Basic plot - Scatter Plot

# Example -1

x <- c (1, 2, 3, 4, 5)

y <- c (1, 5, 3, 2, 0)

plot (x, y)

# Example -2

dose <- c(20, 30, 40, 50, 60)

drugA <- c(16, 20, 27, 40, 60)

drugB <- c(40, 31, 25, 18, 12)

plot(dose, drugA)

plot(dose, drugB)

help(plot)

#type argument

#"p" for points,

#"l" for lines,

#"b" for both,

#"c" for the lines part alone of "b",

#"o" for both 'overplotted',

#"h" for 'histogram' like (or 'high-density') vertical lines,

#"s" for stair steps,

#"S" for other steps, see 'Details' below,

#"n" for no plotting.

#Different types of plot

plot(dose, drugA, type="p")

plot(dose, drugA, type="l")

plot(dose, drugA, type="b")

plot(dose, drugA, type="c")

plot(dose, drugA, type="o")

plot(dose, drugA, type="h")

plot(dose, drugA, type="s")

plot(dose, drugA, type="S")

plot(dose, drugA, type="n")

#Example 3

# Load the MASS package

library(MASS)

str(mtcars)

# https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html

########################################################

#[, 1] mpg Miles/(US) gallon

#[, 2] cyl Number of cylinders

#[, 3] disp Displacement (cu.in.)

#[, 4] hp Gross horsepower

#[, 5] drat Rear axle ratio

#[, 6] wt Weight (1000 lbs)

#[, 7] qsec 1/4 mile time

#[, 8] vs Engine (0 = V-shaped, 1 = straight)

#[, 9] am Transmission (0 = automatic, 1 = manual)

#[,10] gear Number of forward gears

#[,11] carb Number of carburetors

########################################################

summary(mtcars)

plot(mtcars$hp, mtcars$mpg)

plot(mtcars$hp, mtcars$mpg, xlab = "Horsepower", ylab = "Gas mileage")

plot(mtcars$hp, mtcars$mpg, xlab = "Horsepower", ylab = "Gas mileage", main = "MPG vs Horsepower")

# Compute max_hp

max_hp <- max(mtcars$hp)

# Compute max_mpg

max_mpg <- max(mtcars$mpg)

plot(mtcars$hp, mtcars$mpg,type = "p",
     
     xlim = c(0, max_hp),
     
     ylim = c(0, max_mpg), xlab = "Horsepower",
     
     ylab = "Miles per gallon", main = "Horsepower vs Mileage")
%>% 
#################################################################################