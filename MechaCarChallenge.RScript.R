# Import dependency
library(dplyr)

# Import and Read MechaCar_mpg.csv file
MechaCar <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)

# get column names
colnames(MechaCar)

# Use lm() functionn to perform Linear Regression on all 6 variables
?lm()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar))


# Import and read Suspension_Coil.csv
Suspension <- read.csv("Suspension_Coil.csv", stringsAsFactors = F)

#get column names
colnames(Suspension)

# use summarize() function to get mean, median, variance and sd of PSI column.

total_summary <- Suspension %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Create dataframe using group_by() and summarise() to group each manufacturing lot by mean, median, variance and SD of suspension coil's PSI column
lot_summary <- Suspension %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep')

?summarise()
