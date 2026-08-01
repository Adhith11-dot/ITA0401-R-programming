# Employee Salary Matrix

salary <- matrix(c(
  25000,5000,3000,
  28000,6000,3500,
  30000,7000,4000,
  27000,5500,3200
), nrow=4, byrow=TRUE)

total_salary <- salary[,1] + salary[,2] + salary[,3]

cat("Department-wise Total Salary:\n")
print(total_salary)

max_dept <- 1

for(i in 2:length(total_salary))
{
  if(total_salary[i] > total_salary[max_dept])
    max_dept <- i
}

cat("Department with Maximum Salary = Department", max_dept, "\n")