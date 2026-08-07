
branch1 <- data.frame(
  Month = c("January", "February", "March"),
  Sales = c(25000, 28000, 30000)
)
branch2 <- data.frame(
  Month = c("January", "February", "March"),
  Sales = c(22000, 26000, 29000)
)

branch3 <- data.frame(
  Month = c("January", "February", "March"),
  Sales = c(30000, 32000, 35000)
)

write.csv(branch1, "Branch1.csv", row.names = FALSE)
write.csv(branch2, "Branch2.csv", row.names = FALSE)
write.csv(branch3, "Branch3.csv", row.names = FALSE)

branch1 <- read.csv("Branch1.csv")
branch2 <- read.csv("Branch2.csv")
branch3 <- read.csv("Branch3.csv")

branch1$Branch <- "Branch 1"
branch2$Branch <- "Branch 2"
branch3$Branch <- "Branch 3"

sales_data <- rbind(branch1, branch2, branch3)

print("Consolidated Sales Data:")
print(sales_data)

total_sales <- aggregate(
  Sales ~ Branch,
  data = sales_data,
  FUN = sum
)

print("Total Sales for Each Branch:")
print(total_sales)

write.csv(
  total_sales,
  "C:/Users/adhit/Downloads/Retail_Sales_Report.csv",
  row.names = FALSE
)

cat("Retail_Sales_Report.csv created successfully!\n")