
# create dataset, set header = false since data has no header or name row

movies <- read.table("movielens.txt", header = FALSE, sep ="|", quote = "\"")

str(movies)

# add in column names 

colnames(movies) <- c("ID", "Title", "ReleaseDate", "VideoReleaseDate", "IMDB", "Unknown", "Action", "Adventure", "Animation", "Childrens", "Comedy", "Crime", "Documentary", "Drama", "Fantasy", "FilmNoir", "Horror", "Musical", "Mystery", "Romance", "SciFi", "Thriller", "War", "Western")

str(movies)

movies$ID <- NULL
movies$ReleaseDate <- NULL
movies$VideoReleaseDate <- NULL
movies$IMDB <- NULL
movies = unique(movies)

str(movies)

distances <- dist(movies[2:20], method="euclidean")
clusterMovies <- hclust(distances, method="ward")

plot(clusterMovies)

clusterGroups <- cutree(clusterMovies, k)

tapply(movies$Action, clusterGroups, mean)

tapply(movies$Romance, clusterGroups, mean)

subset(movies, Title ="Men in Black" (1997))

clusterGroups[257]

cluster2 <- subset(movies, clusterGroups == 2)

cluster2$Title[1:10]


