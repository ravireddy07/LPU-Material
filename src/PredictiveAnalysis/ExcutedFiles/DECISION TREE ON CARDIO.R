library(party)


Cardio= read.csv(file.choose(),sep=",",header=T)


head(Cardio)

summary(Cardio)
class(Cardio)
str(Cardio)
is.na(Cardio)
str(Cardio)

Cardio$NSPF=factor(Cardio$NSP,level=c(1,2,3),labels=c("NORMAL","HAVE CHANCE","HAVE PROBLEM"))

set.seed(1234)
ind=sample(2,nrow(Cardio),replace=T, prob=c(0.8,0.2))
Cardio_train=Cardio[ind==1,]
Cardio_test=Cardio[ind==2,]
tree=ctree(NSPF~LB+AC+FM,data = Cardio_train)
plot(tree)
tree=ctree(NSPF~LB+AC+FM,data = Cardio_train, controls=ctree_control(mincriterion = 0.99,minsplit=500))

Cardio_predict=predict(tree,Cardio_test)
(Cardio_predict_table=table(Cardio_predict,Cardio_test$NSPF))
(Cardio_performance=sum(diag(Cardio_predict_table)/sum(Cardio_predict_table))*100)
