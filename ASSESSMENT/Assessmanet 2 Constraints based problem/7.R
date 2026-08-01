# Bank Transaction Processing

bank <- data.frame(
  AccountNo=c(101,102,103,104),
  CustomerName=c("Amit","Bala","Charan","Deepak"),
  Balance=c(50000,65000,45000,70000),
  Status=c("Active","Inactive","Active","Inactive")
)

cat("Class of Each Column:\n")

print(sapply(bank, class))

bank$Status <- as.factor(bank$Status)

cat("\nAfter Conversion:\n")
print(sapply(bank, class))

cat("Balance Class =", class(bank$Balance), "\n")