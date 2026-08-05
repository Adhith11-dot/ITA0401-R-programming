# Load dataset
data(iris)

# Dimensions
dim(iris)

# Summary
summary(iris)

# Standard deviation
sapply(iris[,1:4], sd)

# Quantiles
apply(iris[,1:4], 2, quantile)

# Group by Species
aggregate(. ~ Species, data=iris, mean)

# Pivot Table (Average Sepal.Length)
xtabs(Sepal.Length ~ Species, data=iris)

# Categorize Sepal.Length
iris$Category <- ifelse(iris$Sepal.Length < 5.5, "Short",
                        ifelse(iris$Sepal.Length < 6.5,
                               "Medium","Long"))

table(iris$Category)