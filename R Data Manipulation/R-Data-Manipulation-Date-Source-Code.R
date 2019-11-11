# Data Manipulation - Date with R 
#
# 
# 
# 
# Dates can be imported from character, numeric formats using the as.Date function from the base package.
# 
# 
# 
# If your data were exported from Excel, they will possibly be in numeric format. Otherwise, they will most likely be stored in character format. If your dates are stored as characters, you simply need to provide as.Date with your vector of dates and the format they are currently stored in
# 
# 
# 
# There are a number of different formats you can specify, here are a few of them:
#   
#   
#   
#   %Y: 4-digit year (1982)
# 
# %y: 2-digit year (82)
# 
# %m: 2-digit month (01)
# 
# %d: 2-digit day of the month (13)
# 
# %A: weekday (Wednesday)
# 
# %a: abbreviated weekday (Wed)
# 
# %B: month (January)
# 
# %b: abbreviated month (Jan)
# 
# 
# 
# 
# 
# Use This Command To Perform The Above Mentioned Function
# 
# 





####################################################################################

####################################################################################

# Lesson 6:

# Topic 3: Date in R

###################################################################################

# Today's date

today <- Sys.Date()

today

class(today)

#Creating date from character

character_date <- "1957-03-04"

class(character_date)

# Convert into date class by as.Date function

sp500_birthday <- as.Date(character_date)

sp500_birthday

class(sp500_birthday)

# Date format

#default - ISO 8601 ISO 8601 Standard: year-month-day

as.Date("2017-01-28")

# Alternative form: year/month/day

as.Date("2017/01/28")

#Fails: month/day/year

as.Date("01/28/2017")

# Explicitly tell R the format

as.Date("01/28/2017", format = "%m/%d/%Y")

#Date format

# %d - Day of the month (01-31)

# %m - Month (01-12)

# %y - Year without century (00-99)

# %Y - Year with century (0-9999)

# %b - Abbreviated month name

# %B - Full month name

# "/" "-" "," Common separators

# Example: September 15, 2008

as.Date("September 15, 2008", format = "%B %d, %Y")

# Extract the Weekdays

dates <- as.Date(c("2017-01-02", "2017-05-03", "2017-08-04", "2017-10-17"))

dates

weekdays(dates)

# Extract the months

months(dates)

# Extract the quarters

quarters(dates)
