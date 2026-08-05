library(reshape2)

weather <- data.frame(
  Date = as.Date("2026-07-01") + 0:4,
  Delhi = c(32, 34, 33, 35, 36),
  Mumbai = c(28, 29, 30, 29, 28),
  Chennai = c(31, 32, 33, 34, 35)
)

weather_long <- melt(weather, id.vars = "Date", variable.name = "City", value.name = "Temp")
city_avg <- aggregate(Temp ~ City, weather_long, mean)
weather_wide <- dcast(weather_long, Date ~ City, value.var = "Temp")
write.csv(weather_wide, "WeatherOutput.csv", row.names = FALSE)

print(city_avg)
print(weather_wide)
