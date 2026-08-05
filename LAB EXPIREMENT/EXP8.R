
set.seed(123)
x <- rnorm(100, mean = 50, sd = 10)

print(x)

count <- sum(x > 50)

cat("Count of numbers greater than 50 =", count, "\n")