
students <- data.frame(
  StudentID = 1:5,
  Name = c("Asha", "Bala", "Chitra", "Deepak", "Esha"),
  Department = c("CS", "IT", "CS", "ECE", "IT"),
  Marks1 = c(80, 70, 90, 60, 85),
  Marks2 = c(75, 65, 88, 55, 80),
  Marks3 = c(78, 72, 92, 58, 83)
)

students$Total <- students$Marks1 + students$Marks2 + students$Marks3
students$Average <- students$Total / 3

class_avg <- mean(students$Average)

above_avg <- subset(students, Average > class_avg)

dept_avg <- aggregate(Average ~ Department, data = students, mean)

print(students)
print(above_avg)
print(dept_avg)
