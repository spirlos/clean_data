# Getting and cleaning data - project description
## Context
This file is part of the project for Coursera Course "Getting and Cleaning Data" 
## Purpose
The purpose of this project is to demonstrate the  ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 

# The original data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. This kind of data coming from wearable computing is used by companies like Fitbit, Nike, and Jawbone Up racing to develop the most advanced algorithms to attract new users. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project are in the following zip file :
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
When unzipped they are included in the working directory, in the folder "UCI HAR Dataset". 
The details of the files included in the zipped file are available in the CodeBook, based on the file features.txt which has been made usin. This folder comprises two more folders named "train" and "test" where the data to be used for the analysis are incuded. These folders include also a folder called "Inertial Signals" which is not included in the dataset.

## Processing
I created the script "run_analysis.R" which does the following:
1. It merges the training and the test sets to create one data set.
=> The files used are txt files in the unzipped directories "train" and "test" with names starting with "subject_" with subject IDs, "X_" with measurments and "y_" with labels. They are read seperately and then bound together for "test" and "train" and finally bound together to form "alldata".

2. It extracts only the columns that include the measurements on the mean and standard deviation for each measurement, together with the key columns presenting the subject ID and the Activity.
=> The columns extracted are those having the terms mean() or std() in the name of the variable. The "fixed" parameter is used to exclude cases like meanFreq(). 

3. Uses descriptive activity names to name the activities in the data set.
=> For this purpose the file activity_labels.txt is used.

4. Appropriately labels the data set with descriptive variable names.
=> The replacement uses the structure of the variable names. It has been developed and tested using the features.txt file. 

5. From the data set in step 4, it creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Files submitted
The following files have been included in this repo: 
1) the script "run_analysis.R" 
2) a code book "CodeBook.wd" that describes the variables, the data, and 
3) the tidy data set "tidy.csv" produced by the script as indicated below, 
4) the present "README.wd" file

#Packages required
The only extra package that is used is data.table. This is attached by the first command. If it is not installed then it shoudl be installed. 

##Note 1
At the end of the processing a message is printed iformign the user
##Note 2
At the end the global environment is cleaned.  

