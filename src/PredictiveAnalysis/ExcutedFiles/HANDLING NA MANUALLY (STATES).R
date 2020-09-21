library(dplyr)
States=read.csv(file.choose(),sep=',',header=T) # Importing NA file

View(States)                               # Viewing Full Dataset
str(States)                                # Viewing Data Structure
summary (States)                           # Getting Brief Summary of Dataset
is.na(States)                              # Checking Data Have NA or not
View(States[!complete.cases(States),])     # Viewing only NA Data from Dataset

States$Official.Languages=as.character(States$Official.Languages) # Changing Datatype
#States= States[,-1]                        # Removing i..States Column as States column already exists
#States <- States %>%                       # Making State Column as First Column 
#select(States, everything())

colnames(States)[9]="SEXRATIO"        #Changed Ninth Column name as POPULATIONKM2
colnames(States)[7]="LITERACYRATE"
colnames(States)[11]="TREECOVER"
# ......................................REMOVING NAs......................................
S1=States       #Saving Data in other Variable to apply OMIT
View(S1[!complete.cases(S1),])         # Viewing only NA Data from Dataset
nrow(S1)                               # Total Rows in Dataset
nrow(S1[!complete.cases(S1),])         # Counting NA rows
S1=na.omit(S1)  # All NA rows will be omitted from dataset
nrow(S1)                               # Total Rows in Dataset will be now less 
nrow(S1[!complete.cases(S1),])         # 0 NA rows
View(S1)

#.......................................IMPUTING NAs......................................
# Imputing NAs with mean can be done manually, semi-maually and automatically
# Imputing NAs manually
S2=States                              # Saving Data in other Variable to impute NAs Manually
str(S2)
View(S2[!complete.cases(S2),])     # Check the STATE NAME AND COLUMNS with NA values
S2[which(S2$State=='Goa'),"TREECOVER"]=mean(S2$TREECOVER,na.rm=T)
S2[which(S2$State=='Rajasthan'),"SEXRATIO"]=mean(S2$SEXRATIO,na.rm=T)
S2[which(S2$State=='Tripura'),"LITERACYRATE"]=mean(S2$LITERACYRATE,na.rm=T)
S2[which(S2$State=='Madhya Pradesh'),"TREECOVER"]=mean(S2$TREECOVER,na.rm=T)
View(S2[!complete.cases(S2),])         # Check the NAs left 
View(S2[complete.cases(S2),])          # Viewing Imputed Data
View(S2[])                             # Viewing Dataset
nrow(S2)                               # Total Rows in Dataset will be now equal to full dataset 
nrow(S2[!complete.cases(S2),])         # 0 NA rows
View(S2)


#.......................................IMPUTING NAs......................................
# Imputing NAs with mean can be done manually, semi-maually and automatically
# Imputing NAs Semi-manually


S3=States                              # Saving Data in other Variable to impute NAs Manually
View(S3[!complete.cases(S3),])         # Check the STATE NAME AND COLUMNS with NA values
names(which(sapply(S3, anyNA)))        # Finding COLUMN NAME having NA values
S3$LITERACYRATE[is.na(S3$LITERACYRATE)]=mean(S3$LITERACYRATE[!is.na(S3$LITERACYRATE)])
S3$SEXRATIO[is.na(S3$SEXRATIO)]=mean(S3$SEXRATIO[!is.na(S3$SEXRATIO)])
S3$TREECOVER[is.na(S3$TREECOVER)]=mean(S3$TREECOVER[!is.na(S3$TREECOVER)])
View(S3[!complete.cases(S3),])         # Check the NAs left 
View(S3[complete.cases(S3),])          # Viewing Imputed Data
View(S3[])                             # Viewing Dataset
nrow(S3)                               # Total Rows in Dataset will be now equal to full dataset 
nrow(S3[!complete.cases(S3),])         # 0 NA rows
View(S3)

#.......................................IMPUTING NAs......................................
# Imputing NAs with mean can be done manually, semi-maually and automatically
# Imputing NAs Automatically

S4=States                              # Saving Data in other Variable to impute NAs Manually
View(S4[!complete.cases(S4),])         # Check the STATE NAME AND COLUMNS with NA values
for(i in 1:ncol(S4))
{
S4[is.na(S4[,i]),i]=round(mean(S4[,i], na.rm = TRUE))
} 
View(S4[!complete.cases(S4),])         # Check the NAs left 
View(S4[complete.cases(S4),])          # Viewing Imputed Data
View(S4[])                             # Viewing Dataset

