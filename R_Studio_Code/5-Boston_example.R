###################
# BOSTON ANALYSIS #
###################

##############################################################################################################
#Boston housing data is a data set in package MASS. The data set has 506 rows and 14 columns.

#This report provides an analysis and evaluation of the factors affecting the median value of 
# the owner occupied homes in the suburbs of Boston. The in-built data set of Boston Housing Data 
# in package MASS is used for this analysis and various factors about the structural quality, neighbourhood, 
# accessibility and air pollution such as per capita crime rate by town, proportion of non-retail business acres 
# per town, index of accessibility to radial highways etc are taken into account for this study.

#Approach Methods of analysis includes the following * Summary statistics of the variables and finding
# correlation between variables, * Exploratory data analysis using visualization * Random sampling of data 
# set into 80/20 training and testing data set * Fitting various models such as generalized linear regression, 
# regression tree, generalized additive model (GAM) and neural network * Finally, comparing the models based on
# in-sample (MSPE) and out-of-sample prediction errors (MSPE).
##################################################################################################################

# Packages required

library(MASS)
library(ggplot2)
library(dplyr)
library(tidyverse)
library(corrplot)
#library(leaps)
library(olsrr)
library(rpart)
library(mgcv)
library(boot)
library(rpart)
library(rpart.plot)

########################
# Exploratory analysis #
########################

data(Boston, package="MASS")
dim(Boston)
str(Boston)
head(Boston)


#summary statistics
summary(Boston)

#Check for missing values
sum(is.na(Boston))

#Check for duplicated values
sum(duplicated(Boston))

#checking correlation between variables
corrplot(cor(Boston), method = "number", type = "upper", diag = FALSE)

######################
# Modelling the data #
######################


set.seed(12383010) # es nuestro random_state
index <- sample(nrow(Boston), nrow(Boston) * 0.80)
Boston.train <- Boston[index, ]
Boston.test <- Boston[-index, ]

model2 <- lm(medv ~ ., data = Boston.train)
model2.sum <- summary(model2)
model2.sum

model.subset <- regsubsets(medv ~ ., data = Boston.train, nbest = 1, nvmax = 13)
summary(model.subset)
ols_step_all_possible(model2)

k <- ols_step_all_possible(model2)
plot(k)
