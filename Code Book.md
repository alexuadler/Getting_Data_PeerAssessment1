# Code Book for Getting & Cleaning Data, Project 1

The raw data were obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The readme file contained in the original repository provides further information about the data acquisition and the methods employed during the study. The UCI HAR Dataset/features_info.txt file provides more detail on the individual variables measured.

## Subject Variables
There were 30 subjects selected for the study. They fell into one of two groups, the training group (70%) or the test group (30%). Within the "UCI HAR Dataset" directory, there is a folder for 'test' subjects and for 'train' subjects and the values for the features measured for each activity, for each subject.

## Activity Variables
Activities of daily life were classified into one of 6 descriptions (in UCI HAR Dataset/activity_labels.txt):

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

## Feature Variables
The following features denote the direction of the movement in the XYZ directions (in each of the X, Y, and Z directions, in the dataset). Time and Frequency are denoted by the prefixes "t" and "f," respectively. All features are normalized between -1 and -1.
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ

The following features denote magnitudes of the movement measured (in the direction of the vector measured above). Again, time and Frequency are denoted by the prefixes "t" and "f," respectively. All features are normalized between -1 and -1.

* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The original repository reports the full list of variables measured for each of the above features, however, for the purposes of this project, we are only concerned with the mean, mean() and the standard deviation, std().
