data <- read.csv("C:\\Users\\hk838\\Downloads\\Customer_Transaction_Dataset.csv")
aggregate(Customer_Rating ~ Membership_Status,
          data = data,
          mean)
aggregate(Customer_Rating ~ Membership_Status,
          data = data,
          median)
aggregate(Customer_Rating ~ Membership_Status,
          data = data,
          sd)
boxplot(Customer_Rating ~ Membership_Status,
        data = data,
        col = c("green","pink"),
        main = "Customer Rating by Membership Status")