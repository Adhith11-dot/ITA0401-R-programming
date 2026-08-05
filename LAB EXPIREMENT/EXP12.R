library(reshape2)

data(airquality)

# Melt
melt_data <- melt(airquality,
                  id.vars=c("Month","Day"))

print(head(melt_data))

# Monthly averages
avg_data <- dcast(melt_data,
                  Month ~ variable,
                  mean,
                  na.rm=TRUE)

print(avg_data)