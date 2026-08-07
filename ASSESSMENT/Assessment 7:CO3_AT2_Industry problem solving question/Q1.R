# Healthcare Analytics

# 1. Create Patient dataset
patient <- data.frame(
  PatientID = c(101, 102, 103, 104, 105),
  Name = c("Arun", "Bala", "Charan", "Divya", "Esha"),
  Age = c(45, 32, 56, 28, 40),
  Disease = c("Diabetes", "Fever", "Hypertension", "Asthma", "Diabetes")
)

# Display Patient dataset
print(patient)


# 2. Create Treatment dataset
treatment <- data.frame(
  PatientID = c(101, 102, 103, 104, 105),
  Doctor = c("Dr. Kumar", "Dr. Ravi", "Dr. Meena",
             "Dr. Anitha", "Dr. Kumar"),
  TreatmentCost = c(5000, 2500, 7000, 4000, 5500)
)

# Display Treatment dataset
print(treatment)


# 3. Merge both datasets using PatientID
hospital_report <- merge(patient, treatment, by = "PatientID")


# 4. Display the merged report
print("Hospital Treatment Report:")
print(hospital_report)


# 5. Export the merged report as CSV
write.csv(hospital_report,
          "C:/Users/adhit/Downloads/Hospital_Report.csv",
          row.names = FALSE)

cat("Hospital_Report.csv created successfully!\n")