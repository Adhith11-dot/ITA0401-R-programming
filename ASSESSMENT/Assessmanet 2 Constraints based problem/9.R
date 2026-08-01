
# Electricity Consumption Analysis

consumption <- matrix(c(
  200,220,210,215,225,230,240,235,220,210,205,215,
  180,190,200,210,220,230,240,250,260,270,280,290,
  150,160,170,180,190,200,210,220,230,240,250,260,
  250,260,270,280,290,300,310,320,330,340,350,360,
  170,175,180,185,190,195,200,205,210,215,220,225
), nrow=5, byrow=TRUE)

annual <- consumption %*% matrix(1,12,1)

cat("Annual Consumption:\n")
print(annual)

max_building <- which.max(annual)

cat("Building with Highest Consumption =", max_building, "\n")