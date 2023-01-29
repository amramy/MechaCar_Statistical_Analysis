# Import dependency
library(dplyr)

# Import/ Read csv file
MechaCar <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)

# get column names
colnames(MechaCar)

# Use lm() functionn to perform Linear Regression on all 6 variables
?lm()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar))
