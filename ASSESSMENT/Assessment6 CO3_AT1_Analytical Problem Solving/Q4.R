
patients <- data.frame(
  PatientID = 1:6,
  Name = c("Anita", "Bharat", "Chitra", "Deepak", "Esha", "Farhan"),
  Age = c(25, 40, 35, 50, 28, 45)
)

treatments <- data.frame(
  PatientID = c(1,2,2,3,3,3,4,5,6,6,6),
  Treatment = c("X-Ray","Blood Test","MRI","Checkup","X-Ray","MRI",
                "Surgery","Checkup","Blood Test","MRI","X-Ray"),
  Date = as.Date(c("2026-07-01","2026-07-02","2026-07-05",
                   "2026-07-03","2026-07-06","2026-07-07",
                   "2026-07-04","2026-07-08",
                   "2026-07-02","2026-07-05","2026-07-09"))
)

data <- merge(patients, treatments, by = "PatientID")

visit_count <- table(data$PatientID)

frequent <- names(visit_count[visit_count > 2])
frequent_patients <- subset(data, PatientID %in% frequent)

print(frequent_patients)

write.csv(frequent_patients, "HospitalReport.csv", row.names = FALSE)
