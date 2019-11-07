#################################################################################

# Bar Plot

#Simple Bar Plot

counts <- table(mtcars$gear)

counts

barplot(counts)

barplot(counts, main="Car Distribution",xlab="Number of Gears", ylab = "Count")

barplot(counts, main="Car Distribution",xlab="Number of Gears", ylab = "Count", legend= rownames (counts))

barplot(counts, main="Car Distribution",xlab="Number of Gears", ylab = "Count", legend= rownames (counts), col = c("red", "yellow", "green"))

#Simple Horizontal Bar Plot with Added Labels

barplot(counts, horiz=TRUE)

barplot(counts, main="Car Distribution", horiz=TRUE,
        
        names.arg=c("3 Gears", "4 Gears", "5 Gears"))

#Stacked Bar Plot with Colors and Legend

counts <- table(mtcars$vs, mtcars$gear)

counts

barplot(counts, main="Car Distribution by

        Gears and V/S",
        
        xlab="Number of Gears",
        
        col=c("skyblue","red"),
        
        legend = rownames(counts))

#Grouped Bar plot

counts <- table(mtcars$vs, mtcars$gear)

counts

barplot(counts, main="Car Distribution by Gears

        and V/S",
        
        xlab="Number of Gears",
        
        col=c("darkblue","red"),
        
        legend = rownames(counts),
        
        beside=TRUE)

###############################################################################