library(reshape2)

energy <- data.frame(
  Date = c("2026-08-01", "2026-08-02", "2026-08-03"),
  Chennai = c(450, 480, 500),
  Coimbatore = c(350, 370, 390),
  Madurai = c(300, 320, 340),
  Salem = c(280, 300, 310)
)

write.csv(energy, "Energy.csv", row.names = FALSE)

energy <- read.csv("Energy.csv")

print("Original Energy Dataset:")
print(energy)

long_energy <- melt(
  energy,
  id.vars = "Date",
  variable.name = "Region",
  value.name = "Consumption"
)

print("Long Format Energy Dataset:")
print(long_energy)

daily_consumption <- dcast(
  long_energy,
  Date ~ Region,
  value.var = "Consumption",
  fun.aggregate = sum
)

print("Daily Energy Consumption:")
print(daily_consumption)

write.csv(
  daily_consumption,
  "C:/Users/adhit/Downloads/Energy_Consumption_Report.csv",
  row.names = FALSE
)

cat("Energy_Consumption_Report.csv created successfully!\n")