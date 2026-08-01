data <- read.csv("C:\\Users\\hk838\\Downloads\\Customer_Transaction_Dataset.csv")
male <- subset(data,
               Gender == "Male")$Purchase_Amount
female <- subset(data,
                 Gender == "Female")$Purchase_Amount
t.test(male, female)