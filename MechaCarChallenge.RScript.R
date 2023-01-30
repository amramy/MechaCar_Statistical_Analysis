# Import dependency
library(dplyr)

# Part 1 Linear Regression to Predict MPG
# Import and Read MechaCar_mpg.csv file
MechaCar <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)

# get column names
colnames(MechaCar)

# Use lm() functionn to perform Linear Regression on all 6 variables
?lm()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar))



# Part 2 Summary Stats on Suspension Coils

# Import and read Suspension_Coil.csv
Suspension <- read.csv("Suspension_Coil.csv", stringsAsFactors = F)

#get column names
colnames(Suspension)


?summarise()

# use summarize() function to get mean, median, variance and sd of PSI column.
total_summary <- Suspension %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Create dataframe using group_by() and summarise() to group each manufacturing lot by mean, median, variance and SD of suspension coil's PSI column
lot_summary <- Suspension %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep')


# Part 3: T-Test on Suspension Coils

?t.test()
# Use t-test() to determine PSI across all manufacturing lots is statistically different from population mean 1,500 PSI
t.test(Suspension$PSI, mu = 1500)


# Perform t-test on Lot-1 using subset()
t.test(subset(Suspension, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)


# Perform t-test on Lot-2 using subset()
t.test(subset(Suspension, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)


# Perform t-test on Lot-3 using subset()
t.test(subset(Suspension, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
