cust <- data.frame(
  CustomerID = 1:5,
  Name = c("Asha","Bala","Chitra","Deepak","Esha")
)

orders <- data.frame(
  CustomerID = c(1,1,2,2,2,3,4,4,4,4,5),
  Amount = c(2000,1500,3000,2500,1000,4000,1200,1300,1400,1500,2200)
)

data <- merge(cust, orders, by = "CustomerID")
purchase_count <- table(data$CustomerID)
frequent <- names(purchase_count[purchase_count > 3])
total_purchase <- aggregate(Amount ~ CustomerID, data, sum)
write.csv(total_purchase, "PurchaseReport.csv", row.names = FALSE)

print(frequent)
print(total_purchase)
