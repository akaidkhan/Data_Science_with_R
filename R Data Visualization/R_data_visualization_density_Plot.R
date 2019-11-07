###############################################################################



#Kernel Density Plot MTCars



density_data <- density(mtcars$mpg)



plot(density_data)



plot(density_data, main = "Kernel Density of Miles per gallon")



polygon(density_data, col = "skyblue", border= "black" )



###############################################################################

