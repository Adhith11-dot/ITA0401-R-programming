data <- read.csv("C:\\Users\\hk838\\Downloads\\Customer_Transaction_Dataset.csv")
summary(data)
cor(data$Monthly_Income,
    data$Purchase_Amount)
aggregate(Purchase_Amount ~ Gender,
          data = data,
          mean)
aggregate(Purchase_Amount ~ Membership_Status,
          data = data,
          mean)
aggregate(Purchase_Amount ~ Store_Type,
          data = data,
          mean)
aggregate(Purchase_Amount ~ Product_Category,
          data = data,
          mean)