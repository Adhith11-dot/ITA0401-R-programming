shipment <- data.frame(
  ShipmentID = c(101, 102, 103, 104, 105, 106),
  Customer = c("Arun", "Bala", "Charan", "Divya", "Esha", "Farhan"),
  City = c("Chennai", "Coimbatore", "Chennai", "Madurai", "Coimbatore", "Salem"),
  ShipmentDate = c("2026-08-01", "2026-08-01", "2026-08-02",
                   "2026-08-02", "2026-08-03", "2026-08-03")
)

delivery <- data.frame(
  ShipmentID = c(101, 102, 103, 104, 105, 106),
  DeliveryStatus = c("Delivered", "Delayed", "Delivered",
                     "Delayed", "Delivered", "Delayed")
)

write.csv(shipment, "Shipment.csv", row.names = FALSE)
write.csv(delivery, "Delivery.csv", row.names = FALSE)

shipment <- read.csv("Shipment.csv")
delivery <- read.csv("Delivery.csv")

logistics_data <- merge(
  shipment,
  delivery,
  by = "ShipmentID"
)

print("Merged Shipment and Delivery Data:")
print(logistics_data)

delayed_deliveries <- subset(
  logistics_data,
  DeliveryStatus == "Delayed"
)

print("Delayed Deliveries:")
print(delayed_deliveries)

city_summary <- aggregate(
  ShipmentID ~ City,
  data = logistics_data,
  FUN = length
)

colnames(city_summary)[2] <- "TotalShipments"

print("City-wise Shipment Summary:")
print(city_summary)

write.csv(
  city_summary,
  "C:/Users/adhit/Downloads/City_Wise_Shipment_Summary.csv",
  row.names = FALSE
)

write.csv(
  delayed_deliveries,
  "C:/Users/adhit/Downloads/Delayed_Deliveries.csv",
  row.names = FALSE
)

cat("Reports created successfully!\n")