
emp <- data.frame(
  EmpID = 1:4,
  Name = c("Arun", "Bhavya", "Charan", "Divya"),
  Department = c("HR", "IT", "Finance", "IT")
)

sal <- data.frame(
  EmpID = 1:4,
  BasicPay = c(40000, 50000, 60000, 55000),
  Allowance = c(10000, 15000, 12000, 18000)
)

data <- merge(emp, sal, by = "EmpID")
data$GrossSalary <- data$BasicPay + data$Allowance

dept_salary <- aggregate(GrossSalary ~ Department, data, mean)
highest_dept <- dept_salary[which.max(dept_salary$GrossSalary), ]

above60k <- subset(data, GrossSalary > 60000)

print(data)
print(highest_dept)
print(above60k)
