setwd("~/RStudio/getting_data/Wk3/Project")

# Get the data set and unzip it
fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
localFile<-"activity.zip"
download.file(fileURL,localFile,method="curl")
unzip(localFile)

# Load Training dataframe
xTrain<-NULL
if(is.null(xTrain)){
  xTrain<-read.table("./UCI Har Dataset/train/X_train.txt")
}

# Load Test dataframe
xTest<-NULL
if(is.null(xTest)){
  xTest<-read.table("./UCI Har Dataset/test/X_test.txt")
}

# Merge and assign feature names automatically (to be translated into nicer names later)
combined<-rbind(xTrain,xTest)
features<-read.table("./UCI Har Dataset/features.txt")
names(combined)<-features[,2]

# Use grep to select only columns with mean or std
meanstdIndex<-grep("(mean|std)\\(\\)",names(combined))
meanstdData<-combined[,meanstdIndex]

# Load Training Labels
yTrain<-NULL
if(is.null(yTrain)){
  yTrain<-read.table("./UCI Har Dataset/train/y_train.txt")
}

# Load Test Labels
yTest<-NULL
if(is.null(yTest)){
  yTest<-read.table("./UCI Har Dataset/test/y_test.txt")
}

# merge the labels to each other
labels.merged<-rbind(yTrain,yTest)
activityNames<-read.table("./UCI Har Dataset/activity_labels.txt")[2][,1]

activityLabels<-activityNames[labels.merged[,1]]
names(activityLabels)<-"Activity"

# Load Training Labels
subjectTrain<-NULL
if(is.null(subjectTrain)){
  subjectTrain<-read.table("./UCI Har Dataset/train/subject_train.txt")
}

# Load Test Labels
subjectTest<-NULL
if(is.null(subjectTest)){
  subjectTest<-read.table("./UCI Har Dataset/test/subject_test.txt")
}

# merge the labels to each other
subject.merged<-rbind(subjectTrain,subjectTest)
names(subject.merged)<-"Subject"

cbind(subject.merged,activityLabels,meanstdData)

# remvoe variable names to be replaced by words (i.e. "tBodyAccMag-mean()" becomes "TimeBodyAccMag-mean")
names(meanstdData)<-gsub("^t","Time",names(meanstdData))
names(meanstdData)<-gsub("^f","Frequency",names(meanstdData))
names(meanstdData)<-gsub("\\(\\)","",names(meanstdData))


