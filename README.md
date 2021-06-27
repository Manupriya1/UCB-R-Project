# UCB-R-Project

# Linear Regression to Predict MPG

## Hypothesis Testing

H0: The slope of the linear model is zero, or m = 0, No significant linear relationship

Ha: The slope of the linear model is not zero, or m ≠ 0, Significant linear relationship

### Results of Regression

![pic 1](https://user-images.githubusercontent.com/69255270/123555066-3ad35180-d738-11eb-9dbc-b5a820f52da0.jpg)

The p-value is 5.35e-11, which is much smaller than the assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

Vehicle length and Ground clearance have a significant impact on mpg and provide a significant contribution to the model. Vehicle weight has some impact on MPG but not as strong as vehicle lenght and ground clearance. Soiler angle has statistically no impact on mpg. 

Intercept is also a statistically significant, which means that there are other variables and factors that contribute to the variation in mpg that have not been included in the model.

The r-squared value is 0.71, indicating 71% of the predictions made by the model are correct.

Over all, this is an effective model for predicting the mpg of MechaCar prototypes, however, it can still be improved by identifying other variables that could increase the R-squared value.


