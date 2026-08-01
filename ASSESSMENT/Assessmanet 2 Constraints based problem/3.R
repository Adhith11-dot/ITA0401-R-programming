# Rainfall Data

rainfall <- array(c(
  120,130,140,150,125,135,145,155,
  100,110,120,130,105,115,125,135,
  150,160,170,180,155,165,175,185
), dim=c(3,4,2))

annual <- c(0,0,0)

for(city in 1:3)
{
  total <- 0
  
  for(season in 1:4)
  {
    for(year in 1:2)
    {
      total <- total + rainfall[city,season,year]
    }
  }
  
  annual[city] <- total
}

print(annual)

max_city <- 1

for(i in 2:3)
{
  if(annual[i] > annual[max_city])
    max_city <- i
}

cat("City with Highest Annual Rainfall = City", max_city, "\n")