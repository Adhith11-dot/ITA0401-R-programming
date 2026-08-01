data <- read.csv("C:\\Users\\hk838\\Downloads\\Customer_Transaction_Dataset.csv")
table_data <- table(data$Membership_Status,
                    data$Product_Category)
table_data
chisq.test(table_data)
barplot(table_data,
        beside = TRUE,
        col = rainbow(5),
        legend = TRUE)