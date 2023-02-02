# MechaCar_Statistical_Analysis

## Overview: 
Review production data for insights that may help AutosRUs' manufacturing team with production troubles that are blocking progress on the newest prototype "The MechaCar".

## Linear Regression to Predict MPG

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

   When comparing the p-value to the significance level of 0.05 the Vehicle_length with P-value of 2.60e-12 and ground_clearance with P-value of 5.21e-08 are both below the significance level therefor are statistically significant and have non-random amounts of variance in the dataset to be able to reject the null hypothesis for these two categories. 
   The remaining categories vehicle_weight, spoiler angle, and AWD were above the significance level which means they are not statistically significant and have a random amount of variance. 
   
* Is the slope of the linear model considered to be zero? Why or why not?

   Looking at the Coefficients the values they are easier to read after converting from scientific notation:
   
   AWD: -3.411
   vehicle length: 6.267
   vehicle weight: .001
   spoiler angle: .069
   ground clearance: 3.546
   
   After reviewing these values they all show non-zero therefor the slop of the linear model would not be considered to be zero. 

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

With a R-squared value of 71% there is a strong correlation that the dataset is an effective dataset. In other words this dataset would predict an accurate model roughly 71% of the time. There are probably other factors or variables not included in this dataset that contribute to the mpg variability that MechaCar prototypes are experiencing. 

<img width="740" alt="Summary MechaCar" src="https://user-images.githubusercontent.com/111904266/215363428-c2230bb2-2249-4d41-b07c-c2f40d1bf364.png">


## Summary Statistics on Suspension Coils

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

   The average for all three lots meets the design specifications with a variance of 62.29. 
   
   However, this is achieved by lot 1 having a variance of .98 (essentially 1) and lot 2's variance is 7.47 where lot 3 tips the charts with a massive variance of 170.29 which does not meet design specifications of 100 psi variance of the suspension coils. 


<img width="312" alt="total_summary" src="https://user-images.githubusercontent.com/111904266/215526337-5ceb6d85-0962-4ef5-9227-4c80b72b611a.png">


<img width="414" alt="Lot_summary " src="https://user-images.githubusercontent.com/111904266/215526362-d2c3db80-37a8-48ee-8b44-9e4e74a11ab5.png">


## T-Test on Suspension Coils

* Summarize and interpretate finding for the t-test

   The T-test for all lots show a p-value of .6028 which is above the alpha of 0.5 therefor this dataset falls within the population mean and is not statistically significant from the normal distribution.
   
   The individual T-test show that lot 1 (p-value = 1) and lot 2 (p-value = .6072) are also above the alpha of 0.5 which draws the same conclusion as the "all "lots" where they fall within the population mean. 
   Lot 3 however has a p-value of .042 which means it is statistically significant from the normal distribution.
   
* T-Test for all Lots
<img width="357" alt="t-test " src="https://user-images.githubusercontent.com/111904266/215572545-822cc555-801b-4406-8eca-f80d273041f5.png">

* T-Test Lot1
<img width="551" alt="t-test lot1" src="https://user-images.githubusercontent.com/111904266/215572761-13d95b48-0588-401c-aad3-47cd1b6bbd4d.png">

* T-Test Lot2
<img width="544" alt="t-test lot2" src="https://user-images.githubusercontent.com/111904266/215572821-68321fec-1f6f-4b1a-a55a-9c0cdfbdc4be.png">

* T-Test Lot3
<img width="545" alt="t-test lot3" src="https://user-images.githubusercontent.com/111904266/215573055-b3b2e2cf-a9a3-4ed7-bb75-8791583df562.png">


