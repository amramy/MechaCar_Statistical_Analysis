# MechaCar_Statistical_Analysis

## Overview: 
Review porduction data for insights that may help AutosRUs' manufactureing team with production troubles that are blocking progress on the newest prototype "The MechaCar".

## Linear Regression to Predict MPG

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
   When comparing the p-value to the significance level of 0.05 the Vechicle_length with P-value of 2.60e-12 and ground_clearance with P-value of 5.21e-08 are both below the significance level therefor have non-random amounts of variance in the dataset to reject the null hypothesis for these two categories. 
   The remaining categies vechicle_weight, spoiler angle, and AWD were above the significance level which means they have a random amount of variance. 
   
* Is the slope of the linear model considered to be zero? Why or why not?

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

<img width="740" alt="Summary MechaCar" src="https://user-images.githubusercontent.com/111904266/215363428-c2230bb2-2249-4d41-b07c-c2f40d1bf364.png">


## Summary Statistics on Suspension Coils

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?



<img width="312" alt="total_summary" src="https://user-images.githubusercontent.com/111904266/215526337-5ceb6d85-0962-4ef5-9227-4c80b72b611a.png">


<img width="414" alt="Lot_summary " src="https://user-images.githubusercontent.com/111904266/215526362-d2c3db80-37a8-48ee-8b44-9e4e74a11ab5.png">
