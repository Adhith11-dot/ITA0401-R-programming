vec <- c(10,20,30)

mat <- matrix(1:9,nrow=3)

fun <- mean

mylist <- list(
  Numbers=vec,
  Matrix=mat,
  Average=fun(vec)
)

print(mylist)