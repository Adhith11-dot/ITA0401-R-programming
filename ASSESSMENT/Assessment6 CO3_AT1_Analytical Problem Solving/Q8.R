cust <- data.frame(
  CustomerID = 1:5,
  Name = c("Asha","Bala","Chitra","Deepak","Esha")
)

trans <- data.frame(
  CustomerID = c(1,1,2,2,3,3,3,4,5,5),
  Amount = c(50000,60000,40000,70000,30000,25000,50000,120000,80000,30000)
)

data <- merge(cust, trans, by = "CustomerID")
total_trans <- aggregate(Amount ~ CustomerID, data, sum)
big_spenders <- subset(total_trans, Amount > 100000)
write.csv(big_spenders, "HighTransactions.csv", row.names = FALSE)

print(total_trans)
print(big_spenders)
