# Cluster Analysis

mydata <- read.csv(file.choose(),sep=',')
str(mydata)
head(mydata)
pairs(mydata)

# Scatter plot 
plot(mydata$Fuel_Cost~ mydata$Sales, data = mydata)
with(mydata,text(mydata$Fuel_Cost ~ mydata$Sales, labels=mydata$Company,pos=4))

# Normalize 
z = mydata[,-c(1,1)]
means = apply(z,2,mean)
sds = apply(z,2,sd)
nor = scale(z,center=means,scale=sds)
nor
##calculate distance matrix (default is Euclidean distance)
distance = dist(nor)
print(distance,digits=3)

#DENDOGRAM WITH COMPLETE LINKAGE
# Hierarchical agglomerative clustering using default complete linkage 
mydata.hclust = hclust(distance)
plot(mydata.hclust)
plot(mydata.hclust,labels=mydata$Company,main='Default from hclust')
plot(mydata.hclust,hang=-1)

# Hierarchical agglomerative clustering using "average" linkage 
mydata.avg<-hclust(distance,method="average")
plot(mydata.avg,labels=mydata$Company,main='Default from hclust')
plot(mydata.avg,hang=-1)

# Cluster membership
member.c = cutree(mydata.hclust,3)
member.a = cutree(mydata.avg,3)

table(member.c,member.a)

#Characterizing clusters 
aggregate(nor,list(member),mean)
aggregate(mydata[,-c(1,1)],list(member),mean)

#Silhouette Plot
library(cluster)
plot(silhouette(cutree(mydata.hclust,3),distance))

#`` Scree Plot
wss <- (nrow(nor)-1)*sum(apply(nor,2,var))
for (i in 2:20) wss[i] <- sum(kmeans(nor, centers=i)$withinss)
plot(1:20, wss, type="b", xlab="Number of Clusters", ylab="Within groups sum of squares") 

# K-means clustering
kc<-kmeans(nor,3)
kc
kc$cluster
kc$centers
plot(Sales~Demand_growth,mydata,col=kc$cluster)
mydata
