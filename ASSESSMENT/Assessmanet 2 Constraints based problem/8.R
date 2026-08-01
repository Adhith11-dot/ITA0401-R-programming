# Attendance Management

attendance <- c(90,82,88,95,80,76,91,86,79,84,89,92,87,83,96)

eligible <- c()
ineligible <- c()

for(i in 1:length(attendance))
{
  if(attendance[i] >= 85)
  {
    eligible <- c(eligible,i)
  }
  else
  {
    ineligible <- c(ineligible,i)
  }
}

cat("Eligible Students:\n")
print(eligible)

cat("Ineligible Students:\n")
print(ineligible)

percentage <- (length(eligible) / length(attendance)) * 100

cat("Eligible Percentage =", percentage, "%\n")