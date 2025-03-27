#install package readxl
#import database vote1.xlsx
library(readxl)
> vote1 <- read_excel("Desktop/assignment_econometrics_21-22 - week 1 2/vote1.xlsx")
> View(vote1)
colnames(vote1)
[1] "state"    "district" "democA"   "voteA"    "expendA" 
[6] "expendB"  "prtystrA" "lexpendA" "lexpendB" "shareA"

> #erwthma 1 using scatter plot
>par(mfrow=c(3, 1))
>scatter.smooth(x=vote1$expendA, y=vote1$voteA, main="voteA~expendA")
>scatter.smooth(x=vote1$expendB, y=vote1$voteA, main="voteA~expendB")
>scatter.smooth(x=vote1$prtystrA, y=vote1$voteA, main="voteA~prtystrA")
  
  
#erwthma 2 kai 4  Multiple Linear Regression  
> fit <-lm(formula = voteA ~ expendA + expendB + prtystrA, data = vote1)
> summary(fit)

Call:
  lm(formula = voteA ~ expendA + expendB + prtystrA, data = vote1)

Residuals:
  Min      1Q  Median      3Q     Max 
-26.661  -8.385   0.362   8.536  30.814 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 33.267136   4.416778   7.532 2.87e-12 ***
  expendA      0.034924   0.003369  10.365  < 2e-16 ***
  expendB     -0.034924   0.003001 -11.636  < 2e-16 ***
  prtystrA     0.342515   0.087952   3.894 0.000142 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 11.12 on 169 degrees of freedom
Multiple R-squared:  0.5687,	Adjusted R-squared:  0.561 #erwthma 5
F-statistic: 74.27 on 3 and 169 DF,  p-value: < 2.2e-16