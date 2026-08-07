install.packages("reshape2")
library(reshape2)

agriculture <- data.frame(
  Day = c("Day1", "Day2", "Day3", "Day4", "Day5"),
  Temperature = c(30, 32, 29, 31, 28),
  Humidity = c(65, 60, 70, 68, 75),
  CropYield = c(120, 115, 130, 125, 135)
)

print("Original Agriculture Dataset:")
print(agriculture)

long_data <- melt(
  agriculture,
  id.vars = "Day",
  variable.name = "Parameter",
  value.name = "Value"
)

print("Long Format Dataset:")
print(long_data)

temperature <- subset(long_data, Parameter == "Temperature")
humidity <- subset(long_data, Parameter == "Humidity")
crop_yield <- subset(long_data, Parameter == "CropYield")

print("Average Temperature:")
print(mean(temperature$Value))

print("Average Humidity:")
print(mean(humidity$Value))

print("Average Crop Yield:")
print(mean(crop_yield$Value))

reconstructed_data <- dcast(
  long_data,
  Day ~ Parameter,
  value.var = "Value"
)

print("Reconstructed Original Dataset:")
print(reconstructed_data)

write.csv(
  reconstructed_data,
  "C:/Users/adhit/Downloads/Smart_Agriculture_Report.csv",
  row.names = FALSE
)

cat("Smart_Agriculture_Report.csv created successfully!\n")