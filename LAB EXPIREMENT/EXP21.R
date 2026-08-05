
data(iris)

iris$Species <- ifelse(
  iris$Species=="setosa",1,0)

set.seed(123)

# Train-Test Split
index <- sample(
  1:nrow(iris),
  0.8*nrow(iris)
)

train <- iris[index,]
test <- iris[-index,]


model <- glm(
  Species ~ Petal.Length + Petal.Width,
  data=train,
  family=binomial
)

summary(model)

prob <- predict(
  model,
  test,
  type="response"
)

pred <- ifelse(prob>0.5,1,0)

table(
  Actual=test$Species,
  Predicted=pred
)