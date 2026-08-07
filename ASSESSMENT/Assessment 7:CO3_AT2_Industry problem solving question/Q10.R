policy <- data.frame(
  PolicyID = c(101, 102, 103, 104, 105),
  Customer = c("Arun", "Bala", "Charan", "Divya", "Esha"),
  PolicyType = c("Health", "Life", "Health", "Vehicle", "Life")
)

claims <- data.frame(
  ClaimID = c(1, 2, 3, 4, 5, 6, 7),
  PolicyID = c(101, 101, 102, 103, 103, 103, 104),
  ClaimAmount = c(50000, 30000, 80000, 45000, 25000, 35000, 60000)
)

write.csv(policy, "Policy.csv", row.names = FALSE)
write.csv(claims, "Claims.csv", row.names = FALSE)

policy <- read.csv("Policy.csv")
claims <- read.csv("Claims.csv")

insurance_data <- merge(policy, claims, by = "PolicyID")

print("Merged Insurance Claim Data:")
print(insurance_data)

claim_count <- aggregate(
  ClaimID ~ Customer,
  data = insurance_data,
  FUN = length
)

multiple_claims <- subset(claim_count, ClaimID > 1)

print("Customers with Multiple Claims:")
print(multiple_claims)

claim_summary <- aggregate(
  ClaimAmount ~ PolicyType,
  data = insurance_data,
  FUN = sum
)

print("Claims Summary by Policy Type:")
print(claim_summary)

write.csv(
  claim_summary,
  "C:/Users/adhit/Downloads/Insurance_Claim_Report.csv",
  row.names = FALSE
)

cat("Insurance_Claim_Report.csv created successfully!\n")