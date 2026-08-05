vec <- c(10,20,30)

mat <- matrix(1:9,nrow=3)

fun <- mean

mylist <- list(
  Numbers=vec,
  Matrix=mat,
  Average=fun(vec)
)

print(mylist)

num <- as.integer(readline("Enter a number: "))

cat("Factors are:\n")

for(i in 1:num)
{
  if(num %% i == 0)
    cat(i," ")
}

for(i in 1:100)
{
  if(i %% 3 == 0 && i %% 5 == 0)
    print("FizzBuzz")
  else if(i %% 3 == 0)
    print("Fizz")
  else if(i %% 5 == 0)
    print("Buzz")
  else
    print(i)
}