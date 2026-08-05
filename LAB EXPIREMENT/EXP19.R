Spend <- c(10,20,30,40,50,60,70,80)
Sales <- c(15,25,32,45,52,60,68,80)

advertising <- data.frame(Spend,Sales)

model <- lm(Sales~Spend,
            data=advertising)

summary(model)

newdata <- data.frame(Spend=55)

predict(model,newdata)