data <- read.csv("C:\\Users\\hk838\\Downloads\\Customer_Transaction_Dataset.csv")
anova_model <- aov(Customer_Rating ~ Store_Type,
                   data = data)
summary(anova_model)
boxplot(Customer_Rating ~ Store_Type,
        data = data,
        col = c("yellow","cyan","pink"))