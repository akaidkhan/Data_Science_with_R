#########################################################################

#3D graph with lattice package

library(lattice)

attach(mtcars)

# Change am column to factor as "Automatic" and "Manual"

mtcars$am[which(mtcars$am == 0)] <- 'Automatic'

mtcars$am[which(mtcars$am == 1)] <- 'Manual'

mtcars$am <- as.factor(mtcars$am)

#3d scatterplot by factor level

cloud(hp~mpg*wt, data = mtcars)

cloud(hp~mpg*wt, data = mtcars, main = "3D Scatterplot")

cloud(hp~mpg*wt, data = mtcars, main = "3D Scatterplot", col = cyl)

cloud(hp~mpg*wt, data = mtcars, main = "3D Scatterplot", col = cyl, pch = 17)

cloud(hp~mpg*wt|am, data = mtcars, main = "3D Scatterplot", col = cyl, pch = 17)

?cloud

##############################################################

# 3D graph with plotly packaage

install.packages("plotly")

library(plotly)

data(mtcars)

# Basic 3D Scatter Plot

plot_ly(mtcars, x = ~wt, y = ~hp, z = ~qsec)

# Basic 3D Scatter Plot with Color

plot_ly(mtcars, x = ~wt, y = ~hp, z = ~qsec, color = ~am, colors = c('#BF382A', '#0C4B8E')) %>%
  
  add_markers() %>%
  
  layout(scene = list(xaxis = list(title = 'Weight'),
                      
                      yaxis = list(title = 'horsepower'),
                      
                      zaxis = list(title = 'qsec')))

#3D Scatter Plot with color scaling

plot_ly(mtcars, x = ~wt, y = ~hp, z = ~qsec,
        
        marker = list(color = ~mpg, colorscale = c('#FFE1A1', '#683531'), showscale = TRUE)) %>%
  
  add_markers() %>%
  
  layout(scene = list(xaxis = list(title = 'Weight'),
                      
                      yaxis = list(title = 'horsepower'),
                      
                      zaxis = list(title = 'qsec')),
         
         annotations = list(
           
           x = 1.13,
           
           y = 1.05,
           
           text = 'Miles/(US) gallon',
           
           xref = 'paper',
           
           yref = 'paper',
           
           showarrow = FALSE
           
         ))



# Load the `plotly` library

library(plotly)

# Your volcano data

str(volcano)

volcano

# The 3d surface map

plot_ly(z = ~volcano, type = "surface")

#########################################################################