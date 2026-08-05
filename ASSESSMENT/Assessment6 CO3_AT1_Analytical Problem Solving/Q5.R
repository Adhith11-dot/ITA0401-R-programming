cricket <- data.frame(
  PlayerName = c("Rohit","Virat","Dhoni","Pant","Hardik"),
  Match = 1:5,
  Runs = c(45, 78, 60, 30, 90),
  StrikeRate = c(150, 138, 142, 120, 160),
  Venue = c("Delhi","Mumbai","Delhi","Chennai","Mumbai")
)

high_sr <- subset(cricket, StrikeRate > 140)
venue_avg <- aggregate(Runs ~ Venue, cricket, mean)
write.csv(high_sr, "HighStrikeRate.csv", row.names = FALSE)

print(high_sr)
print(venue_avg)
