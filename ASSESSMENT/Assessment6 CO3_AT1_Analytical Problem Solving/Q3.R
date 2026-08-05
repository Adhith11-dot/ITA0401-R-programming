library(reshape2)

sales <- data.frame(
  Product = c("Laptop", "Phone", "Tablet"),
  Jan = c(100, 200, 150),
  Feb = c(120, 180, 160),
  Mar = c(130, 210, 170),
  Apr = c(140, 220, 180)
)

sales_long <- melt(sales, id.vars = "Product", variable.name = "Month", value.name = "Sales")

total_sales <- aggregate(Sales ~ Product, data = sales_long, sum)

sales_wide <- dcast(sales_long, Product ~ Month, value.var = "Sales")

print(sales_long)
print(total_sales)
print(sales_wide)
