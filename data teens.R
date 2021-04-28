head(Teens,3)
dim(Teens)
str(Teens)
summary(Teens$age)
Teens = na.omit(Teens)
dim(Teens)
interests <- Teens[5:40]
interests_z <- as.data.frame(lapply(interests, scale))
Teen_clusters <- kmeans(interests_z, 5)
Teen_clusters$size
Teen_clusters$centers
par(mfrow=c(2,2))
pie(colSums(interests[Teen_clusters$cluster==1,]),cex=0.5)

pie(colSums(interests[Teen_clusters$cluster==2,]),cex=0.5)

pie(colSums(interests[Teen_clusters$cluster==3,]),cex=0.5)

pie(colSums(interests[Teen_clusters$cluster==4,]),cex=0.5)