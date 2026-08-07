product <- data.frame(
  ProductID = c(101, 102, 103, 104, 105),
  ProductName = c("Laptop", "Phone", "Headphones", "Tablet", "Smartwatch"),
  Category = c("Electronics", "Electronics", "Accessories", "Electronics", "Accessories")
)

reviews <- data.frame(
  ProductID = c(101, 102, 103, 104, 105),
  CustomerID = c(201, 202, 203, 204, 205),
  Rating = c(4.5, 4.2, 4.0, 4.7, 3.8)
)

write.csv(product, "Product.csv", row.names = FALSE)
write.csv(reviews, "Reviews.csv", row.names = FALSE)

product <- read.csv("Product.csv")
reviews <- read.csv("Reviews.csv")

ecommerce_data <- merge(product, reviews, by = "ProductID")

print("Merged E-Commerce Data:")
print(ecommerce_data)

rating_summary <- aggregate(
  Rating ~ Category,
  data = ecommerce_data,
  FUN = mean
)

print("Average Product Rating by Category:")
print(rating_summary)

colnames(rating_summary)[2] <- "AverageRating"

print(rating_summary)

write.csv(
  rating_summary,
  "C:/Users/adhit/Downloads/ECommerce_Rating_Report.csv",
  row.names = FALSE
)

cat("ECommerce_Rating_Report.csv created successfully!\n")