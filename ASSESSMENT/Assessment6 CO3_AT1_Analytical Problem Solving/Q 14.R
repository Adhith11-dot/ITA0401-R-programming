cust <- data.frame(CustomerID=1:3, Name=c("Asha","Bala","Chitra"), City=c("Delhi","Mumbai","Chennai"))
orders <- data.frame(OrderID=1:3, CustomerID=1:3, Amount=c(2000,3000,2500))
delivery <- data.frame(OrderID=1:3, DeliveryDays=c(4,6,3))

data <- merge(cust, orders, by="CustomerID")
data <- merge(data, delivery, by="OrderID")
city_avg <- aggregate(DeliveryDays ~ City, data, mean)
delayed <- subset(data, DeliveryDays > 5)
write.csv(delayed, "DeliveryReport.csv", row.names = FALSE)

print(city_avg)
print(delayed)
