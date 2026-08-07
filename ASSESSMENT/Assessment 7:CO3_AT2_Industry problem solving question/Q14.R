company <- data.frame(
  CompanyID = c(101, 102, 103),
  Company = c("ABC Ltd", "XYZ Ltd", "PQR Ltd"),
  Sector = c("Technology", "Banking", "Automobile")
)

stock <- data.frame(
  CompanyID = c(101, 101, 101, 102, 102, 102, 103, 103, 103),
  Month = c("January", "February", "March",
            "January", "February", "March",
            "January", "February", "March"),
  StockPrice = c(150, 160, 170, 200, 210, 220, 100, 110, 115)
)

write.csv(company, "Company.csv", row.names = FALSE)
write.csv(stock, "Stock.csv", row.names = FALSE)

company <- read.csv("Company.csv")
stock <- read.csv("Stock.csv")

financial_data <- merge(
  company,
  stock,
  by = "CompanyID"
)

print("Merged Financial Data:")
print(financial_data)

monthly_performance <- aggregate(
  StockPrice ~ Company + Month,
  data = financial_data,
  FUN = mean
)

print("Company-wise Monthly Stock Performance:")
print(monthly_performance)

performance_report <- reshape(
  monthly_performance,
  idvar = "Company",
  timevar = "Month",
  direction = "wide"
)

print("Reshaped Stock Performance:")
print(performance_report)

write.csv(
  performance_report,
  "C:/Users/adhit/Downloads/Financial_Market_Report.csv",
  row.names = FALSE
)

cat("Financial_Market_Report.csv created successfully!\n")