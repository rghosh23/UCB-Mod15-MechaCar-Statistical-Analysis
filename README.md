# MechaCar Statistical Analysis

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Below we used RScript to perform statistical analysis on the production dataset to provide insights that may help the manufacturing team.

## Linear Regression to Predict MPG
Data summarized below:

![Deliverable1](https://user-images.githubusercontent.com/102441140/180900951-c88195d2-d6c4-49ed-93b1-d969a97954d4.png)

***Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?***

According the summarized data, vehicle_length and ground clearence have the lowest probablity of a random event and their respective t-test values are over 2, indicating a significant difference.

***Is the slope of the linear model considered to be zero? Why or why not?***

The slope of the linear model is not zero as none of the estimate coefficients are zero. Vehicle-length and spoiler_anle have the highest slope.

***Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?***

Given the R-squared value is over 0.7, we can say that there is a strong correlation between mpg and the given variables of vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, and AWD.

## Summary Statistics on Suspension Coils
Summary statistics overall:

![Deliverable2_total-summary](https://user-images.githubusercontent.com/102441140/180901113-b7f81c11-c0cb-4799-97a9-677ecac39631.png)

Summary statistics per lot:

![Deliverable2_lots-summary](https://user-images.githubusercontent.com/102441140/180901158-ecc32ad2-5781-4e06-91cf-b44b0838c1c2.png)

***The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?***

We can see from the total lot data that the variance is  approximately 63 PSI, which falls below the recommended the 100 PSI value. However, after breaking down the data, we see that the variance in Lot 1 and Lot 2 are approximately 1 PSI and 7.5 PSI respectively, indicating strong precision within those two lots. But Lot 3 has a variance of  approximately 170 PSI, which goes over the threshold of 100 PSI. This data also indicates that most of the variance for the total data is probably due to Lot 3.

## T-Tests on Suspension Coils
T-Test summary overall:

![Deliverable3_total-ttest](https://user-images.githubusercontent.com/102441140/180901879-68623e78-f438-46eb-b1b0-5d84ed981747.png)

The t-test on the overall data was used to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. The result of the t-test showed that the t-value is -1.89 and a p-value of 0.06. Because our p-value is higher than the assumed statistical significance of 0.05 and t-value is greater that -2, we fail to reject the null hypothesis.

T-Test summary per lot:

![Deliverable3_lots-ttest](https://user-images.githubusercontent.com/102441140/180901925-740eaae1-6805-4ba6-adb2-569f4a38372d.png)

Lot 1: t-test is 0 and the p-value is 1. There is no statistical significance.
Lot 2: t-test is 0.52 and the p-value is 0.61. There is no statistical significance.
Lot 3: t-test is 2.09 and the p-value is 0.04. Since p value is lower than our assumed significance of 0.05 and t-value exceeds 2, there is statistical significance between Lot 3 and the mean.

## Study Design: MechaCar vs. Competition
The following questions need to be addressed in order to design a study to assess how MechaCar performs in comparision to its competitors:

*What metric or metrics need to be tested?*

An important metric for consumers will be fuel efficency on the highway and the city.

*What is the null hypothesis or alternative hypothesis?*

H0: Highway and city fuel efficeincy for MechaCars will be the same as the competitors.

Ha: Highway and city fuel efficiency for MechaCars are 10-20% different (higher/lower) than the competitors based on mpg measured after 60 minutes of continuous driving in the city and also on the highway. 

*What statistical test would you use to test the hypothesis? And why?*

Since we will be collecting data from various competitor cars as well, we need to use two-sample t-test to compare MechaCar data to its different competitors.

*What data is needed to run the statistical test?*

MPG data needs to be collected from city drivers and highway drivers. The data for city drivers must be from people who use their cars exclusively to drive in the city, and for drivers who use their cars exclusively on highways. This will ensure that we get an accurate measurement for both those variables. 

