library(reshape2)

movies <- data.frame(
  MovieName=c("MovieA","MovieB","MovieC"),
  Genre=c("Action","Drama","Action"),
  ViewerRating=c(4.5,3.8,4.2),
  Platform=c("Netflix","Prime","Hotstar")
)

genre_avg <- aggregate(ViewerRating ~ Genre, movies, mean)
movies_long <- melt(movies, id.vars=c("MovieName","Genre"), variable.name="Attribute")
movies_wide <- dcast(movies_long, MovieName + Genre ~ Attribute)
write.csv(movies_wide, "MoviesTransformed.csv", row.names = FALSE)

print(genre_avg)
print(movies_wide)
