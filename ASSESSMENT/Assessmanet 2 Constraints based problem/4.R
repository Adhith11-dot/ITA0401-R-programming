# Hospital Patient Records

patients <- list(
  ID=c(101,102,103,104,105),
  Name=c("Arun","Bala","Chitra","David","Eva"),
  Age=c(65,45,70,58,80),
  BloodGroup=c("A+","B+","O+","AB+","A-"),
  Bill=c(15000,10000,25000,18000,30000)
)

cat("Patients Above Age 60:\n")

for(i in 1:length(patients$Age))
{
  if(patients$Age[i] > 60)
  {
    cat(patients$ID[i],
        patients$Name[i],
        patients$Age[i], "\n")
  }
}

sum_bill <- 0

for(i in 1:length(patients$Bill))
{
  sum_bill <- sum_bill + patients$Bill[i]
}

avg_bill <- sum_bill / length(patients$Bill)

cat("Average Hospital Bill =", avg_bill, "\n")