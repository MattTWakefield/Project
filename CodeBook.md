
Code Book Coursera Week 4 Project
======

## Summary of Transformations:

1. Load required packages for analysis.  
2. Downloaded zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzipped. 
3. Read files into R variables.
4. Filtered features to standard deviation and variables. 
5. Created and applied descriptive data variable names.
6. Combined data into tidy data table.
7. Calculated mean for each data variable for each subject and activity combination.


## Variables:

* ActivityLabels - List of unique activities and associated codes.
* CastCombined - Averages of each data variable for each subject and activity. 
* Combined - Combined training and test data.
* Features - Full list of features derived from accelerometer and gyroscope. 
* FilteredFeatures - Features filtered down to include mean and standard deviation. 
* MeltCombined - Longated data table of the Combined data table that reduces set to only four variables, will be used to create CastCombined described above. 
* SubjectTest - Subjects related to the test data.
* SubjectTrain - Subjects related to the training data.
* TestData - Filtered test data combined with non-descriptive subject and activity data. 
* TrainData - Filtered train data combined with non-descriptive subject and activity data. 
* XTest - Unlabled data related to x test.
* XTestFiltered - labled and filterd test data.
* XTrain - Unlabled data related to x train.
* XTrainFiltered - labled and filtered train data.
* YTest - Non-descriptive activity data for test.
* YTrain - Non-descriptive activity data for train.

## List of Data Variables:

* tBodyAcc-mean-X
* tBodyAcc-mean-Y
* tBodyAcc-mean-Z
* tBodyAcc-std-X
* tBodyAcc-std-Y
* tBodyAcc-std-Z
* tGravityAcc-mean-X
* tGravityAcc-mean-Y
* tGravityAcc-mean-Z
* tGravityAcc-std-X
* tGravityAcc-std-Y
* tGravityAcc-std-Z
* tBodyAccJerk-mean-X
* tBodyAccJerk-mean-Y
* tBodyAccJerk-mean-Z
* tBodyAccJerk-std-X
* tBodyAccJerk-std-Y
* tBodyAccJerk-std-Z
* tBodyGyro-mean-X
* tBodyGyro-mean-Y
* tBodyGyro-mean-Z
* tBodyGyro-std-X
* tBodyGyro-std-Y
* tBodyGyro-std-Z
* tBodyGyroJerk-mean-X
* tBodyGyroJerk-mean-Y
* tBodyGyroJerk-mean-Z
* tBodyGyroJerk-std-X
* tBodyGyroJerk-std-Y
* tBodyGyroJerk-std-Z
* tBodyAccMag-mean
* tBodyAccMag-std
* tGravityAccMag-mean
* tGravityAccMag-std
* tBodyAccJerkMag-mean
* tBodyAccJerkMag-std
* tBodyGyroMag-mean
* tBodyGyroMag-std
* tBodyGyroJerkMag-mean
* tBodyGyroJerkMag-std
* fBodyAcc-mean-X
* fBodyAcc-mean-Y
* fBodyAcc-mean-Z
* fBodyAcc-std-X
* fBodyAcc-std-Y
* fBodyAcc-std-Z
* fBodyAcc-meanFreq-X
* fBodyAcc-meanFreq-Y
* fBodyAcc-meanFreq-Z
* fBodyAccJerk-mean-X
* fBodyAccJerk-mean-Y
* fBodyAccJerk-mean-Z
* fBodyAccJerk-std-X
* fBodyAccJerk-std-Y
* fBodyAccJerk-std-Z
* fBodyAccJerk-meanFreq-X
* fBodyAccJerk-meanFreq-Y
* fBodyAccJerk-meanFreq-Z
* fBodyGyro-mean-X
* fBodyGyro-mean-Y
* fBodyGyro-mean-Z
* fBodyGyro-std-X
* fBodyGyro-std-Y
* fBodyGyro-std-Z
* fBodyGyro-meanFreq-X
* fBodyGyro-meanFreq-Y
* fBodyGyro-meanFreq-Z
* fBodyAccMag-mean
* fBodyAccMag-std
* fBodyAccMag-meanFreq
* fBodyBodyAccJerkMag-mean
* fBodyBodyAccJerkMag-std
* fBodyBodyAccJerkMag-meanFreq
* fBodyBodyGyroMag-mean
* fBodyBodyGyroMag-std
* fBodyBodyGyroMag-meanFreq
* fBodyBodyGyroJerkMag-mean
* fBodyBodyGyroJerkMag-std
* fBodyBodyGyroJerkMag-meanFreq