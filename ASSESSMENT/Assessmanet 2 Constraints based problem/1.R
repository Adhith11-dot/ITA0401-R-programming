# Student Marks Analysis
marks <- c(78, 92, 85, 67, 90, 88, 76, 95, 81, 73)
highest <- marks[1]
lowest <- marks[1]
sum_marks <- 0
for(i in 1:length(marks))
{
  if(marks[i] > highest)
    highest <- marks[i]
  if(marks[i] < lowest)
    lowest <- marks[i]
  sum_marks <- sum_marks + marks[i]
}
average <- sum_marks / length(marks)
cat("Highest Marks =", highest, "\n")
cat("Lowest Marks =", lowest, "\n")
