# Product Inventory

products <- factor(c(
  "Electronics",
  "Grocery",
  "Stationery",
  "Electronics",
  "Grocery",
  "Grocery",
  "Stationery",
  "Electronics"
))

levels(products) <- sort(levels(products))

cat("Categories in Alphabetical Order:\n")
print(levels(products))

count <- integer(length(levels(products)))

for(i in 1:length(products))
{
  index <- as.integer(products[i])
  count[index] <- count[index] + 1
}

for(i in 1:length(levels(products)))
{
  cat(levels(products)[i], "=", count[i], "\n")
}