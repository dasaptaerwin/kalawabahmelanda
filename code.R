# Code for blog "solusi kala wabah melanda"
# Author: Dasapta Erwin Irawan
# Repository: https://github.com/dasaptaerwin/kalawabahmelanda

# Setting up working folder

setwd("~/Downloads/kalawabahmelanda") #change to your working folder

# Installing and loading packages
## package for data manipulation and plotting
install.packages("tidyverse")
library(tidyverse)

## package for converting plot to html
install.packages("plotly")
library(plotly)

## package for converting plot to html
install.packages("htmlwidgets")
library(htmlwidgets)

# Loading data
data_dim <- read.csv("data/datasets-dimensions.csv")
data_lens <- read.csv("data/datasets-lens.csv")
head(data_dim)


# Scatter plot
## making dimplot.pdf
dimplot <- ggplot(data_dim, aes(x=Sum_data, y=Sum_pub)) + 
  geom_point() + 
  labs(y='Sum of publication', x='Sum of datasets') +
  geom_text(aes(label = Fields), size=2, vjust=-1, hjust=0) +
  theme_bw() +
  ggtitle("Sum of datasets vs sum of publications (Dimensions database)")
print(dimplot)
plotlydim <- ggplotly(dimplot)
htmlwidgets::saveWidget(as_widget(plotlydim), selfcontained = TRUE, file = "plots/dimplot.html")


## making lensplot.pdf
lensplot <- ggplot(data_lens, aes(x=Sum_data, y=Works_cited)) + 
  geom_point() + 
  labs(y='Works cited', x='Sum of datasets') +
  geom_text(aes(label = Fields), size=2, vjust=-1, hjust=0) +
  theme_bw() +
  ggtitle("Sum of datasets vs Works cited (Lens database)")
print(lensplot)
plotlylens <- ggplotly(lensplot)
htmlwidgets::saveWidget(as_widget(plotlylens), selfcontained = TRUE, file = "lensplot.html")



