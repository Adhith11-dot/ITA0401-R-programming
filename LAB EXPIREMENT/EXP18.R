x <- c(10,20,30,40,50)
y <- c(15,18,35,38,45)

boxplot(x,
        main="Box Plot")

hist(x,
     main="Histogram",
     col="yellow")


barplot(x,
        names.arg=1:5,
        col="green")

plot(x,
     type="l",
     col="blue",
     lwd=2)


plot(x,y,
     pch=19,
     col="red")