attendance1 <- data.frame(StudentID=1:3, Present=c(18,20,15), TotalClasses=c(20,20,20))
attendance2 <- data.frame(StudentID=4:6, Present=c(14,19,16), TotalClasses=c(20,20,20))

attendance <- rbind(attendance1, attendance2)
attendance$Percentage <- (attendance$Present / attendance$TotalClasses) * 100
low_attendance <- subset(attendance, Percentage < 75)
write.csv(low_attendance, "LowAttendance.csv", row.names = FALSE)

print(attendance)
print(low_attendance)
