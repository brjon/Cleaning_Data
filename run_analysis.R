### This script processes data collected from the accelerometers from the Samsung Galaxy S smartphone
### making the data "tidy" for further analysis. To do this, the script :
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


#read in the variables data from test and training files
testData<-read.table("./UCI HAR Dataset/test/X_test.txt",sep="")
trainData<-read.table("./UCI HAR Dataset/train/X_train.txt",sep="")

#read in the activities identifier from the relevant test and training files
testActivities<-read.table("./UCI HAR Dataset/test/Y_test.txt",sep="")
trainActivities<-read.table("./UCI HAR Dataset/train/Y_train.txt",sep="")

#read in the subject identifier from the relevant test and training files
testSubjects<-read.table("./UCI HAR Dataset/test/subject_test.txt",sep="")
trainSubjects<-read.table("./UCI HAR Dataset/train/subject_train.txt",sep="")

#read in the the descriptive name for each activity identity number (1-6)
activityLabels<-read.table("./UCI HAR Dataset/activity_labels.txt",sep="")

#read in the column names for the variables (same names for test and training)
colNamesRaw<-read.table("./UCI HAR Dataset/features.txt",sep="")

##combine train and test data one, below the other using rbind to preserve order
allData<-rbind(trainData,testData)

## attach variable names to allData
colnames(allData)<-colNamesRaw[,2]

## get all columns with mean or std in the name
colsFilter<-grep("mean|std",colNamesRaw[,2])

##extract only columns with mean,std in name
allData<-allData[,colsFilter]

##cleanup column names
varNames<-colnames(allData)
varNames<-gsub("-","_",varNames) #invalid for character
varNames<-gsub("\\(","",varNames) #invalid for character
varNames<-gsub("\\)","",varNames) #invalid for character
varNames<-gsub("BodyBody","Body",varNames) #string in name seems to have been repeated in error
varNames<-gsub("tBody","timeBody",varNames) #make t and f more descriptive
varNames<-gsub("fBody","freqBody",varNames) #make t and f more descriptive

##combine train and test subject lists
allSubjects<-rbind(trainSubjects,testSubjects)

##combine train and test activity lists
allActivities<-rbind(trainActivities,testActivities)

##add activities and subjects to data and give them column names
allData<-cbind(allSubjects,allActivities,allData)
colnames(allData)<-c("subject","activities",varNames)

## label the activities with descriptive labels
allData[,2]<-factor(allData[,2],labels=activityLabels[,2])

## summarise data by subject and activity, write to text file

summData<-aggregate(as.matrix(allData[,-c(1:2)]), as.list(allData[,2:1]), FUN = mean)

##write result out to output text file
write.table(summData,"./UCI HAR Dataset/summData.txt",row.names=F)
