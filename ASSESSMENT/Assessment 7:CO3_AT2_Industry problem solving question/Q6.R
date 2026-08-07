employee <- data.frame(
  EmployeeID = c(101, 102, 103, 104, 105),
  Name = c("Arun", "Bala", "Charan", "Divya", "Esha"),
  Department = c("IT", "HR", "Finance", "IT", "Marketing")
)

salary <- data.frame(
  EmployeeID = c(101, 102, 103, 104, 105),
  MonthlySalary = c(45000, 50000, NA, 55000, 48000)
)

write.csv(employee, "Employee.csv", row.names = FALSE)
write.csv(salary, "Salary.csv", row.names = FALSE)

employee <- read.csv("Employee.csv")
salary <- read.csv("Salary.csv")

employee_data <- merge(employee, salary, by = "EmployeeID")

print("Merged Employee Database:")
print(employee_data)

employee_data$MonthlySalary[is.na(employee_data$MonthlySalary)] <-
  mean(employee_data$MonthlySalary, na.rm = TRUE)

employee_data$AnnualSalary <- employee_data$MonthlySalary * 12

print("Updated Employee Database:")
print(employee_data)

write.csv(
  employee_data,
  "C:/Users/adhit/Downloads/Updated_Employee_Database.csv",
  row.names = FALSE
)

cat("Updated_Employee_Database.csv created successfully!\n")