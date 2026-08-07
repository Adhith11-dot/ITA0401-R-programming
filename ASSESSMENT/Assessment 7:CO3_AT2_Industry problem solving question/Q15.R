intersection1 <- data.frame(
  Location = "Anna Nagar",
  Hour = c(8, 10, 12, 14, 18),
  TrafficVolume = c(450, 300, 350, 320, 600)
)

intersection2 <- data.frame(
  Location = "T Nagar",
  Hour = c(8, 10, 12, 14, 18),
  TrafficVolume = c(500, 350, 400, 380, 700)
)

intersection3 <- data.frame(
  Location = "Guindy",
  Hour = c(8, 10, 12, 14, 18),
  TrafficVolume = c(550, 400, 450, 420, 750)
)

write.csv(intersection1, "Traffic_Anna_Nagar.csv", row.names = FALSE)
write.csv(intersection2, "Traffic_T_Nagar.csv", row.names = FALSE)
write.csv(intersection3, "Traffic_Guindy.csv", row.names = FALSE)

intersection1 <- read.csv("Traffic_Anna_Nagar.csv")
intersection2 <- read.csv("Traffic_T_Nagar.csv")
intersection3 <- read.csv("Traffic_Guindy.csv")

traffic_data <- rbind(
  intersection1,
  intersection2,
  intersection3
)

print("Combined Traffic Data:")
print(traffic_data)

peak_traffic <- aggregate(
  TrafficVolume ~ Location,
  data = traffic_data,
  FUN = max
)

print("Peak-Hour Traffic by Location:")
print(peak_traffic)

peak_details <- traffic_data[
  ave(
    traffic_data$TrafficVolume,
    traffic_data$Location,
    FUN = function(x) x == max(x)
  ) == TRUE,
]

print("Peak Traffic Details:")
print(peak_details)

write.csv(
  peak_details,
  "C:/Users/adhit/Downloads/Smart_City_Traffic_Report.csv",
  row.names = FALSE
)

cat("Smart_City_Traffic_Report.csv created successfully!\n")