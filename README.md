# UCB-R-Project

In this project I used R language to build a linear and multiple prgression model for a given data from a prototype automotive industry.

I have two complete datasets. The first dataset is comprised of different design specification such as vehicle length, vehicle weight, ground clearance, MPG (miles per gallon). The second dataset consists of MechaCar coil suspension test results from different manufacturing lots. 

## Linear Regression to Predict MPG

### Hypothesis Testing

H0: The slope of the linear model is zero, or m = 0, No significant linear relationship

Ha: The slope of the linear model is not zero, or m ≠ 0, Significant linear relationship

### Results of Regression

![pic 1](https://user-images.githubusercontent.com/69255270/123555066-3ad35180-d738-11eb-9dbc-b5a820f52da0.jpg)

The p-value is 5.35e-11, which is much smaller than the assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

Vehicle length and Ground clearance have a significant impact on mpg and provide a significant contribution to the model. Vehicle weight has some impact on MPG but not as strong as vehicle lenght and ground clearance. Soiler angle has statistically no impact on mpg. 

Intercept is also a statistically significant, which means that there are other variables and factors that contribute to the variation in mpg that have not been included in the model.

The r-squared value is 0.71, indicating 71% of the predictions made by the model are correct.

Over all, this is an effective model for predicting the mpg of MechaCar prototypes, however, it can still be improved by identifying other variables that could increase the R-squared value.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. The current manufacturing data on all the lots together meets the design specification, with a variance of 62.3 pounds per inch.

![summary](https://user-images.githubusercontent.com/69255270/123560354-72e98d00-d756-11eb-8b49-e76695edbffc.jpg)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. The current manufacturing data shows that Lot 3 has variance of 170 that exceeds the design specification. 

![lot summary](https://user-images.githubusercontent.com/69255270/123560359-7c72f500-d756-11eb-991e-84b87a4ab231.jpg)


## Suspension Coil T-Test

Applying the one-sample t-test to assess if there is a statistical difference between the mean of the dataset and the mean of population ~1500

H0 : There is no statistical difference between the sample mean and its population mean.
Ha : There is a statistical difference between the sample mean and its population mean.

#### One Sample t-test
![one sample t test](https://user-images.githubusercontent.com/69255270/123560517-86492800-d757-11eb-842e-d5041c3b9b27.jpg)

Assuming our significance level was the common 0.05, our p-value (0.06028) is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

#### t-test on each Lot
t-test on each lot individually results in the following p values:
- lot1: p-value = 1, indicating we don't have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.
- lot1: p-value = 0.6072, indicating we don't have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.
- lot1: p-value = 0.04168, indicating a very low probablity of null hypothesis to be true so we reject the null hypothesis, and we would state that the two means are statistically different.

## Study Design: MechaCar vs Competition.
A comparative study could be designed, which would compare the MechaCar prototype vehicles to other comparable vehicles on the market, for each metric of interest.

#### Metrics:
- Cost
- Fuel Efficiency
- MPG 
- Horsepower

#### Null Hypothesis and Alternate Hypothesis 
H0 : There is no statistical difference between the prototype metric mean and the market metric mean.
Ha : There is a statistical difference between the prototype metric mean and the market metric mean.

The collected data for the market vehicles and prototypes should match the metrics chosen for the study.

For example: Metric "COST" , Statistical test: Linear regression



