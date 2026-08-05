exam_data <- data.frame(
  Name = c("Alex","John","David","Lilly","Steve"),
  Score = c(90,75,88,60,95),
  Attempts = c(1,2,1,3,1),
  Qualify = c("Yes","Yes","Yes","No","Yes")
)

print(exam_data)

# Extract Name and Score
print(exam_data[,c("Name","Score")])

# Add new row
new_row <- data.frame(
  Name="Mary",
  Score=80,
  Attempts=2,
  Qualify="Yes"
)

exam_data <- rbind(exam_data,new_row)

# Add new column
exam_data$Grade <- c("A","B","A","C","A","B")

print(exam_data)

# Sort by Score
sorted_data <- exam_data[order(-exam_data$Score),]

print(sorted_data)

# Save to CSV
write.csv(exam_data,
          "exam_data.csv",
          row.names=FALSE)

cat("Data saved successfully.\n")