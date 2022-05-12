# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

AWD, spoiler angle, and vehicle weight provided a non-random amount of variance to linear model, meaning they had a significant impact on mpg in this dataset. This can be understood by assessing the Pr(>|t|) values circled in red below. Values greater than 0.05 are statistically unlikely to contribute random variance to the model, while values less than 0.05 are statistically unlikely to contribute non-random variance to the model.

![](readme_images/pvaluesMechaCars.png)

The slope of the model is not considered to be zero. Our null and alternative hypotheses were: 

H0 : The slope of the linear model is zero, or m = 0

Ha : The slope of the linear model is not zero, or m ≠ 0.

The p-value circled below in red is 5.35e-11, meaning the null hypothesis is rejected and the slope of the model is not zero.

![](readme_images/pvalueslope.png)

The linear model predicts mpg of MechaCar prototypes effectively due to the R-squared value. I analyzed the adjusted R-squared (which some say is more accurate than the multiple R-squared) and with a value of 0.68, I concluded the linear model moderately predicts mpg of the MechaCar prototypes.

![](readme_images/rsquaredmecha.png)