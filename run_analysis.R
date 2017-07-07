require(data.table)
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL,"XYZDatazip.zip")
unzip("XYZDatazip.zip")
ActivityLabels<-fread("./UCI HAR Dataset/activity_labels.txt")
Features<-fread("./UCI HAR Dataset/features.txt")
SubjectTrain<-fread("./UCI HAR Dataset/train/subject_train.txt")
XTrain<-fread("./UCI HAR Dataset/train/X_train.txt")
YTrain<-fread("./UCI HAR Dataset/train/y_train.txt")
SubjectTest<-fread("./UCI HAR Dataset/test/subject_test.txt")
XTest<-fread("./UCI HAR Dataset/test/X_test.txt")
YTest<-fread("./UCI HAR Dataset/test/y_test.txt")
FilteredFeatures<-Features[grep(".*mean.*|.*std.*", V2)]
FilteredFeaturesIndex<-FilteredFeatures[[1]]
FiView(FilteredFeaturesIndex)
FilteredFeaturesNames<-FilteredFeatures[[2]]
XTrainFiltered<-XTrain[,FilteredFeaturesIndex, with=FALSE]
XTestFiltered<-XTest[,FilteredFeaturesIndex, with=FALSE]
names(XTrainFiltered)<-FilteredFeaturesNames
names(XTestFiltered)<-FilteredFeaturesNames
TestData<-cbind(SubjectTest, YTest,XTestFiltered)
TrainData<-cbind(SubjectTrain,YTrain,XTrainFiltered)
names(Combined)[1:2]<-c("Subject#","Activity#")
