# Load dataset
data(USArrests)

# Summary
summary(USArrests)

# State with largest rape arrests
USArrests[which.max(USArrests$Rape),]

# Maximum and Minimum Murder rate
max(USArrests$Murder)
min(USArrests$Murder)

# Correlation
cor(USArrests)

# States above median Assault
USArrests[USArrests$Assault >
            median(USArrests$Assault),]

# Bottom 25% Murder
quant <- quantile(USArrests$Murder,0.25)

USArrests[USArrests$Murder<=quant,]

# Histogram
hist(USArrests$Murder,
     main="Histogram of Murder",
     col="lightblue")

# Density Plot
plot(density(USArrests$Murder),
     main="Density Plot")

# Scatter Plot
plot(USArrests$Murder,
     USArrests$Assault,
     xlab="Murder",
     ylab="Assault")

# Bar Graph
barplot(USArrests$Murder,
        names.arg=row.names(USArrests),
        las=2)