###############################################################################

# Boxplot

vec <- c(3,2,5,6,4,8,1,2,3,2,4,30,36)

?boxplot

boxplot(vec)

boxplot(vec, varwidth = TRUE)

# Boxplot of MPG by Car Cylinders

# a formula, such as y ~ grp, where y is a numeric vector of data values

# to be split into groups according to the grouping variable grp (usually a factor).
boxplot(mpg~cyl, data = mtcars)


boxplot(mpg~cyl,data=mtcars, main="Car Milage Data",
        
        xlab="Number of Cylinders", ylab="Miles Per Gallon",col=(c("gold","darkgreen","Blue")))

###############################################################################

#########################################################################

