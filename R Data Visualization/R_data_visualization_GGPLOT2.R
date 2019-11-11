#################################################################

# Statistics Layer

ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point() + stat_smooth(method = lm, col = "red")

#Smoothing

# A scatter plot with LOESS smooth

ggplot(mtcars, aes(x = wt, y = mpg)) +
  
  geom_point() +
  
  geom_smooth()

# A scatter plot with an ordinary Least Squares linear model

ggplot(mtcars, aes(x = wt, y = mpg)) +
  
  geom_point() +
  
  geom_smooth(method = "lm")

# The previous plot, without CI ribbon

ggplot(mtcars, aes(x = wt, y = mpg)) +
  
  geom_point() +
  
  geom_smooth(method = "lm", se = FALSE)

# The previous plot, without points

ggplot(mtcars, aes(x = wt, y = mpg)) +
  
  stat_smooth(method = "lm", se = FALSE)

#Grouping variables

# 1 - Define cyl as a factor variable

ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
  
  geom_point() +
  
  stat_smooth(method = "lm", se = FALSE)

#################################################################

# Coordinates layer

# Controls plot dimension

ggplot(mtcars, aes(x = wt, y = mpg)) +
  
  geom_point() +
  
  stat_smooth(method = lm, col = "red") +
  
  scale_y_continuous("mpg",limits = c(2,35),expand = c(0,0)) +
  
  scale_x_continuous("wt",limits = c(0,20), expand = c(0,0)) +
  
  coord_equal() #1:1 aspect ratio



#Zoomin in

# Basic ggplot() command, coded for you

p <- ggplot(mtcars, aes(x = wt, y = hp, col = am)) + geom_point() + geom_smooth()

p

# Add coord_cartesian(): the proper way to zoom in

p + coord_cartesian(xlim = c(3, 6))

#################################################################

# Theme Layer

# Starting point

p <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  
  geom_point()

p

z = p + facet_grid(. ~ cyl)

z

# Plot 1: Change the plot background fill to darkgrey

z +
  
  theme(plot.background = element_rect(fill = "darkgrey"))

# Plot 2: Adjust the border to be a black line of size 3

z +
  
  theme(plot.background = element_rect(fill = "darkgrey", color = "black", size = 3))

# Recycle Theme

# Save Theme

# Use of element_text(), element_line(), element_rect()

mtcar_theme <- theme(panel.background = element_blank(),
                     
                     plot.background = element_rect(fill = "lightyellow"),
                     
                     legend.background = element_blank(),
                     
                     legend.key = element_blank(),
                     
                     strip.background = element_rect(color = "green"),
                     
                     
                     
                     axis.text = element_text(colour = "Blue"),
                     
                     axis.text.x = element_text(angle = 45),
                     
                     strip.text = element_blank(),
                     
                     
                     
                     panel.grid.major = element_line(colour = "lightblue"),
                     
                     panel.grid.minor = element_line(colour = "pink"),
                     
                     axis.line = element_line(colour = "lightblue")
                     
                     
                     
)

mtcar_theme

#Recycle Theme

p

p + facet_grid(am ~ cyl)

p + facet_grid(am ~ cyl) + mtcar_theme

# Inbuilt Theme

p + facet_grid(am ~ cyl) + theme_classic()

p + facet_grid(am ~ cyl) + theme_linedraw()

p + facet_grid(am ~ cyl) + theme_bw()

p + facet_grid(am ~ cyl) + theme_dark()

p + facet_grid(am ~ cyl) + theme_light()

p + facet_grid(am ~ cyl) + theme_gray()