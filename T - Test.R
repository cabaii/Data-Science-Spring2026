#Author: Abai Ikwechegh; Date:04/01/2026; Purpose: Test T - test


#Create two groups: x and y
x = rnorm(10)
y = rnorm(10)

#plot the variables x and y
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')

#Apply t test function on x and y
ttest = t.test(x,y)

        Welch Two Sample t-test

data:  x and y
t = -0.51823, df = 17.958, p-value = 0.6106
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.2061433  0.7289064
sample estimates:
  mean of x   mean of y 
0.001829112 0.240447584 