# TASK 0: Get data and set my working environment 
# The fast data.table package shoudld be installed.
# Warnings are switched off only for attching the package.
options(warn=-1)  
library(data.table)
options(warn=0)

## get the data into my work directory
fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, destfile = "mydata.zip", method = "curl")
unzip("mydata.zip")

## set as work directory the folder of the dataset created when the data file was unzipped. 
setwd("./UCI HAR Dataset")


# TASK 1: Merge the training and the test sets to create one data set.
## read and label volunteers/subjects 
  ## --> for training 
subject_train <- read.table("./train/subject_train.txt", header = FALSE)
names(subject_train)<-"subjectID"
  ## --> for test 
subject_test <- read.table("./test/subject_test.txt", header = FALSE)
names(subject_test)<-"subjectID"

## read and label activities 
  ## --> for training 
  y_train <- read.table("./train/y_train.txt", header = FALSE)
  names(y_train) <- "activity"
  ## --> for test 
  y_test <- read.table("./test/y_test.txt", header = FALSE)
  names(y_test) <- "activity"

## read function names
FeatureNames<-read.table("features.txt")

## Read and label features data 
  ## --> for training 
  X_train <- read.table("./train/X_train.txt", header = FALSE)
  names(X_train) <- FeatureNames$V2
  ## --> for test 
  X_test <- read.table("./test/X_test.txt", header = FALSE)
  names(X_test) <- FeatureNames$V2

## combine all training data columns in one dataset
train <- cbind(subject_train, y_train, X_train)
## combine all test data columns in one dataset
test <- cbind(subject_test, y_test, X_test)

## Append the test dataset to the training dataset
alldata <- rbind(train, test)

# TASK 2: Extract only the measurements on the mean and standard deviation 
# for each measurement.

## Extract the columns which have "mean" and then "std" in the variable name
## (using fixed=TRUE to exclude the variables with "meanFreq()" in their name)
meancol<-alldata[,grep('mean()', names(alldata), fixed=TRUE)]
stdcol<-alldata[,grep('std()', names(alldata), fixed=TRUE)]
## Keep the key columns "subjectID" and "activities"
keycol<-alldata[,(1:2)]
## Bind all columns together
meanstd_data<-cbind(keycol,meancol,stdcol)

# TASK 3: Use descriptive activity names to name the activities in the data set

## read the vector with the activity labels
actlbl<-read.table("activity_labels.txt")
## encode activities as a factor and then add the labels
alldata$activity <- factor(alldata$activity, labels=actlbl$V2)

# TASK 4: Appropriately labels the data set with descriptive variable names. 
## Replace the short names of the variables with long ones, built using the short ones.
names(alldata)<-gsub("tBody","TimeDomainBody",names(alldata), fixed=TRUE)
names(alldata)<-gsub("tGravity","TimeDomainGravity",names(alldata), fixed=TRUE)
names(alldata)<-gsub("fBody","FrequencyDomainBody",names(alldata), fixed=TRUE)
names(alldata)<-gsub("Acc","Acceleration",names(alldata), fixed=TRUE)
names(alldata)<-gsub("Gyro", "AngularVelocity",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-XYZ","3-axialSignals",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-X","Xaxis",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-Y","Yaxis",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-Z","Zaxis",names(alldata), fixed=TRUE)
names(alldata)<-gsub("Mag","MagnitudeSignals",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-mean()","MeanValue",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-std()","StandardDeviation",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-mad()","MedianAbsoluteDeviation ",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-max()","LargestValueInArray",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-min()","SmallestValueInArray",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-sma()","SignalMagnitudeArea",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-energy()","EnergyMeasure",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-iqr()","InterquartileRange ",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-entropy()","SignalEntropy",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-arCoeff()","AutoRegresionCoefficientsWithBurgOrderEqualTo4",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-correlation()","CorrelationCoefficient",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-maxInds()", "IndexOfFrequencyComponentWithLargestMagnitude",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-meanFreq()","WeightedAverageOfFequencyComponentsForMeanFrequency",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-skewness()","Skewness",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-kurtosis()","Kurtosis",names(alldata), fixed=TRUE)
names(alldata)<-gsub("-bandsEnergy()","EnergyOfFrequencyInterval.",names(alldata), fixed=TRUE)

# TASK 5: From the data set in step 4, creates a second, 
# independent tidy data set with the average of each variable 
# for each activity and each subject.
DT<-data.table(alldata)
tidy<-DT[,lapply(.SD,mean),by="activity,subjectID"]
write.csv(tidy,"tidy.csv")
print ("Processing completed. The file tidy.csv is on in your working directory, in folder /UCI HAR Dataset.")
rm(list=ls())