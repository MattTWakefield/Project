
#Packages required for analysis.
require(data.table)
require(dplyr)
require(reshape2)

#Download data and and unzip.
if (!file.exists("XYZDatazip.zip")){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL,"XYZDatazip.zip")
  unzip("XYZDatazip.zip")
} 

#Reads in necessary files from exracted files into data tables
ActivityLabels<-fread("./UCI HAR Dataset/activity_labels.txt")
Features<-fread("./UCI HAR Dataset/features.txt")
SubjectTrain<-fread("./UCI HAR Dataset/train/subject_train.txt")
XTrain<-fread("./UCI HAR Dataset/train/X_train.txt")
YTrain<-fread("./UCI HAR Dataset/train/y_train.txt")
SubjectTest<-fread("./UCI HAR Dataset/test/subject_test.txt")
XTest<-fread("./UCI HAR Dataset/test/X_test.txt")
YTest<-fread("./UCI HAR Dataset/test/y_test.txt")

#Filters the features that contain "mean" or "std" for standard deviation.
FilteredFeatures<-Features[grep(".*mean.*|.*std.*", V2)]

#Creates a vector that contains the location of each column
FilteredFeaturesIndex<-FilteredFeatures[[1]]

#Creates a vector that contains the name of each column.
FilteredFeaturesNames<-FilteredFeatures[[2]]
FilteredFeaturesNames<-gsub("\\(|\\)","",FilteredFeaturesNames)

#Filters out only neccessary columns from train and test datasets
XTrainFiltered<-XTrain[,FilteredFeaturesIndex, with=FALSE]
XTestFiltered<-XTest[,FilteredFeaturesIndex, with=FALSE]

#Adds names to columns of the two data sets. 
names(XTrainFiltered)<-FilteredFeaturesNames
names(XTestFiltered)<-FilteredFeaturesNames

#Combines the associates subjects and activities.
TestData<-cbind(SubjectTest, YTest,XTestFiltered)
TrainData<-cbind(SubjectTrain,YTrain,XTrainFiltered)

#Combines test and train datasets. 
Combined<-rbind(TestData,TrainData)

#adds appropriate column names for subject and activity.
names(Combined)[1:2]<-c("Subject","Activity")

#Joines in descriptive activity names and replaces the column. 
Combined<-left_join(Combined, ActivityLabels, by = c("Activity"="V1"))
Combined$'Activity'<- Combined$V2
Combined$V2<-NULL

#Creates a long form of Combined so that data can be aggregated/pivoted.
MeltCombined<-melt(Combined,id.vars = c(1,2),measure.vars=c(3:81))
CastCombined<-dcast(MeltCombined,Activity + Subject ~ variable, mean)

#Write out need files.
fwrite(Combined,"TidyCombined.csv")
fwrite(CastCombined,"TidyAggregated.csv")
