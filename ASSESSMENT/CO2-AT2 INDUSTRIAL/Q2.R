data <- read.csv("C:\\Users\\hk838\\Downloads\\Customer_Transaction_Dataset.csv")
range(data$Purchase_Amount)
var(data$Purchase_Amount)
sd(data$Purchase_Amount)
IQR(data$Purchase_Amount)
boxplot(data$Purchase_Amount,
        col = "orange",
        main = "Purchase Amount")