
# Set the working directory
setwd("C:/DataScience")

# Read a tab-delimited data file
cars <- read.csv("Cars.csv")

# Peek at the data
head(cars)

# Load the ggplot2 library
library(ggplot2)

# Create a frequency bar chart
ggplot(data=cars, aes(x=Transmission))+geom_bar()+ggtitle("Count of cars by Transmission type")+xlab("Transmission Type")+ylab("Count of Cars")

# Create a histogram
ggplot(data=cars, aes(x=Fuel.Economy))+geom_histogram(bins=10)+ggtitle("Distribution of Fuel Economy")+xlab("Fuel Economy (mpg)")+ylab("Count of Cars")

# Create a density plot
ggplot(data=cars, aes(x=Fuel.Economy))+geom_density()+ggtitle("Distribution of Fuel Economy")+xlab("Fuel Economy (mpg)")+ylab("Density")

# Create a scatter plot
ggplot(data=cars, aes(x=Cylinders, y=Fuel.Economy))+geom_point()+ggtitle("Fuel Economy by Cylinders")+ylab("Fuel Economy (mpg)")+xlab("Number of Cylinders")
