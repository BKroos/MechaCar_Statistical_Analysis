# MechaCar_Statistical_Analysis
## Overview
This analysis takes two datasets examining a new vehicle prototype, the "MechaCar." The first dataset examines factors of vehicle design, collecting the miles-per-gallon of multiple iterations of the prototype with multiple relevant factors such as weight and vehicle profile factors. The second dataset examines the build factors of the vehicle, collecting PSI values across three different manufacturing lots seeking to understand any possible discrepancies or inconsistencies between lots. 

## Results
### Linear Regression to Predict MPG
![Image of Linear Regression Summary](https://github.com/BKroos/MechaCar_Statistical_Analysis/blob/main/screenshots/Deliverable1.png)

The above screenshot is the summary output for a linear regression examining the impact of 5 factors (first column) on the mile-per-gallon efficiency of the vehicle. As can be seen in the final column and following footer, the output summarizes the significance of these factors. In this analysis, the Vehicle Length and Ground Clearance are both significant at the 99% confidence level, meaning we can be very confident their influence is more than random. The R-sq. and adjusted R-sq. values indicate the slope of the line to be strongly positive, at .6-.7. However, the heavy significance of the intercept and it's negative value also indicates that there is a need for further analysis or transformation, or possibly the inclusion of additional factors. 


### Summary Statistics of Suspension Coils
![Image of Total Summary Table](https://github.com/BKroos/MechaCar_Statistical_Analysis/blob/main/screenshots/Deliverable2a.png)

The above screenshot is the table output for the full-sample summary analysis. The design specifications for this vehicle dictate that the variance of the Pounds-per-square-inch values cannot exceed 100. Across all three lots, we can see that the design standards hold. However, at 62, the variance level does suggest there is some inconsistency, and calls for the need to do a lot-specific analysis.

![Image of Lot Summary Table](https://github.com/BKroos/MechaCar_Statistical_Analysis/blob/main/screenshots/Deliverable2b.png)

This additional analysis shows there is a major issue in the manufacturing standards. Both Lot 1 and Lot 2 are very low-variance, with Mean values basically right on the nose, and variance values within 1 PSI (for Lot 1) and 10 PSI (for Lot 2). However, for Lot 3, the Mean diverges from the 1500 PSI-standard, and the variance well exceeding the plus/minus 100 PSI standard. This suggests the need for further on-site investigation and quality control for Manufacturing Lot 3. 

### T-Tests on Suspension Coils
![Image of T-Test Output Table](https://github.com/BKroos/MechaCar_Statistical_Analysis/blob/main/screenshots/Deliverable3.0.png)

The above screenshot is the console output of a t-test seeking to answer whether the overall suspension coil sample mean is significantly different than the population-level mean of 1500 PSI. This analysis suggests significance at a 90% level, but not a 95% level of significance. As with the first table above, the sample mean of 1498 suggests that the sample is largely in the tolerable variance of 100 PSI, while also pointing to the need for further analysis. 

![Image of Lot 1 Subset Output Table](https://github.com/BKroos/MechaCar_Statistical_Analysis/blob/main/screenshots/Deliverable3.1.png)
![Image of Lot 2 Subset Output Table](https://github.com/BKroos/MechaCar_Statistical_Analysis/blob/main/screenshots/Deliverable3.3.png)

The two screenshots above are the console outputs of t-tests seeking to answer if the Lot 1 (first) and Lot 2 (second) sample means are significantly different than the population-level mean of 1500 PSI. In both cases, with p-values of 1 and .6, we can be very confident in failing to reject the null hypothesis, meaning that the differences in the sample mean are likely due to random chance. 

![Image of Lot 3 Subset Output Table](https://github.com/BKroos/MechaCar_Statistical_Analysis/blob/main/screenshots/Deliverable3.2.png)

This screenshot is the console output of a t-test replicating the above analysis. In this case, however, we can see that at the 95% confidence level, we are able to reject the null hypothesis, and assert that within this Lot 3 manufacturing process there is a difference between the sample and population means. This reinforces the analysis of the summary statistics, that there is a quality control or process related issue with the manufacturing in Lot 3.

### Study Design: MechaCar v. Competition
The major confounding factor of any study design seeking to compare the MechaCar and other competing models is the prototype v. road-use factors. At the current state of development, in which we are only testing the MechaCar in laboratory or limited real-world conditions, it will be difficult to make strong assertions on performance of the vehicle or consumer preference. Therefore, I suggest we first land on specific, 'final' design specifications and manufacture a sizable, but not financially committal, run of the MechaCar to be used as product testers. Then, we will purchase or acquire a same-sample-size number of competitors' new models in the same class as the MechaCar. We will recruit volunteers to then drive these vehicles in their daily lives, accounting for differences in day-of-week driving, seasonal factors, and others with balanced schedules to ensure individuals are not either only driving one car on Mondays, or during the winter, and so on. From this, we will collect vehicle-performance data such as MPG, engine factors like RPM and suspension absorption or adaptability, as well as self-reported consumer-satisfaction data. To control for possible mis-reporting and other confounding survey factors (e.g. hypothetical behavior/preference vs. actual), we will also offer these consumers a choice at the end of which car to keep, with possibly a mechanism to collect if the sconsumers was ultimately satisfied with their choice or not. We can then perform two-sample t-tests on both types of data to determine differences.
