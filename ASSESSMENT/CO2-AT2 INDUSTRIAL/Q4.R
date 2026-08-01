data <- read.csv("C:\\Users\\hk838\\Downloads\\Customer_Transaction_Dataset.csv")
cor(data$Monthly_Income,
    data$Purchase_Amount)
plot(data$Monthly_Income,
     data$Purchase_Amount,
     xlab = "Monthly Income",
     ylab = "Purchase Amount",
     pch = 19,
     col = "blue")
model <- lm(Purchase_Amount ~ Monthly_Income,
            data = data)
summary(model)
abline(model,
       col = "red",
       lwd = 2)