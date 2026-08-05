students <- data.frame(StudentID=1:4, Name=c("Asha","Bala","Chitra","Deepak"), Department=c("CS","IT","CS","ECE"), Placed=c(1,1,0,1))
companies <- data.frame(CompanyID=1:2, CompanyName=c("Infosys","TCS"))
salary <- data.frame(StudentID=c(1,2,4), CompanyID=c(1,2,1), Package=c(600000,700000,650000))

data <- merge(students, salary, by="StudentID")
data <- merge(data, companies, by="CompanyID")
dept_place <- aggregate(Placed ~ Department, students, function(x) mean(x)*100)
company_avg <- aggregate(Package ~ CompanyName, data, mean)
top_company <- company_avg[which.max(company_avg$Package), ]
write.csv(data, "PlacementReport.csv", row.names = FALSE)

print(dept_place)
print(top_company)
