#Author: Abai Ikwechegh; Date: February 18,2026, Purpose: ANOVA test

#Load library dplyr and ggplot2
library(dplyr)
library(ggplot2)

#Reading the poisons.csv file from github repo
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

#Read dataset using read.csv funtion
df <- read.csv(PATH) 

#plot the data in a box plot 
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()