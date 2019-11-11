###############################################################################

#########################################################################

# Mosiac Plot

data(HairEyeColor)

mosaicplot(HairEyeColor)

?mosaicplot

###############################################################################

# Heatmap

# Heat map uses color gradient to make comparisons and

# when you want compare different categories across two dimensions you can make use heat map.

library(MASS)

mtcars

heatmap(as.matrix(mtcars))

?heatmap

heatmap(as.matrix(mtcars), Rowv = NA, Colv = NA, scale = "column", col = cm.colors(256),
        
        xlab = "Attributes", main = "heatmap")

#########################################################################