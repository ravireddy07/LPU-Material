# CREATING LIST AND ASSIGNING VALUES TO LIST#

L1= list("a" = 2.5, "b" = TRUE, "c" =df1,"d"=Vector1)
L1
Vector1=c(10,29,30)
L2=list(Vector1,df1,L1)
L2

# NAMED LISTS

L3=list(V=Vector1,Df=df1,L=L1)
names(L3)=c('Vector','DATA_FRAME','LIST')
L3

# COMBINING LISTS#

L4=list(AGE=c(10,20,30),Weight=c(40,70,82))
L5=list(NAME=c('Raman','Chaman','Daman'),AGE=c(10,20,30))
L6=list(L4,L5)

# ACCESSING VALUES FROM LIST#
L1
L1$c
L1[]
L1[1]
L1[[1]]
L1[3]
L1[[3]]
L1[[3]][,1]
L1[[3]][1,1]

# CALCULATION USING LISTS
L4+10
L5=L4[['Weight']]+10
L6=L4[[1]]+10


# CHANGING VALUES IN LIST#

L1[1]=5.2
L1[]

L1[3]='aman'
L1[[4]][1]='RAM'

# ADDING VALUES IN LIST#
St=c(20,30)
L1[[4]]=St


# DROPPING VALUES IN LIST#
L1['b']=NULL
L1[[3]][2]=40
rm(L1)
L1
