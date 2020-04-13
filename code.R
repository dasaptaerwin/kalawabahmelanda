# Code for blog "solusi kala wabah melanda"
# Author: Dasapta Erwin Irawan
# Repository: https://github.com/dasaptaerwin/kalawabahmelanda

# Setting up working folder

setwd("~/Downloads/kalawabahmelanda") #change to your working folder

# Installing and loading packages
install.packages("tidyverse")
library(tidyverse)

# Loading data
data_dim <- read.csv("datasets-dimensions.csv")
data_lens <- read.csv("datasets-lens.csv")
head(data_dim)


# Scatter plot
ggplot(data_dim, aes(x=Sum_dataset, y=Sum_pub)) + 
  geom_point() 

ggplot(data_lens, aes(x=Sum_data, y=Works_cited)) +
  geom_point() 


