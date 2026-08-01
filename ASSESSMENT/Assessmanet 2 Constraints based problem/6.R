# Cricket Performance Analysis

players <- data.frame(
  Name=c("Virat","Rohit","Gill","Rahul","Hardik"),
  Matches=c(100,90,50,70,80),
  Runs=c(8000,7000,2500,4000,3500),
  Wickets=c(5,10,2,1,60),
  StrikeRate=c(135,118,128,110,145)
)

cat("Players with Strike Rate > 120:\n")

print(players[players$StrikeRate > 120,])

avg_runs <- sum(players$Runs) / nrow(players)

cat("Average Runs =", avg_runs, "\n")