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
