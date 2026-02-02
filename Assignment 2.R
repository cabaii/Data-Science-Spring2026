# Author: Abai Ikwechegh ; Date: February 1, 2026 ; Purpose: Perform a correlation test for assignment 2

# Load required library
library(ggpubr)

# Load data
my_data <- read.csv("C:/Users/abaii/Downloads/02-10-2020_1930.csv")


# Run Pearson correlation test
result <- cor.test(my_data$Confirmed, my_data$Deaths, method = "pearson")

# Display result
result

# Plot correlation with regression line
ggscatter(
  my_data,
  x = "Deaths",
  y = "Confirmed",
  add = "reg.line",
  conf.int = TRUE,
  cor.coef = TRUE,
  cor.method = "pearson",
  xlab = "Deaths",
  ylab = "Confirmed"
)

#Result
     Pearson's product-moment correlation

data:  my_data$Confirmed and my_data$Deaths
t = 119.11, df = 70, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.9960631 0.9984661
sample estimates:
      cor 
0.9975423 