data <- read.csv("C:\\Users\\hk838\\Downloads\\Customer_Transaction_Dataset.csv")
mean(data$Purchase_Amount)
median(data$Purchase_Amount)
mode_value <- names(sort(table(data$Purchase_Amount), decreasing = TRUE))[1]
mode_value
hist(data$Purchase_Amount,
     col = "skyblue",
     main = "Purchase Amount Distribution",
     xlab = "Purchase Amount")