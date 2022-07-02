# MechaCar Statistical Analysis
#### *Applied statistics and hypothesis testing to analyze a series of datasets from the automotive industry* 
Click here to view the R-Script: [MechaCarChallenge.RScript](https://github.com/gforce2332/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R)


## Linear Regression to Predict MPG
![linear_regression_summary](https://user-images.githubusercontent.com/98711219/176985962-5a26dc4c-6a4b-4469-b908-4e1a7f1370c0.png)


* The variance of a non-random variable is typically 0. Thus, the intercept, vehicle_length and ground_clearance coeeficients can be said to provide a non-random amount of variance to the mpg values. 
* At a significance level of 0.05, we are able to reject the null hypothesis because of the extremely small p-value. The null hypothesis of a linear regression states that the slope (β1) is equal to 0. However, if we reject the null hypthesis, we're stating that the alternative (β1 ≠ 0) is true, proving that the slope is not 0.
* Multiple R-squared increases as more variables are passed through the regression. However, adjusted R-squared controls against this increase and adds penalties for the number of predictors making it a more accurate predictor of how effective the linear model is. An adjusted R-square of 0.6825 concludes that this linear model predicts the mpg of MechaCar prototypes relatively well.


## Summary Statistics on Suspension Coils
![total_summary](https://user-images.githubusercontent.com/98711219/176987205-05c4c7ed-39e5-4ea6-afb8-31e530da923a.png)

![lot_summary](https://user-images.githubusercontent.com/98711219/176987206-b5394139-ac9c-4a07-b47e-01a65d1c1a14.png)

* The design specifications for the MechaCar suspension coils dictate that the variance must not exceed 100 pounds per square inch. While the overall variance in the total summary data above is under 100 psi and meets specifications, there is a problem with one of the individual lots. The variance for Lot 3 is well over the acceptable threshold at 170.28.


## T-Tests on Suspension Coils 

* Suspension Coils Cumulative T-test

![t_test](https://user-images.githubusercontent.com/98711219/176987586-8a4e13cd-ed74-4fe6-bbe5-f4acf2dc4eb8.png)

* A review of the results of the T-test for the suspension coils across all the manufacturing lots shows that they are not statistically different from the population mean and the p-value is not low enough (.06028) for us to reject the null hypothesis.



![lots_t_test](https://user-images.githubusercontent.com/98711219/176987733-e149a651-faad-4d4e-9044-26c42097aa38.png)


* A review of the results of the T-test for the suspension coils for Lot 1 and Lot 2 shows that they are not statistically different from the population mean and the p-value is not low enough at 1 and 0.6072 for us to reject the null hypothesis.
* A review of the results of the T-test for the suspension coils for Lot 3 shows slightly statically different from the population mean, and the p-value is low enough (0.04168) for us to reject the null hypothesis. This lot needs to be more closely evaluated or possibly discarded. 


## Study Design: MechaCar vs Competition

Consumers take into consideration many factors when evaluating a car purchase. In addition to cost and safety rating when comparing MechaCar to it's competitors, and the price of gasoline rising exponentially city and highway fuel efficiency would be of great interest to consumers.

1. What metric or metrics are you going to test?
Safety rating and fuel efficiency would be the next metrics to test. 

2. What is the null hypothesis or alternative hypothesis?    
The null hypothesis is that the mean of the safety rating is zero. The alternative hypothesis is that the mean of the safety rating is not zero.

3. What statistical test would you use to test the hypothesis? And why?     
Using a multiple linear regression statistical summary would show how the variables impact the safety ratings and fuel efficiency for MechaCar and their competitors.

4. What data is needed to run the statistical test?     
A random sample of n > 30 for MechaCar and their competitor would need to be collected including city and highway fuel efficiency and the safety ratings.



