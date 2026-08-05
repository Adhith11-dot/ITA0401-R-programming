prod <- data.frame(ProductID=1:4, ProductName=c("Laptop","Phone","Tablet","Camera"))
stock <- data.frame(ProductID=1:4, Stock=c(15,50,10,25), Value=c(60000,80000,30000,40000))
sup <- data.frame(SupplierID=c(101,102,103,104), ProductID=1:4)

data <- merge(prod, stock, by="ProductID")
data <- merge(data, sup, by="ProductID")
low_stock <- subset(data, Stock < 20)
sup_value <- aggregate(Value ~ SupplierID, data, sum)
write.csv(sup_value, "InventoryReport.csv", row.names = FALSE)

print(low_stock)
print(sup_value)
