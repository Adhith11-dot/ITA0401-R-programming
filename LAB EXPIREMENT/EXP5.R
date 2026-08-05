# Women's heights
height <- c(58,59,60,61,62,63,64,65)

factor_height <- factor(height)

print(factor_height)

# Random letters
set.seed(100)

letters_sample <- sample(LETTERS[1:5],20,replace=TRUE)

f <- factor(letters_sample)

print(f)

cat("Levels:\n")
levels(f)

cat("Frequency:\n")
table(f)