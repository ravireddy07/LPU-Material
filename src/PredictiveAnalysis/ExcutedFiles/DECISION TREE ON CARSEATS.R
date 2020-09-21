library(ISLR)
library(tree)
attach (Carseats)

set.seed(108)
head (Carseats)
summary(Carseats)
class(Carseats)
str(Carseats)
is.na(Carseats)
range(Sales)


SALESHIGHORLOW <- ifelse(Sales>=8,"YES","NO")
Carseats=Carseats[,-1]
Carseats=data.frame(Carseats,SALESHIGHORLOW)
Carseats


ind=sample(2,nrow(Carseats),replace=T,prob=c(0.8,0.2))
Carseats_train = Carseats[ind==1,]
Carseats_test = Carseats[ind==2,]

dim(Carseats_train)
dim(Carseats_test)
Carseats_decision_tree_model<- tree(SALESHIGHORLOW~., data = Carseats_train)

plot(Carseats_decision_tree_model)
text(Carseats_decision_tree_model,pretty=0)

Carseats_predict= predict(Carseats_decision_tree_model,Carseats_test,type="class")
(Carseats_predict_table=table(Carseats_test$SALESHIGHORLOW,Carseats_predict))
(Carseats_performance= sum(diag(Carseats_predict_table)/sum(Carseats_predict_table))*100)


set.seed(3)
cvtree= cv.tree(Carseats_decision_tree_model, FUN=prune.misclass)
names(cvtree)
plot(cvtree$size,cvtree$dev, type="b")

Carseats_pruned_model=prune.misclass(Carseats_decision_tree_model,best=9)
(Carseats_pruned_model_predict=predict(Carseats_pruned_model,Carseats_test,type="class"))
(1-mean(Carseats_pruned_model_predict!=Carseats_test$SALESHIGHORLOW))*100

