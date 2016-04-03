# Analysis done for getting and cleaning data 
This file is part of the project for Coursera Course "Getting and Cleaning Data" 

# Purpose
The purpose of this project is to demonstrate the  ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 

# Data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
This kind of data coming form wearable computing is used by companies like Fitbit, Nike, and Jawbone Up which are racing to develop the most advanced algorithms to attract new users. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project are in the following zip file :
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The details of the files included in the are available in the CodeBook.
Measurements are taken for 30 volunteers and for 6 activities.
It is worth noting that not all files included in the zip are used. 

# Tasks
I created the script "run_analysis.R" that does the following.
1. Merges the training and the test sets to create one data set.
The files used txt files are 
2. Extracts only the columns that include the measurements on the mean and standard deviation for each measurement, togetrher iwhthe key columsn presenting the subject ID and the Activity.
3. Uses descriptive activity names to name the activities in the data set.
For this purpose the file 
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Files submitted
The following files have been included in this repo: 
1) the script "run_analysis.R" 
2) a code book that describes the variables, the data, and 
3) the tidy data set "tidy.csv" produced by the script as indicated below, 
4) the foillowing files use for transforming the data  
any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

 The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
