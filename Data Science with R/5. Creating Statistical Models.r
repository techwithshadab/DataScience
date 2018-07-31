
#Load the data
data(iris)

#Peek at data
head(iris)

#Create a scatterplot
plot( x=iris$Petal.Length, y=iris$Petal.Width, main="Iris Petal Length vs Width", xlab="Petal Length", ylab="Petal Width")

# Create a linear regression model
model <- lm(formula <- Petal.Width ~ Petal.Length, data=iris)

# Summarize the model
summary(model)

# Draw a regression line on the plot
plot( x=iris$Petal.Length, y=iris$Petal.Width, main="Iris Petal Length vs Width", xlab="Petal Length", ylab="Petal Width")
lines(x = iris$Petal.Length, y = model$fitted, col  ="red", lwd = 3)

# Get correlation coefficient
cor(x=iris$Petal.Length, y=iris$Petal.Width)

# Predict new values from the model
predict(object = model, newdata = data.frame(Petal.Length = c(2, 5, 7)))
