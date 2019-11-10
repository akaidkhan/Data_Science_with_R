#########################################################################
##Group By Function 
##Group operations using group_by()



##The group_by() verb is an important function in dplyr. As we mentioned before it’s related to concept of “split-apply-combine”. We literally want to split the data frame by some variable (e.g. taxonomic order), apply a function to the individual data frames and then combine the output.



##Use This Command To Perform The Above Mentioned Function



#######################################

#group_by function 

#######################################

# Most data operations are done on groups defined by variables.

# group_by() takes an existing tbl and converts it into a grouped tbl where operations are performed "by group".

# Make an ordered per-carrier summary of hflights

hflights %>%
  
  group_by(UniqueCarrier) %>%
  
  summarise(p_canc = mean(Cancelled == 1)*100,
            
            avg_delay = mean(ArrDelay,na.rm = TRUE))%>%
  
  arrange(avg_delay, p_canc)

# summary of hflights without per carrier

hflights %>%
  
  summarise(p_canc = mean(Cancelled == 1)*100,
            
            avg_delay = mean(ArrDelay,na.rm = TRUE))%>%
  
  arrange(avg_delay, p_canc)

# Ordered overview of average arrival delays per carrier

# mutate() uses the rank() function, that calculates within-group rankings.

# rank() takes a group of values and calculates the rank of each value within the group,

hflights %>%
  
  filter(!is.na(ArrDelay), ArrDelay>0) %>%
  
  group_by(UniqueCarrier) %>%
  
  summarise (avg = mean(ArrDelay))%>%
  
  mutate(rank = rank(avg)) %>%
  
  arrange(rank)

####################################################################################

####################################################################################
