
# Load the data
data(iris)

# Set a seed to make randomness reproducable
set.seed(42)

# Randomly sample 100 of 150 row indexes
indexes <- sample(x=1:150, size=100)

#Inspect the random indexes
print(indexes)

# Creating a training set from indexes
train <- iris[indexes,]

# Creating a test set from remaining indexes
test <- iris[-indexes,]

# Load the decision tree package
# install.packages("tree") # if tree package is not installed
library(tree)

# Train a decision tree model
model <- tree(formula = Species ~ ., data = train)

# Inspect the model
summary(model)

# Visualize the decision tree model
plot(model)
text(model)

# Load color brewer library
library(RColorBrewer)

# Create a color palette
palette <- brewer.pal(3, "Set2")

# Create a scatterplot colored by species
plot(
    x = iris$Petal.Length, 
    y = iris$Petal.Width,
    pch = 19,
    col = palette[as.numeric(iris$Species)],
    main = "Iris Petal Length vs. Width",
    xlab = "Petal Length (cm)",
    ylab = "Petal Width (cm)")

# Plot the decision boundaries
plot(
    x = iris$Petal.Length, 
    y = iris$Petal.Width,
    pch = 19,
    col = palette[as.numeric(iris$Species)],
    main = "Iris Petal Length vs. Width",
    xlab = "Petal Length (cm)",
    ylab = "Petal Width (cm)")
partition.tree(
    tree = model,
    label = "Species",
    add = TRUE)

# Predict with the model
predictions <- predict(
    object = model,
    newdata = test,
    type = "class")

# Create a confusion matrix
table(
    x = predictions, 
    y = test$Species)

# Load the caret package
# install.packages("e1071")
library(caret)

# Evaluate the prediction results
confusionMatrix(
    data = predictions, 
    reference = test$Species)

# Set working directory
setwd("C:/Pluralsight")

# Save the tree model
save(model, file = "Tree.RData")

# Save the training data
save(train, file = "Train.RData")
