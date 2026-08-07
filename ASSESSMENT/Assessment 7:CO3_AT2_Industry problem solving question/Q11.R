region1 <- data.frame(
  Region = "North",
  Date = c("2026-08-01", "2026-08-02", "2026-08-03"),
  DownloadSpeed = c(85, 90, 88),
  UploadSpeed = c(40, 45, 42)
)

region2 <- data.frame(
  Region = "South",
  Date = c("2026-08-01", "2026-08-02", "2026-08-03"),
  DownloadSpeed = c(95, 98, 92),
  UploadSpeed = c(50, 52, 48)
)

region3 <- data.frame(
  Region = "East",
  Date = c("2026-08-01", "2026-08-02", "2026-08-03"),
  DownloadSpeed = c(75, 80, 78),
  UploadSpeed = c(35, 38, 36)
)

write.csv(region1, "Network_North.csv", row.names = FALSE)
write.csv(region2, "Network_South.csv", row.names = FALSE)
write.csv(region3, "Network_East.csv", row.names = FALSE)

region1 <- read.csv("Network_North.csv")
region2 <- read.csv("Network_South.csv")
region3 <- read.csv("Network_East.csv")

network_data <- rbind(region1, region2, region3)

print("Combined Network Data:")
print(network_data)

download_summary <- aggregate(
  DownloadSpeed ~ Region,
  data = network_data,
  FUN = mean
)

print("Average Download Speed by Region:")
print(download_summary)

write.csv(
  download_summary,
  "C:/Users/adhit/Downloads/Network_Performance_Report.csv",
  row.names = FALSE
)

cat("Network_Performance_Report.csv created successfully!\n")