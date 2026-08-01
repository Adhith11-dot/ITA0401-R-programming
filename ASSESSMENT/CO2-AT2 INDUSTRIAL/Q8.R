data <- read.csv("C:\\Users\\hk838\\Downloads\\Customer_Transaction_Dataset.csv")
aggregate(Purchase_Amount ~ Membership_Status,
          data = data,
          mean)
aggregate(Customer_Rating ~ Membership_Status,
          data = data,
          mean)
aggregate(Purchase_Amount ~ Store_Type,
          data = data,
          mean)
aggregate(Purchase_Amount ~ Product_Category,
          data = data,
          mean)