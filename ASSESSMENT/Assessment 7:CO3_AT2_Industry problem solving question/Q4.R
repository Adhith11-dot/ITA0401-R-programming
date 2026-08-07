customer <- data.frame(
  CustomerID = c(101, 102, 103, 104, 105),
  Name = c("Arun", "Bala", "Charan", "Divya", "Esha"),
  Age = c(35, 42, 29, 51, 38),
  City = c("Chennai", "Coimbatore", "Madurai", "Salem", "Trichy")
)

loan <- data.frame(
  CustomerID = c(101, 102, 103, 104, 105),
  LoanType = c("Home Loan", "Car Loan", "Home Loan", "Business Loan", "Home Loan"),
  LoanAmount = c(1500000, 750000, 1200000, 2000000, 900000)
)

write.csv(customer, "Customer.csv", row.names = FALSE)
write.csv(loan, "Loan.csv", row.names = FALSE)

customer <- read.csv("Customer.csv")
loan <- read.csv("Loan.csv")

bank_report <- merge(customer, loan, by = "CustomerID")

print("Merged Banking Customer Report:")
print(bank_report)

filtered_report <- subset(bank_report, LoanAmount > 1000000)

print("Customers with Loans Exceeding Rs. 10,00,000:")
print(filtered_report)

write.csv(
  filtered_report,
  "C:/Users/adhit/Downloads/Banking_Loan_Report.csv",
  row.names = FALSE
)

cat("Banking_Loan_Report.csv created successfully!\n")