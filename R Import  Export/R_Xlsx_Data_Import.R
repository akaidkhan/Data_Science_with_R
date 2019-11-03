#Importing xls file using readxl package - read_excel()

#install redxl package

install.packages("readxl")

# Load the readxl package

library(readxl)


# Print out the names of both spreadsheets

excel_sheets("urbanpop.xlsx")

# Read the sheets, one by one

pop_1 <- read_excel("urbanpop.xlsx", sheet = 1)

pop_2 <- read_excel("urbanpop.xlsx", sheet = 2)

pop_3 <- read_excel("urbanpop.xlsx", sheet = 3)

# Put pop_1, pop_2 and pop_3 in a list: pop_list

pop_list <- list(pop_1,pop_2,pop_3)

# Display the structure of pop_list

str(pop_list)

# Explore other packages - XLConnect, xlsx, gdata

