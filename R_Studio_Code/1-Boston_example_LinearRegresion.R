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
library(leaps)
library(olsrr)
library(rpart)
library(mgcv)
library(boot)
library(rpart)
library(rpart.plot)

########################
# Exploratory analysis #
########################
df = read_csv("data/boston.csv")

# The shape of the dataframe, the shape method in python

# Displaying the internal structure of a R object, the dtypes in python


#summary statistics


#Check for missing values


#Check for duplicated values

#####################
# Graphical analysis #
#####################

# Scatter plot


# Check Outliers

# Density plot – Check if the response variable is close to normality

# Correlation plot

######################
# Modelling the data #
######################

# Split data set into 80:20 train and test data

# Building linear regression model

#  Variable Selection

