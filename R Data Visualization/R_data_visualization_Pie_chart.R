###############################################################################

#Pie Chart

#Simple Pie Charts

slices <- c(10, 12,4, 16, 8)

lbls <- c("US", "UK", "Australia", "Germany", "France")

pie(slices, labels = lbls, main="Pie Chart of Countries")

#Pie Chart with Annotated Percentages

pct <- round(slices/sum(slices)*100)

pct

lbls <- paste(paste(lbls, round(pct),"%",sep=" ")) # add % to

lbls

pie(slices,labels = lbls)

pie(slices,labels = lbls,col=rainbow(length(lbls)), main="Pie Chart of Countries")

#3D Exploded Pie Chart

#install.packages("plotrix")

library(plotrix)

slices <- c(10, 12, 4, 16, 8)

lbls <- c("US", "UK", "Australia", "Germany","France")

pie3D(slices,labels=lbls,explode=0.1,main="3D Pie Chart")

##############################################################################
