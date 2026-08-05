library(reshape2)

data(ChickWeight)

head(ChickWeight)


sorted <- ChickWeight[order(-ChickWeight$weight),]

head(sorted)


melt_data <- melt(ChickWeight,
                  id.vars=c("Chick","Diet"))

head(melt_data)


diet_avg <- dcast(melt_data,
                  Diet~variable,
                  mean)

print(diet_avg)