passenger <- data.frame(
  BookingID = c(101, 102, 103, 104, 105),
  PassengerName = c("Arun", "Bala", "Charan", "Divya", "Esha"),
  FlightNumber = c("AI101", "AI102", "AI103", "AI104", "AI105")
)

flight <- data.frame(
  FlightNumber = c("AI101", "AI102", "AI103", "AI104", "AI105"),
  Source = c("Chennai", "Delhi", "Mumbai", "Bangalore", "Kochi"),
  Destination = c("Delhi", "Mumbai", "Chennai", "Kochi", "Chennai"),
  FlightStatus = c("On Time", "Delayed", "On Time", "Delayed", NA)
)

write.csv(passenger, "Passenger.csv", row.names = FALSE)
write.csv(flight, "Flight.csv", row.names = FALSE)

passenger <- read.csv("Passenger.csv")
flight <- read.csv("Flight.csv")

airline_data <- merge(
  passenger,
  flight,
  by = "FlightNumber"
)

airline_data$FlightStatus[
  is.na(airline_data$FlightStatus)
] <- "Unknown"

print("Final Airline Reservation Report:")
print(airline_data)

delayed_flights <- subset(
  airline_data,
  FlightStatus == "Delayed"
)

print("Delayed Flights:")
print(delayed_flights)

write.csv(
  airline_data,
  "C:/Users/adhit/Downloads/Airline_Reservation_Report.csv",
  row.names = FALSE
)

cat("Airline_Reservation_Report.csv created successfully!\n")