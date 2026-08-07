student <- data.frame(
  StudentID = c(101, 102, 103, 104, 105),
  Name = c("Arun", "Bala", "Charan", "Divya", "Esha"),
  Department = c("IT", "CSE", "ECE", "IT", "CSE")
)

marks <- data.frame(
  StudentID = c(101, 102, 103, 104, 105),
  Semester1 = c(85, 78, 92, 75, 88),
  Semester2 = c(90, 82, 89, 80, 91),
  Semester3 = c(88, 85, 94, 78, 87)
)

write.csv(student, "Student.csv", row.names = FALSE)
write.csv(marks, "Semester_Marks.csv", row.names = FALSE)

student <- read.csv("Student.csv")
marks <- read.csv("Semester_Marks.csv")

student_data <- merge(student, marks, by = "StudentID")

student_data$AverageMarks <- rowMeans(
  student_data[, c("Semester1", "Semester2", "Semester3")]
)

print("Student Performance Report:")
print(student_data)

write.csv(
  student_data,
  "C:/Users/adhit/Downloads/Student_Performance_Report.csv",
  row.names = FALSE
)

cat("Student_Performance_Report.csv created successfully!\n")