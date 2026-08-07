
line1 <- data.frame(
  ProductionLine = "Line 1",
  ProductCategory = c("Electronics", "Furniture", "Clothing",
                      "Electronics", "Furniture"),
  TotalProducts = c(100, 120, 150, 110, 130),
  Defects = c(5, 8, 6, 4, 7)
)
line2 <- data.frame(
  ProductionLine = "Line 2",
  ProductCategory = c("Electronics", "Furniture", "Clothing",
                      "Electronics", "Furniture"),
  TotalProducts = c(110, 100, 140, 120, 125),
  Defects = c(8, 5, 10, 7, 9)
)
line3 <- data.frame(
  ProductionLine = "Line 3",
  ProductCategory = c("Electronics", "Furniture", "Clothing",
                      "Electronics", "Furniture"),
  TotalProducts = c(105, 115, 130, 125, 140),
  Defects = c(3, 6, 5, 4, 8)
)

write.csv(line1, "Production_Line1.csv", row.names = FALSE)
write.csv(line2, "Production_Line2.csv", row.names = FALSE)
write.csv(line3, "Production_Line3.csv", row.names = FALSE)

line1 <- read.csv("Production_Line1.csv")
line2 <- read.csv("Production_Line2.csv")
line3 <- read.csv("Production_Line3.csv")

quality_data <- rbind(line1, line2, line3)

print("Combined Manufacturing Quality Data:")
print(quality_data)

defect_summary <- aggregate(
  Defects ~ ProductCategory,
  data = quality_data,
  FUN = sum
)

print("Defect Counts by Product Category:")
print(defect_summary)

line_summary <- aggregate(
  cbind(TotalProducts, Defects) ~ ProductionLine,
  data = quality_data,
  FUN = sum
)

line_summary$DefectRate <- 
  (line_summary$Defects / line_summary$TotalProducts) * 100

print("Production Line Defect Rates:")
print(line_summary)

highest_line <- line_summary[
  which.max(line_summary$DefectRate),
]

print("Production Line with Highest Defect Rate:")
print(highest_line)

write.csv(
  line_summary,
  "C:/Users/adhit/Downloads/Manufacturing_Quality_Report.csv",
  row.names = FALSE
)

cat("Manufacturing_Quality_Report.csv created successfully!\n")