
# Sales Dashboard

monthly_sales <- c(
  12000,15000,18000,16000,17000,19000,
  21000,22000,20000,23000,24000,25000
)

quarterly_sales <- matrix(c(
  45000,52000,63000,
  48000,55000,61000,
  50000,57000,65000,
  53000,60000,70000
), nrow=4, byrow=TRUE)

regional_sales <- array(c(
  12000,13000,14000,15000,
  16000,17000,18000,19000,
  20000,21000,22000,23000
), dim=c(2,2,3))

categories <- factor(c(
  "Electronics",
  "Grocery",
  "Stationery",
  "Electronics"
))

cat("Class Types:\n")
cat("Monthly Sales:", class(monthly_sales), "\n")
cat("Quarterly Sales:", class(quarterly_sales), "\n")
cat("Regional Sales:", class(regional_sales), "\n")
cat("Categories:", class(categories), "\n")

annual_sales <- sum(monthly_sales)

cat("\nTotal Annual Sales =", annual_sales, "\n")

region_total <- c(0,0)

for(region in 1:2)
{
  total <- 0
  
  for(q in 1:2)
  {
    for(year in 1:3)
    {
      total <- total + regional_sales[region,q,year]
    }
  }
  
  region_total[region] <- total
}

cat("Regional Totals:\n")
print(region_total)

best_region <- which.max(region_total)

cat("Best Performing Region =", best_region, "\n")

quarter_total <- rowSums(quarterly_sales)

cat("Quarterly Performance:\n")
print(quarter_total)