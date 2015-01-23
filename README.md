# Getting_Data_PeerAssessment1

## Introduction
This is the first peer assessment project for the Getting and Cleaning Data course on Coursera (Section: getdata-010).

The assignment deals with data collected from the UCI Machine Learning Repository (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) users are encouraged to visit the repository link for more information on how individual variables were measured.

## The Raw Data
In total, 561 features were measured as listed in the 'features.txt' file within the archive. 30 subjects were selected to carry out activities of daily living and, of those 30, 70% made up the "test" data set while 30% made up the "training" data set.

## About the analysis
The project specifies that only the data from the feature list that provide the mean and standard deviation of the measurement be included in the cleaned data. Test and Training subjects are to be included in one dataset. Finally, overall readability of the raw data should be improved (that is, by improving readability of feature variable names).

A summarized version was also requested, that takes the mean of each feature of interest and reports for each activity and for each subject.

In general, this analysis will perform the following actions:
1. Download and unzip the raw data from the repository
2. Merge both training and test data into one file, with feature labels
3. Select only features that describe mean/standard deviation of a variable
4. Improve readability of column headers
5. Export two files:
      * cleanData.txt: the complete, clean data set with individual values for the variable means and standard deviations
      * tidySummary.txt: the summarized data where means are taken of each variable per activity, per subject
