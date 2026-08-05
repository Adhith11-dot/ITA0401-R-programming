covid <- data.frame(
  State=c("TN","MH","DL"),
  Date=as.Date(c("2026-07-01","2026-07-01","2026-07-01")),
  Confirmed.Cases=c(1000,2000,1500),
  Recovered.Cases=c(800,1500,1200),
  Deaths=c(50,100,70)
)

confirmed <- aggregate(Confirmed.Cases ~ State, covid, sum)
recovered <- aggregate(Recovered.Cases ~ State, covid, sum)

recovery_data <- merge(confirmed, recovered, by="State")

recovery_data$RecoveryPercent <- (recovery_data$Recovered.Cases / recovery_data$Confirmed.Cases) * 100

print(recovery_data)
