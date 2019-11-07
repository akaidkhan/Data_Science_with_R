#######################################################################

library(MASS)

data("mtcars")

# pch

# Create plot with type = "n"               

plot(mtcars$hp, mtcars$mpg,
     
     type = "n", xlim = c(0, max_hp),
     
     ylim = c(0, max_mpg), xlab = "Horsepower",
     
     ylab = "Miles per gallon")

# Add solid squares to plot

points(mtcars$hp, mtcars$mpg,pch = 15)

# Add open circles to plot

points(mtcars$hp, mtcars$mpg, pch = 1)

# Add open triangles to plot

points(mtcars$hp, mtcars$mpg,pch = 2)

# Create an empty plot using type = "n"

plot(mtcars$hp, mtcars$mpg,
     
     type = "n", xlim = c(0, max_hp),
     
     ylim = c(0, max_mpg), xlab = "Horsepower",
     
     ylab = "Miles per gallon")

# Add points with shapes determined by cylinder number

points(mtcars$hp, mtcars$mpg, pch = mtcars$cyl)

# Create a second empty plot

plot(mtcars$hp, mtcars$mpg, type = "n",
     
     xlab = "Horsepower", ylab = "Gas mileage")

# Add points with shapes as cylinder characters

points(mtcars$hp, mtcars$mpg,
       
       pch = as.character(mtcars$cyl))

# Adjusting text position, size, and font

# Create a second empty plot

plot(mtcars$hp, mtcars$mpg, type = "n",
     
     xlab = "Horsepower", ylab = "Gas mileage")

# Create index3, pointing to 3-cylinder cars

index6 <- which(mtcars$cyl == 6)

# Highlight 6-cylinder cars as solid circles

points(mtcars$hp[index6],
       
       mtcars$mpg[index6],
       
       pch = 19)

# Add car names, offset from points, with larger bold text

text(mtcars$hp[index6],
     
     mtcars$mpg[index6],
     
     adj = -0.2, cex = 1.2, font = 4)

#################################################################