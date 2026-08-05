data(ChickWeight)

model <- lm(weight ~ Time + Diet,
            data=ChickWeight)

summary(model)

newdata <- data.frame(
  Time=15,
  Diet=factor(2)
)

predict(model,newdata)

pred <- predict(model)

mse <- mean((ChickWeight$weight-pred)^2)

cat("Mean Squared Error =",mse)