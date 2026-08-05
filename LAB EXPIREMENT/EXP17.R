
data(Titanic)

titanic_df <- as.data.frame(Titanic)

barplot(
  xtabs(Freq ~ Class + Survived,
        data=titanic_df),
  beside=TRUE,
  col=c("red","green"),
  legend=TRUE,
  main="Survival vs Class"
)


barplot(
  xtabs(Freq ~ Sex + Survived,
        data=titanic_df),
  beside=TRUE,
  col=c("orange","blue"),
  legend=TRUE,
  main="Survival by Gender"
)

barplot(
  xtabs(Freq~Age,
        data=titanic_df),
  main="Age Distribution"
)