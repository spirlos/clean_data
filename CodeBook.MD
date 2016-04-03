#Codebook
##Origin of dataset
==================================================================
Human Activity Recognition Using Smartphones Dataset - Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
##Context and generation of the dataset
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
For more information about this dataset contact: activityrecognition@smartlab.ws

## License
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

##Organisation of dataset
###Information per record
For each record the following data were provided:
(1) Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
(2) Triaxial Angular velocity from the gyroscope. 
(3) A 561-feature vector with time and frequency domain variables. Note that features are normalized and bounded within [-1,1] and each feature vector is a row on the text file.
(4) Its activity label. 
(5) An identifier of the subject who carried out the experiment.

###Files included in initial dataset (zipped).
The dataset includes the following files:
- A file describing the data set: 'README.txt'
- Two files listing and describing the 561 features - see (1): 'features.txt' and 'features_info.txt' respecively
- A file that links the activity numbers to their labels: 'activity_labels.txt'
- The training set, training labels and ID of the subjects selected for generating the training data found in the "./train" folder: 'X_train.txt', 'y_train.txt', 'subject_train.txt' 
- The test set, test labels and ID of the subjects selected for generating the test data found in the "./test" folder: 'X_test.txt', 'y_test.txt', 'subject_test.txt'

The files included under in folders './train/Inertial Signals/' and './test/Inertial Signals/' are not included in the analysis. These are described here (oniy for training, as it is the same for test data) for reasons of completeness :   
- 'total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. (same description for 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

# Codes in the resulting dataset tidy.csv
There are 6 activities in element "actvity" with the following values:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

The range of values in the element "subjectID" is 1 to 30.

The 561 features measured have been renamed to bear the following self explanatory names (correspondance to initial name included):

1 tBodyAcc-mean()-X	==>	TimeDomainBodyAccelerationMeanValueXaxis
2 tBodyAcc-mean()-Y	==>	TimeDomainBodyAccelerationMeanValueYaxis
3 tBodyAcc-mean()-Z	==>	TimeDomainBodyAccelerationMeanValueZaxis
4 tBodyAcc-std()-X	==>	TimeDomainBodyAccelerationStandardDeviationXaxis
5 tBodyAcc-std()-Y	==>	TimeDomainBodyAccelerationStandardDeviationYaxis
6 tBodyAcc-std()-Z	==>	TimeDomainBodyAccelerationStandardDeviationZaxis
7 tBodyAcc-mad()-X	==>	TimeDomainBodyAccelerationMedianAbsoluteDeviation.Xaxis
8 tBodyAcc-mad()-Y	==>	TimeDomainBodyAccelerationMedianAbsoluteDeviation.Yaxis
9 tBodyAcc-mad()-Z	==>	TimeDomainBodyAccelerationMedianAbsoluteDeviation.Zaxis
10 tBodyAcc-max()-X	==>	TimeDomainBodyAccelerationLargestValueInArrayXaxis
11 tBodyAcc-max()-Y	==>	TimeDomainBodyAccelerationLargestValueInArrayYaxis
12 tBodyAcc-max()-Z	==>	TimeDomainBodyAccelerationLargestValueInArrayZaxis
13 tBodyAcc-min()-X	==>	TimeDomainBodyAccelerationSmallestValueInArrayXaxis
14 tBodyAcc-min()-Y	==>	TimeDomainBodyAccelerationSmallestValueInArrayYaxis
15 tBodyAcc-min()-Z	==>	TimeDomainBodyAccelerationSmallestValueInArrayZaxis
16 tBodyAcc-sma()	==>	TimeDomainBodyAccelerationSignalMagnitudeArea
17 tBodyAcc-energy()-X	==>	TimeDomainBodyAccelerationEnergyMeasureXaxis
18 tBodyAcc-energy()-Y	==>	TimeDomainBodyAccelerationEnergyMeasureYaxis
19 tBodyAcc-energy()-Z	==>	TimeDomainBodyAccelerationEnergyMeasureZaxis
20 tBodyAcc-iqr()-X	==>	TimeDomainBodyAccelerationInterquartileRange.Xaxis
21 tBodyAcc-iqr()-Y	==>	TimeDomainBodyAccelerationInterquartileRange.Yaxis
22 tBodyAcc-iqr()-Z	==>	TimeDomainBodyAccelerationInterquartileRange.Zaxis
23 tBodyAcc-entropy()-X	==>	TimeDomainBodyAccelerationSignalEntropyXaxis
24 tBodyAcc-entropy()-Y	==>	TimeDomainBodyAccelerationSignalEntropyYaxis
25 tBodyAcc-entropy()-Z	==>	TimeDomainBodyAccelerationSignalEntropyZaxis
26 tBodyAcc-arCoeff()-X,1	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.1
27 tBodyAcc-arCoeff()-X,2	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.2
28 tBodyAcc-arCoeff()-X,3	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.3
29 tBodyAcc-arCoeff()-X,4	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.4
30 tBodyAcc-arCoeff()-Y,1	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.1
31 tBodyAcc-arCoeff()-Y,2	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.2
32 tBodyAcc-arCoeff()-Y,3	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.3
33 tBodyAcc-arCoeff()-Y,4	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.4
34 tBodyAcc-arCoeff()-Z,1	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.1
35 tBodyAcc-arCoeff()-Z,2	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.2
36 tBodyAcc-arCoeff()-Z,3	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.3
37 tBodyAcc-arCoeff()-Z,4	==>	TimeDomainBodyAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.4
38 tBodyAcc-correlation()-X,Y	==>	TimeDomainBodyAccelerationCorrelationCoefficientXaxis.Y
39 tBodyAcc-correlation()-X,Z	==>	TimeDomainBodyAccelerationCorrelationCoefficientXaxis.Z
40 tBodyAcc-correlation()-Y,Z	==>	TimeDomainBodyAccelerationCorrelationCoefficientYaxis.Z
41 tGravityAcc-mean()-X	==>	TimeDomainGravityAccelerationMeanValueXaxis
42 tGravityAcc-mean()-Y	==>	TimeDomainGravityAccelerationMeanValueYaxis
43 tGravityAcc-mean()-Z	==>	TimeDomainGravityAccelerationMeanValueZaxis
44 tGravityAcc-std()-X	==>	TimeDomainGravityAccelerationStandardDeviationXaxis
45 tGravityAcc-std()-Y	==>	TimeDomainGravityAccelerationStandardDeviationYaxis
46 tGravityAcc-std()-Z	==>	TimeDomainGravityAccelerationStandardDeviationZaxis
47 tGravityAcc-mad()-X	==>	TimeDomainGravityAccelerationMedianAbsoluteDeviation.Xaxis
48 tGravityAcc-mad()-Y	==>	TimeDomainGravityAccelerationMedianAbsoluteDeviation.Yaxis
49 tGravityAcc-mad()-Z	==>	TimeDomainGravityAccelerationMedianAbsoluteDeviation.Zaxis
50 tGravityAcc-max()-X	==>	TimeDomainGravityAccelerationLargestValueInArrayXaxis
51 tGravityAcc-max()-Y	==>	TimeDomainGravityAccelerationLargestValueInArrayYaxis
52 tGravityAcc-max()-Z	==>	TimeDomainGravityAccelerationLargestValueInArrayZaxis
53 tGravityAcc-min()-X	==>	TimeDomainGravityAccelerationSmallestValueInArrayXaxis
54 tGravityAcc-min()-Y	==>	TimeDomainGravityAccelerationSmallestValueInArrayYaxis
55 tGravityAcc-min()-Z	==>	TimeDomainGravityAccelerationSmallestValueInArrayZaxis
56 tGravityAcc-sma()	==>	TimeDomainGravityAccelerationSignalMagnitudeArea
57 tGravityAcc-energy()-X	==>	TimeDomainGravityAccelerationEnergyMeasureXaxis
58 tGravityAcc-energy()-Y	==>	TimeDomainGravityAccelerationEnergyMeasureYaxis
59 tGravityAcc-energy()-Z	==>	TimeDomainGravityAccelerationEnergyMeasureZaxis
60 tGravityAcc-iqr()-X	==>	TimeDomainGravityAccelerationInterquartileRange.Xaxis
61 tGravityAcc-iqr()-Y	==>	TimeDomainGravityAccelerationInterquartileRange.Yaxis
62 tGravityAcc-iqr()-Z	==>	TimeDomainGravityAccelerationInterquartileRange.Zaxis
63 tGravityAcc-entropy()-X	==>	TimeDomainGravityAccelerationSignalEntropyXaxis
64 tGravityAcc-entropy()-Y	==>	TimeDomainGravityAccelerationSignalEntropyYaxis
65 tGravityAcc-entropy()-Z	==>	TimeDomainGravityAccelerationSignalEntropyZaxis
66 tGravityAcc-arCoeff()-X,1	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.1
67 tGravityAcc-arCoeff()-X,2	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.2
68 tGravityAcc-arCoeff()-X,3	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.3
69 tGravityAcc-arCoeff()-X,4	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.4
70 tGravityAcc-arCoeff()-Y,1	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.1
71 tGravityAcc-arCoeff()-Y,2	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.2
72 tGravityAcc-arCoeff()-Y,3	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.3
73 tGravityAcc-arCoeff()-Y,4	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.4
74 tGravityAcc-arCoeff()-Z,1	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.1
75 tGravityAcc-arCoeff()-Z,2	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.2
76 tGravityAcc-arCoeff()-Z,3	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.3
77 tGravityAcc-arCoeff()-Z,4	==>	TimeDomainGravityAccelerationAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.4
78 tGravityAcc-correlation()-X,Y	==>	TimeDomainGravityAccelerationCorrelationCoefficientXaxis.Y
79 tGravityAcc-correlation()-X,Z	==>	TimeDomainGravityAccelerationCorrelationCoefficientXaxis.Z
80 tGravityAcc-correlation()-Y,Z	==>	TimeDomainGravityAccelerationCorrelationCoefficientYaxis.Z
81 tBodyAccJerk-mean()-X	==>	TimeDomainBodyAccelerationJerkMeanValueXaxis
82 tBodyAccJerk-mean()-Y	==>	TimeDomainBodyAccelerationJerkMeanValueYaxis
83 tBodyAccJerk-mean()-Z	==>	TimeDomainBodyAccelerationJerkMeanValueZaxis
84 tBodyAccJerk-std()-X	==>	TimeDomainBodyAccelerationJerkStandardDeviationXaxis
85 tBodyAccJerk-std()-Y	==>	TimeDomainBodyAccelerationJerkStandardDeviationYaxis
86 tBodyAccJerk-std()-Z	==>	TimeDomainBodyAccelerationJerkStandardDeviationZaxis
87 tBodyAccJerk-mad()-X	==>	TimeDomainBodyAccelerationJerkMedianAbsoluteDeviation.Xaxis
88 tBodyAccJerk-mad()-Y	==>	TimeDomainBodyAccelerationJerkMedianAbsoluteDeviation.Yaxis
89 tBodyAccJerk-mad()-Z	==>	TimeDomainBodyAccelerationJerkMedianAbsoluteDeviation.Zaxis
90 tBodyAccJerk-max()-X	==>	TimeDomainBodyAccelerationJerkLargestValueInArrayXaxis
91 tBodyAccJerk-max()-Y	==>	TimeDomainBodyAccelerationJerkLargestValueInArrayYaxis
92 tBodyAccJerk-max()-Z	==>	TimeDomainBodyAccelerationJerkLargestValueInArrayZaxis
93 tBodyAccJerk-min()-X	==>	TimeDomainBodyAccelerationJerkSmallestValueInArrayXaxis
94 tBodyAccJerk-min()-Y	==>	TimeDomainBodyAccelerationJerkSmallestValueInArrayYaxis
95 tBodyAccJerk-min()-Z	==>	TimeDomainBodyAccelerationJerkSmallestValueInArrayZaxis
96 tBodyAccJerk-sma()	==>	TimeDomainBodyAccelerationJerkSignalMagnitudeArea
97 tBodyAccJerk-energy()-X	==>	TimeDomainBodyAccelerationJerkEnergyMeasureXaxis
98 tBodyAccJerk-energy()-Y	==>	TimeDomainBodyAccelerationJerkEnergyMeasureYaxis
99 tBodyAccJerk-energy()-Z	==>	TimeDomainBodyAccelerationJerkEnergyMeasureZaxis
100 tBodyAccJerk-iqr()-X	==>	TimeDomainBodyAccelerationJerkInterquartileRange.Xaxis
101 tBodyAccJerk-iqr()-Y	==>	TimeDomainBodyAccelerationJerkInterquartileRange.Yaxis
102 tBodyAccJerk-iqr()-Z	==>	TimeDomainBodyAccelerationJerkInterquartileRange.Zaxis
103 tBodyAccJerk-entropy()-X	==>	TimeDomainBodyAccelerationJerkSignalEntropyXaxis
104 tBodyAccJerk-entropy()-Y	==>	TimeDomainBodyAccelerationJerkSignalEntropyYaxis
105 tBodyAccJerk-entropy()-Z	==>	TimeDomainBodyAccelerationJerkSignalEntropyZaxis
106 tBodyAccJerk-arCoeff()-X,1	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.1
107 tBodyAccJerk-arCoeff()-X,2	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.2
108 tBodyAccJerk-arCoeff()-X,3	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.3
109 tBodyAccJerk-arCoeff()-X,4	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.4
110 tBodyAccJerk-arCoeff()-Y,1	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.1
111 tBodyAccJerk-arCoeff()-Y,2	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.2
112 tBodyAccJerk-arCoeff()-Y,3	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.3
113 tBodyAccJerk-arCoeff()-Y,4	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.4
114 tBodyAccJerk-arCoeff()-Z,1	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.1
115 tBodyAccJerk-arCoeff()-Z,2	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.2
116 tBodyAccJerk-arCoeff()-Z,3	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.3
117 tBodyAccJerk-arCoeff()-Z,4	==>	TimeDomainBodyAccelerationJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.4
118 tBodyAccJerk-correlation()-X,Y	==>	TimeDomainBodyAccelerationJerkCorrelationCoefficientXaxis.Y
119 tBodyAccJerk-correlation()-X,Z	==>	TimeDomainBodyAccelerationJerkCorrelationCoefficientXaxis.Z
120 tBodyAccJerk-correlation()-Y,Z	==>	TimeDomainBodyAccelerationJerkCorrelationCoefficientYaxis.Z
121 tBodyGyro-mean()-X	==>	TimeDomainBodyAngularVelocityMeanValueXaxis
122 tBodyGyro-mean()-Y	==>	TimeDomainBodyAngularVelocityMeanValueYaxis
123 tBodyGyro-mean()-Z	==>	TimeDomainBodyAngularVelocityMeanValueZaxis
124 tBodyGyro-std()-X	==>	TimeDomainBodyAngularVelocityStandardDeviationXaxis
125 tBodyGyro-std()-Y	==>	TimeDomainBodyAngularVelocityStandardDeviationYaxis
126 tBodyGyro-std()-Z	==>	TimeDomainBodyAngularVelocityStandardDeviationZaxis
127 tBodyGyro-mad()-X	==>	TimeDomainBodyAngularVelocityMedianAbsoluteDeviation.Xaxis
128 tBodyGyro-mad()-Y	==>	TimeDomainBodyAngularVelocityMedianAbsoluteDeviation.Yaxis
129 tBodyGyro-mad()-Z	==>	TimeDomainBodyAngularVelocityMedianAbsoluteDeviation.Zaxis
130 tBodyGyro-max()-X	==>	TimeDomainBodyAngularVelocityLargestValueInArrayXaxis
131 tBodyGyro-max()-Y	==>	TimeDomainBodyAngularVelocityLargestValueInArrayYaxis
132 tBodyGyro-max()-Z	==>	TimeDomainBodyAngularVelocityLargestValueInArrayZaxis
133 tBodyGyro-min()-X	==>	TimeDomainBodyAngularVelocitySmallestValueInArrayXaxis
134 tBodyGyro-min()-Y	==>	TimeDomainBodyAngularVelocitySmallestValueInArrayYaxis
135 tBodyGyro-min()-Z	==>	TimeDomainBodyAngularVelocitySmallestValueInArrayZaxis
136 tBodyGyro-sma()	==>	TimeDomainBodyAngularVelocitySignalMagnitudeArea
137 tBodyGyro-energy()-X	==>	TimeDomainBodyAngularVelocityEnergyMeasureXaxis
138 tBodyGyro-energy()-Y	==>	TimeDomainBodyAngularVelocityEnergyMeasureYaxis
139 tBodyGyro-energy()-Z	==>	TimeDomainBodyAngularVelocityEnergyMeasureZaxis
140 tBodyGyro-iqr()-X	==>	TimeDomainBodyAngularVelocityInterquartileRange.Xaxis
141 tBodyGyro-iqr()-Y	==>	TimeDomainBodyAngularVelocityInterquartileRange.Yaxis
142 tBodyGyro-iqr()-Z	==>	TimeDomainBodyAngularVelocityInterquartileRange.Zaxis
143 tBodyGyro-entropy()-X	==>	TimeDomainBodyAngularVelocitySignalEntropyXaxis
144 tBodyGyro-entropy()-Y	==>	TimeDomainBodyAngularVelocitySignalEntropyYaxis
145 tBodyGyro-entropy()-Z	==>	TimeDomainBodyAngularVelocitySignalEntropyZaxis
146 tBodyGyro-arCoeff()-X,1	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.1
147 tBodyGyro-arCoeff()-X,2	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.2
148 tBodyGyro-arCoeff()-X,3	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.3
149 tBodyGyro-arCoeff()-X,4	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.4
150 tBodyGyro-arCoeff()-Y,1	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.1
151 tBodyGyro-arCoeff()-Y,2	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.2
152 tBodyGyro-arCoeff()-Y,3	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.3
153 tBodyGyro-arCoeff()-Y,4	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.4
154 tBodyGyro-arCoeff()-Z,1	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.1
155 tBodyGyro-arCoeff()-Z,2	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.2
156 tBodyGyro-arCoeff()-Z,3	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.3
157 tBodyGyro-arCoeff()-Z,4	==>	TimeDomainBodyAngularVelocityAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.4
158 tBodyGyro-correlation()-X,Y	==>	TimeDomainBodyAngularVelocityCorrelationCoefficientXaxis.Y
159 tBodyGyro-correlation()-X,Z	==>	TimeDomainBodyAngularVelocityCorrelationCoefficientXaxis.Z
160 tBodyGyro-correlation()-Y,Z	==>	TimeDomainBodyAngularVelocityCorrelationCoefficientYaxis.Z
161 tBodyGyroJerk-mean()-X	==>	TimeDomainBodyAngularVelocityJerkMeanValueXaxis
162 tBodyGyroJerk-mean()-Y	==>	TimeDomainBodyAngularVelocityJerkMeanValueYaxis
163 tBodyGyroJerk-mean()-Z	==>	TimeDomainBodyAngularVelocityJerkMeanValueZaxis
164 tBodyGyroJerk-std()-X	==>	TimeDomainBodyAngularVelocityJerkStandardDeviationXaxis
165 tBodyGyroJerk-std()-Y	==>	TimeDomainBodyAngularVelocityJerkStandardDeviationYaxis
166 tBodyGyroJerk-std()-Z	==>	TimeDomainBodyAngularVelocityJerkStandardDeviationZaxis
167 tBodyGyroJerk-mad()-X	==>	TimeDomainBodyAngularVelocityJerkMedianAbsoluteDeviation.Xaxis
168 tBodyGyroJerk-mad()-Y	==>	TimeDomainBodyAngularVelocityJerkMedianAbsoluteDeviation.Yaxis
169 tBodyGyroJerk-mad()-Z	==>	TimeDomainBodyAngularVelocityJerkMedianAbsoluteDeviation.Zaxis
170 tBodyGyroJerk-max()-X	==>	TimeDomainBodyAngularVelocityJerkLargestValueInArrayXaxis
171 tBodyGyroJerk-max()-Y	==>	TimeDomainBodyAngularVelocityJerkLargestValueInArrayYaxis
172 tBodyGyroJerk-max()-Z	==>	TimeDomainBodyAngularVelocityJerkLargestValueInArrayZaxis
173 tBodyGyroJerk-min()-X	==>	TimeDomainBodyAngularVelocityJerkSmallestValueInArrayXaxis
174 tBodyGyroJerk-min()-Y	==>	TimeDomainBodyAngularVelocityJerkSmallestValueInArrayYaxis
175 tBodyGyroJerk-min()-Z	==>	TimeDomainBodyAngularVelocityJerkSmallestValueInArrayZaxis
176 tBodyGyroJerk-sma()	==>	TimeDomainBodyAngularVelocityJerkSignalMagnitudeArea
177 tBodyGyroJerk-energy()-X	==>	TimeDomainBodyAngularVelocityJerkEnergyMeasureXaxis
178 tBodyGyroJerk-energy()-Y	==>	TimeDomainBodyAngularVelocityJerkEnergyMeasureYaxis
179 tBodyGyroJerk-energy()-Z	==>	TimeDomainBodyAngularVelocityJerkEnergyMeasureZaxis
180 tBodyGyroJerk-iqr()-X	==>	TimeDomainBodyAngularVelocityJerkInterquartileRange.Xaxis
181 tBodyGyroJerk-iqr()-Y	==>	TimeDomainBodyAngularVelocityJerkInterquartileRange.Yaxis
182 tBodyGyroJerk-iqr()-Z	==>	TimeDomainBodyAngularVelocityJerkInterquartileRange.Zaxis
183 tBodyGyroJerk-entropy()-X	==>	TimeDomainBodyAngularVelocityJerkSignalEntropyXaxis
184 tBodyGyroJerk-entropy()-Y	==>	TimeDomainBodyAngularVelocityJerkSignalEntropyYaxis
185 tBodyGyroJerk-entropy()-Z	==>	TimeDomainBodyAngularVelocityJerkSignalEntropyZaxis
186 tBodyGyroJerk-arCoeff()-X,1	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.1
187 tBodyGyroJerk-arCoeff()-X,2	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.2
188 tBodyGyroJerk-arCoeff()-X,3	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.3
189 tBodyGyroJerk-arCoeff()-X,4	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Xaxis.4
190 tBodyGyroJerk-arCoeff()-Y,1	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.1
191 tBodyGyroJerk-arCoeff()-Y,2	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.2
192 tBodyGyroJerk-arCoeff()-Y,3	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.3
193 tBodyGyroJerk-arCoeff()-Y,4	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Yaxis.4
194 tBodyGyroJerk-arCoeff()-Z,1	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.1
195 tBodyGyroJerk-arCoeff()-Z,2	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.2
196 tBodyGyroJerk-arCoeff()-Z,3	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.3
197 tBodyGyroJerk-arCoeff()-Z,4	==>	TimeDomainBodyAngularVelocityJerkAutoRegresionCoefficientsWithBurgOrderEqualTo4Zaxis.4
198 tBodyGyroJerk-correlation()-X,Y	==>	TimeDomainBodyAngularVelocityJerkCorrelationCoefficientXaxis.Y
199 tBodyGyroJerk-correlation()-X,Z	==>	TimeDomainBodyAngularVelocityJerkCorrelationCoefficientXaxis.Z
200 tBodyGyroJerk-correlation()-Y,Z	==>	TimeDomainBodyAngularVelocityJerkCorrelationCoefficientYaxis.Z
201 tBodyAccMag-mean()	==>	TimeDomainBodyAccelerationMagnitudeSignalsMeanValue
202 tBodyAccMag-std()	==>	TimeDomainBodyAccelerationMagnitudeSignalsStandardDeviation
203 tBodyAccMag-mad()	==>	TimeDomainBodyAccelerationMagnitudeSignalsMedianAbsoluteDeviation.
204 tBodyAccMag-max()	==>	TimeDomainBodyAccelerationMagnitudeSignalsLargestValueInArray
205 tBodyAccMag-min()	==>	TimeDomainBodyAccelerationMagnitudeSignalsSmallestValueInArray
206 tBodyAccMag-sma()	==>	TimeDomainBodyAccelerationMagnitudeSignalsSignalMagnitudeArea
207 tBodyAccMag-energy()	==>	TimeDomainBodyAccelerationMagnitudeSignalsEnergyMeasure
208 tBodyAccMag-iqr()	==>	TimeDomainBodyAccelerationMagnitudeSignalsInterquartileRange.
209 tBodyAccMag-entropy()	==>	TimeDomainBodyAccelerationMagnitudeSignalsSignalEntropy
210 tBodyAccMag-arCoeff()1	==>	TimeDomainBodyAccelerationMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo41
211 tBodyAccMag-arCoeff()2	==>	TimeDomainBodyAccelerationMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo42
212 tBodyAccMag-arCoeff()3	==>	TimeDomainBodyAccelerationMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo43
213 tBodyAccMag-arCoeff()4	==>	TimeDomainBodyAccelerationMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo44
214 tGravityAccMag-mean()	==>	TimeDomainGravityAccelerationMagnitudeSignalsMeanValue
215 tGravityAccMag-std()	==>	TimeDomainGravityAccelerationMagnitudeSignalsStandardDeviation
216 tGravityAccMag-mad()	==>	TimeDomainGravityAccelerationMagnitudeSignalsMedianAbsoluteDeviation.
217 tGravityAccMag-max()	==>	TimeDomainGravityAccelerationMagnitudeSignalsLargestValueInArray
218 tGravityAccMag-min()	==>	TimeDomainGravityAccelerationMagnitudeSignalsSmallestValueInArray
219 tGravityAccMag-sma()	==>	TimeDomainGravityAccelerationMagnitudeSignalsSignalMagnitudeArea
220 tGravityAccMag-energy()	==>	TimeDomainGravityAccelerationMagnitudeSignalsEnergyMeasure
221 tGravityAccMag-iqr()	==>	TimeDomainGravityAccelerationMagnitudeSignalsInterquartileRange.
222 tGravityAccMag-entropy()	==>	TimeDomainGravityAccelerationMagnitudeSignalsSignalEntropy
223 tGravityAccMag-arCoeff()1	==>	TimeDomainGravityAccelerationMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo41
224 tGravityAccMag-arCoeff()2	==>	TimeDomainGravityAccelerationMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo42
225 tGravityAccMag-arCoeff()3	==>	TimeDomainGravityAccelerationMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo43
226 tGravityAccMag-arCoeff()4	==>	TimeDomainGravityAccelerationMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo44
227 tBodyAccJerkMag-mean()	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsMeanValue
228 tBodyAccJerkMag-std()	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsStandardDeviation
229 tBodyAccJerkMag-mad()	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsMedianAbsoluteDeviation.
230 tBodyAccJerkMag-max()	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsLargestValueInArray
231 tBodyAccJerkMag-min()	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsSmallestValueInArray
232 tBodyAccJerkMag-sma()	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsSignalMagnitudeArea
233 tBodyAccJerkMag-energy()	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsEnergyMeasure
234 tBodyAccJerkMag-iqr()	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsInterquartileRange.
235 tBodyAccJerkMag-entropy()	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsSignalEntropy
236 tBodyAccJerkMag-arCoeff()1	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo41
237 tBodyAccJerkMag-arCoeff()2	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo42
238 tBodyAccJerkMag-arCoeff()3	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo43
239 tBodyAccJerkMag-arCoeff()4	==>	TimeDomainBodyAccelerationJerkMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo44
240 tBodyGyroMag-mean()	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsMeanValue
241 tBodyGyroMag-std()	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsStandardDeviation
242 tBodyGyroMag-mad()	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsMedianAbsoluteDeviation.
243 tBodyGyroMag-max()	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsLargestValueInArray
244 tBodyGyroMag-min()	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsSmallestValueInArray
245 tBodyGyroMag-sma()	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsSignalMagnitudeArea
246 tBodyGyroMag-energy()	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsEnergyMeasure
247 tBodyGyroMag-iqr()	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsInterquartileRange.
248 tBodyGyroMag-entropy()	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsSignalEntropy
249 tBodyGyroMag-arCoeff()1	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo41
250 tBodyGyroMag-arCoeff()2	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo42
251 tBodyGyroMag-arCoeff()3	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo43
252 tBodyGyroMag-arCoeff()4	==>	TimeDomainBodyAngularVelocityMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo44
253 tBodyGyroJerkMag-mean()	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsMeanValue
254 tBodyGyroJerkMag-std()	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsStandardDeviation
255 tBodyGyroJerkMag-mad()	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsMedianAbsoluteDeviation.
256 tBodyGyroJerkMag-max()	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsLargestValueInArray
257 tBodyGyroJerkMag-min()	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsSmallestValueInArray
258 tBodyGyroJerkMag-sma()	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsSignalMagnitudeArea
259 tBodyGyroJerkMag-energy()	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsEnergyMeasure
260 tBodyGyroJerkMag-iqr()	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsInterquartileRange.
261 tBodyGyroJerkMag-entropy()	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsSignalEntropy
262 tBodyGyroJerkMag-arCoeff()1	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo41
263 tBodyGyroJerkMag-arCoeff()2	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo42
264 tBodyGyroJerkMag-arCoeff()3	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo43
265 tBodyGyroJerkMag-arCoeff()4	==>	TimeDomainBodyAngularVelocityJerkMagnitudeSignalsAutoRegresionCoefficientsWithBurgOrderEqualTo44
266 fBodyAcc-mean()-X	==>	FrequencyDomainBodyAccelerationMeanValueXaxis
267 fBodyAcc-mean()-Y	==>	FrequencyDomainBodyAccelerationMeanValueYaxis
268 fBodyAcc-mean()-Z	==>	FrequencyDomainBodyAccelerationMeanValueZaxis
269 fBodyAcc-std()-X	==>	FrequencyDomainBodyAccelerationStandardDeviationXaxis
270 fBodyAcc-std()-Y	==>	FrequencyDomainBodyAccelerationStandardDeviationYaxis
271 fBodyAcc-std()-Z	==>	FrequencyDomainBodyAccelerationStandardDeviationZaxis
272 fBodyAcc-mad()-X	==>	FrequencyDomainBodyAccelerationMedianAbsoluteDeviation.Xaxis
273 fBodyAcc-mad()-Y	==>	FrequencyDomainBodyAccelerationMedianAbsoluteDeviation.Yaxis
274 fBodyAcc-mad()-Z	==>	FrequencyDomainBodyAccelerationMedianAbsoluteDeviation.Zaxis
275 fBodyAcc-max()-X	==>	FrequencyDomainBodyAccelerationLargestValueInArrayXaxis
276 fBodyAcc-max()-Y	==>	FrequencyDomainBodyAccelerationLargestValueInArrayYaxis
277 fBodyAcc-max()-Z	==>	FrequencyDomainBodyAccelerationLargestValueInArrayZaxis
278 fBodyAcc-min()-X	==>	FrequencyDomainBodyAccelerationSmallestValueInArrayXaxis
279 fBodyAcc-min()-Y	==>	FrequencyDomainBodyAccelerationSmallestValueInArrayYaxis
280 fBodyAcc-min()-Z	==>	FrequencyDomainBodyAccelerationSmallestValueInArrayZaxis
281 fBodyAcc-sma()	==>	FrequencyDomainBodyAccelerationSignalMagnitudeArea
282 fBodyAcc-energy()-X	==>	FrequencyDomainBodyAccelerationEnergyMeasureXaxis
283 fBodyAcc-energy()-Y	==>	FrequencyDomainBodyAccelerationEnergyMeasureYaxis
284 fBodyAcc-energy()-Z	==>	FrequencyDomainBodyAccelerationEnergyMeasureZaxis
285 fBodyAcc-iqr()-X	==>	FrequencyDomainBodyAccelerationInterquartileRange.Xaxis
286 fBodyAcc-iqr()-Y	==>	FrequencyDomainBodyAccelerationInterquartileRange.Yaxis
287 fBodyAcc-iqr()-Z	==>	FrequencyDomainBodyAccelerationInterquartileRange.Zaxis
288 fBodyAcc-entropy()-X	==>	FrequencyDomainBodyAccelerationSignalEntropyXaxis
289 fBodyAcc-entropy()-Y	==>	FrequencyDomainBodyAccelerationSignalEntropyYaxis
290 fBodyAcc-entropy()-Z	==>	FrequencyDomainBodyAccelerationSignalEntropyZaxis
291 fBodyAcc-maxInds-X	==>	FrequencyDomainBodyAcceleration.maxIndsXaxis
292 fBodyAcc-maxInds-Y	==>	FrequencyDomainBodyAcceleration.maxIndsYaxis
293 fBodyAcc-maxInds-Z	==>	FrequencyDomainBodyAcceleration.maxIndsZaxis
294 fBodyAcc-meanFreq()-X	==>	FrequencyDomainBodyAccelerationWeightedAverageOfFequencyComponentsForMeanFrequencyXaxis
295 fBodyAcc-meanFreq()-Y	==>	FrequencyDomainBodyAccelerationWeightedAverageOfFequencyComponentsForMeanFrequencyYaxis
296 fBodyAcc-meanFreq()-Z	==>	FrequencyDomainBodyAccelerationWeightedAverageOfFequencyComponentsForMeanFrequencyZaxis
297 fBodyAcc-skewness()-X	==>	FrequencyDomainBodyAccelerationSkewnessXaxis
298 fBodyAcc-kurtosis()-X	==>	FrequencyDomainBodyAccelerationKurtosisXaxis
299 fBodyAcc-skewness()-Y	==>	FrequencyDomainBodyAccelerationSkewnessYaxis
300 fBodyAcc-kurtosis()-Y	==>	FrequencyDomainBodyAccelerationKurtosisYaxis
301 fBodyAcc-skewness()-Z	==>	FrequencyDomainBodyAccelerationSkewnessZaxis
302 fBodyAcc-kurtosis()-Z	==>	FrequencyDomainBodyAccelerationKurtosisZaxis
303 fBodyAcc-bandsEnergy()-1,8	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..1.8
304 fBodyAcc-bandsEnergy()-9,16	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..9.16
305 fBodyAcc-bandsEnergy()-17,24	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..17.24
306 fBodyAcc-bandsEnergy()-25,32	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..25.32
307 fBodyAcc-bandsEnergy()-33,40	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..33.40
308 fBodyAcc-bandsEnergy()-41,48	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..41.48
309 fBodyAcc-bandsEnergy()-49,56	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..49.56
310 fBodyAcc-bandsEnergy()-57,64	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..57.64
311 fBodyAcc-bandsEnergy()-1,16	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..1.16
312 fBodyAcc-bandsEnergy()-17,32	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..17.32
313 fBodyAcc-bandsEnergy()-33,48	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..33.48
314 fBodyAcc-bandsEnergy()-49,64	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..49.64
315 fBodyAcc-bandsEnergy()-1,24	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..1.24
316 fBodyAcc-bandsEnergy()-25,48	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..25.48
317 fBodyAcc-bandsEnergy()-1,8	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..1.8.1
318 fBodyAcc-bandsEnergy()-9,16	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..9.16.1
319 fBodyAcc-bandsEnergy()-17,24	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..17.24.1
320 fBodyAcc-bandsEnergy()-25,32	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..25.32.1
321 fBodyAcc-bandsEnergy()-33,40	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..33.40.1
322 fBodyAcc-bandsEnergy()-41,48	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..41.48.1
323 fBodyAcc-bandsEnergy()-49,56	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..49.56.1
324 fBodyAcc-bandsEnergy()-57,64	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..57.64.1
325 fBodyAcc-bandsEnergy()-1,16	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..1.16.1
326 fBodyAcc-bandsEnergy()-17,32	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..17.32.1
327 fBodyAcc-bandsEnergy()-33,48	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..33.48.1
328 fBodyAcc-bandsEnergy()-49,64	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..49.64.1
329 fBodyAcc-bandsEnergy()-1,24	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..1.24.1
330 fBodyAcc-bandsEnergy()-25,48	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..25.48.1
331 fBodyAcc-bandsEnergy()-1,8	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..1.8.2
332 fBodyAcc-bandsEnergy()-9,16	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..9.16.2
333 fBodyAcc-bandsEnergy()-17,24	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..17.24.2
334 fBodyAcc-bandsEnergy()-25,32	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..25.32.2
335 fBodyAcc-bandsEnergy()-33,40	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..33.40.2
336 fBodyAcc-bandsEnergy()-41,48	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..41.48.2
337 fBodyAcc-bandsEnergy()-49,56	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..49.56.2
338 fBodyAcc-bandsEnergy()-57,64	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..57.64.2
339 fBodyAcc-bandsEnergy()-1,16	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..1.16.2
340 fBodyAcc-bandsEnergy()-17,32	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..17.32.2
341 fBodyAcc-bandsEnergy()-33,48	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..33.48.2
342 fBodyAcc-bandsEnergy()-49,64	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..49.64.2
343 fBodyAcc-bandsEnergy()-1,24	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..1.24.2
344 fBodyAcc-bandsEnergy()-25,48	==>	FrequencyDomainBodyAccelerationEnergyOfFrequencyInterval..25.48.2
345 fBodyAccJerk-mean()-X	==>	FrequencyDomainBodyAccelerationJerkMeanValueXaxis
346 fBodyAccJerk-mean()-Y	==>	FrequencyDomainBodyAccelerationJerkMeanValueYaxis
347 fBodyAccJerk-mean()-Z	==>	FrequencyDomainBodyAccelerationJerkMeanValueZaxis
348 fBodyAccJerk-std()-X	==>	FrequencyDomainBodyAccelerationJerkStandardDeviationXaxis
349 fBodyAccJerk-std()-Y	==>	FrequencyDomainBodyAccelerationJerkStandardDeviationYaxis
350 fBodyAccJerk-std()-Z	==>	FrequencyDomainBodyAccelerationJerkStandardDeviationZaxis
351 fBodyAccJerk-mad()-X	==>	FrequencyDomainBodyAccelerationJerkMedianAbsoluteDeviation.Xaxis
352 fBodyAccJerk-mad()-Y	==>	FrequencyDomainBodyAccelerationJerkMedianAbsoluteDeviation.Yaxis
353 fBodyAccJerk-mad()-Z	==>	FrequencyDomainBodyAccelerationJerkMedianAbsoluteDeviation.Zaxis
354 fBodyAccJerk-max()-X	==>	FrequencyDomainBodyAccelerationJerkLargestValueInArrayXaxis
355 fBodyAccJerk-max()-Y	==>	FrequencyDomainBodyAccelerationJerkLargestValueInArrayYaxis
356 fBodyAccJerk-max()-Z	==>	FrequencyDomainBodyAccelerationJerkLargestValueInArrayZaxis
357 fBodyAccJerk-min()-X	==>	FrequencyDomainBodyAccelerationJerkSmallestValueInArrayXaxis
358 fBodyAccJerk-min()-Y	==>	FrequencyDomainBodyAccelerationJerkSmallestValueInArrayYaxis
359 fBodyAccJerk-min()-Z	==>	FrequencyDomainBodyAccelerationJerkSmallestValueInArrayZaxis
360 fBodyAccJerk-sma()	==>	FrequencyDomainBodyAccelerationJerkSignalMagnitudeArea
361 fBodyAccJerk-energy()-X	==>	FrequencyDomainBodyAccelerationJerkEnergyMeasureXaxis
362 fBodyAccJerk-energy()-Y	==>	FrequencyDomainBodyAccelerationJerkEnergyMeasureYaxis
363 fBodyAccJerk-energy()-Z	==>	FrequencyDomainBodyAccelerationJerkEnergyMeasureZaxis
364 fBodyAccJerk-iqr()-X	==>	FrequencyDomainBodyAccelerationJerkInterquartileRange.Xaxis
365 fBodyAccJerk-iqr()-Y	==>	FrequencyDomainBodyAccelerationJerkInterquartileRange.Yaxis
366 fBodyAccJerk-iqr()-Z	==>	FrequencyDomainBodyAccelerationJerkInterquartileRange.Zaxis
367 fBodyAccJerk-entropy()-X	==>	FrequencyDomainBodyAccelerationJerkSignalEntropyXaxis
368 fBodyAccJerk-entropy()-Y	==>	FrequencyDomainBodyAccelerationJerkSignalEntropyYaxis
369 fBodyAccJerk-entropy()-Z	==>	FrequencyDomainBodyAccelerationJerkSignalEntropyZaxis
370 fBodyAccJerk-maxInds-X	==>	FrequencyDomainBodyAccelerationJerk.maxIndsXaxis
371 fBodyAccJerk-maxInds-Y	==>	FrequencyDomainBodyAccelerationJerk.maxIndsYaxis
372 fBodyAccJerk-maxInds-Z	==>	FrequencyDomainBodyAccelerationJerk.maxIndsZaxis
373 fBodyAccJerk-meanFreq()-X	==>	FrequencyDomainBodyAccelerationJerkWeightedAverageOfFequencyComponentsForMeanFrequencyXaxis
374 fBodyAccJerk-meanFreq()-Y	==>	FrequencyDomainBodyAccelerationJerkWeightedAverageOfFequencyComponentsForMeanFrequencyYaxis
375 fBodyAccJerk-meanFreq()-Z	==>	FrequencyDomainBodyAccelerationJerkWeightedAverageOfFequencyComponentsForMeanFrequencyZaxis
376 fBodyAccJerk-skewness()-X	==>	FrequencyDomainBodyAccelerationJerkSkewnessXaxis
377 fBodyAccJerk-kurtosis()-X	==>	FrequencyDomainBodyAccelerationJerkKurtosisXaxis
378 fBodyAccJerk-skewness()-Y	==>	FrequencyDomainBodyAccelerationJerkSkewnessYaxis
379 fBodyAccJerk-kurtosis()-Y	==>	FrequencyDomainBodyAccelerationJerkKurtosisYaxis
380 fBodyAccJerk-skewness()-Z	==>	FrequencyDomainBodyAccelerationJerkSkewnessZaxis
381 fBodyAccJerk-kurtosis()-Z	==>	FrequencyDomainBodyAccelerationJerkKurtosisZaxis
382 fBodyAccJerk-bandsEnergy()-1,8	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..1.8
383 fBodyAccJerk-bandsEnergy()-9,16	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..9.16
384 fBodyAccJerk-bandsEnergy()-17,24	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..17.24
385 fBodyAccJerk-bandsEnergy()-25,32	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..25.32
386 fBodyAccJerk-bandsEnergy()-33,40	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..33.40
387 fBodyAccJerk-bandsEnergy()-41,48	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..41.48
388 fBodyAccJerk-bandsEnergy()-49,56	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..49.56
389 fBodyAccJerk-bandsEnergy()-57,64	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..57.64
390 fBodyAccJerk-bandsEnergy()-1,16	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..1.16
391 fBodyAccJerk-bandsEnergy()-17,32	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..17.32
392 fBodyAccJerk-bandsEnergy()-33,48	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..33.48
393 fBodyAccJerk-bandsEnergy()-49,64	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..49.64
394 fBodyAccJerk-bandsEnergy()-1,24	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..1.24
395 fBodyAccJerk-bandsEnergy()-25,48	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..25.48
396 fBodyAccJerk-bandsEnergy()-1,8	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..1.8.1
397 fBodyAccJerk-bandsEnergy()-9,16	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..9.16.1
398 fBodyAccJerk-bandsEnergy()-17,24	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..17.24.1
399 fBodyAccJerk-bandsEnergy()-25,32	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..25.32.1
400 fBodyAccJerk-bandsEnergy()-33,40	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..33.40.1
401 fBodyAccJerk-bandsEnergy()-41,48	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..41.48.1
402 fBodyAccJerk-bandsEnergy()-49,56	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..49.56.1
403 fBodyAccJerk-bandsEnergy()-57,64	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..57.64.1
404 fBodyAccJerk-bandsEnergy()-1,16	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..1.16.1
405 fBodyAccJerk-bandsEnergy()-17,32	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..17.32.1
406 fBodyAccJerk-bandsEnergy()-33,48	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..33.48.1
407 fBodyAccJerk-bandsEnergy()-49,64	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..49.64.1
408 fBodyAccJerk-bandsEnergy()-1,24	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..1.24.1
409 fBodyAccJerk-bandsEnergy()-25,48	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..25.48.1
410 fBodyAccJerk-bandsEnergy()-1,8	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..1.8.2
411 fBodyAccJerk-bandsEnergy()-9,16	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..9.16.2
412 fBodyAccJerk-bandsEnergy()-17,24	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..17.24.2
413 fBodyAccJerk-bandsEnergy()-25,32	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..25.32.2
414 fBodyAccJerk-bandsEnergy()-33,40	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..33.40.2
415 fBodyAccJerk-bandsEnergy()-41,48	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..41.48.2
416 fBodyAccJerk-bandsEnergy()-49,56	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..49.56.2
417 fBodyAccJerk-bandsEnergy()-57,64	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..57.64.2
418 fBodyAccJerk-bandsEnergy()-1,16	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..1.16.2
419 fBodyAccJerk-bandsEnergy()-17,32	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..17.32.2
420 fBodyAccJerk-bandsEnergy()-33,48	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..33.48.2
421 fBodyAccJerk-bandsEnergy()-49,64	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..49.64.2
422 fBodyAccJerk-bandsEnergy()-1,24	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..1.24.2
423 fBodyAccJerk-bandsEnergy()-25,48	==>	FrequencyDomainBodyAccelerationJerkEnergyOfFrequencyInterval..25.48.2
424 fBodyGyro-mean()-X	==>	FrequencyDomainBodyAngularVelocityMeanValueXaxis
425 fBodyGyro-mean()-Y	==>	FrequencyDomainBodyAngularVelocityMeanValueYaxis
426 fBodyGyro-mean()-Z	==>	FrequencyDomainBodyAngularVelocityMeanValueZaxis
427 fBodyGyro-std()-X	==>	FrequencyDomainBodyAngularVelocityStandardDeviationXaxis
428 fBodyGyro-std()-Y	==>	FrequencyDomainBodyAngularVelocityStandardDeviationYaxis
429 fBodyGyro-std()-Z	==>	FrequencyDomainBodyAngularVelocityStandardDeviationZaxis
430 fBodyGyro-mad()-X	==>	FrequencyDomainBodyAngularVelocityMedianAbsoluteDeviation.Xaxis
431 fBodyGyro-mad()-Y	==>	FrequencyDomainBodyAngularVelocityMedianAbsoluteDeviation.Yaxis
432 fBodyGyro-mad()-Z	==>	FrequencyDomainBodyAngularVelocityMedianAbsoluteDeviation.Zaxis
433 fBodyGyro-max()-X	==>	FrequencyDomainBodyAngularVelocityLargestValueInArrayXaxis
434 fBodyGyro-max()-Y	==>	FrequencyDomainBodyAngularVelocityLargestValueInArrayYaxis
435 fBodyGyro-max()-Z	==>	FrequencyDomainBodyAngularVelocityLargestValueInArrayZaxis
436 fBodyGyro-min()-X	==>	FrequencyDomainBodyAngularVelocitySmallestValueInArrayXaxis
437 fBodyGyro-min()-Y	==>	FrequencyDomainBodyAngularVelocitySmallestValueInArrayYaxis
438 fBodyGyro-min()-Z	==>	FrequencyDomainBodyAngularVelocitySmallestValueInArrayZaxis
439 fBodyGyro-sma()	==>	FrequencyDomainBodyAngularVelocitySignalMagnitudeArea
440 fBodyGyro-energy()-X	==>	FrequencyDomainBodyAngularVelocityEnergyMeasureXaxis
441 fBodyGyro-energy()-Y	==>	FrequencyDomainBodyAngularVelocityEnergyMeasureYaxis
442 fBodyGyro-energy()-Z	==>	FrequencyDomainBodyAngularVelocityEnergyMeasureZaxis
443 fBodyGyro-iqr()-X	==>	FrequencyDomainBodyAngularVelocityInterquartileRange.Xaxis
444 fBodyGyro-iqr()-Y	==>	FrequencyDomainBodyAngularVelocityInterquartileRange.Yaxis
445 fBodyGyro-iqr()-Z	==>	FrequencyDomainBodyAngularVelocityInterquartileRange.Zaxis
446 fBodyGyro-entropy()-X	==>	FrequencyDomainBodyAngularVelocitySignalEntropyXaxis
447 fBodyGyro-entropy()-Y	==>	FrequencyDomainBodyAngularVelocitySignalEntropyYaxis
448 fBodyGyro-entropy()-Z	==>	FrequencyDomainBodyAngularVelocitySignalEntropyZaxis
449 fBodyGyro-maxInds-X	==>	FrequencyDomainBodyAngularVelocity.maxIndsXaxis
450 fBodyGyro-maxInds-Y	==>	FrequencyDomainBodyAngularVelocity.maxIndsYaxis
451 fBodyGyro-maxInds-Z	==>	FrequencyDomainBodyAngularVelocity.maxIndsZaxis
452 fBodyGyro-meanFreq()-X	==>	FrequencyDomainBodyAngularVelocityWeightedAverageOfFequencyComponentsForMeanFrequencyXaxis
453 fBodyGyro-meanFreq()-Y	==>	FrequencyDomainBodyAngularVelocityWeightedAverageOfFequencyComponentsForMeanFrequencyYaxis
454 fBodyGyro-meanFreq()-Z	==>	FrequencyDomainBodyAngularVelocityWeightedAverageOfFequencyComponentsForMeanFrequencyZaxis
455 fBodyGyro-skewness()-X	==>	FrequencyDomainBodyAngularVelocitySkewnessXaxis
456 fBodyGyro-kurtosis()-X	==>	FrequencyDomainBodyAngularVelocityKurtosisXaxis
457 fBodyGyro-skewness()-Y	==>	FrequencyDomainBodyAngularVelocitySkewnessYaxis
458 fBodyGyro-kurtosis()-Y	==>	FrequencyDomainBodyAngularVelocityKurtosisYaxis
459 fBodyGyro-skewness()-Z	==>	FrequencyDomainBodyAngularVelocitySkewnessZaxis
460 fBodyGyro-kurtosis()-Z	==>	FrequencyDomainBodyAngularVelocityKurtosisZaxis
461 fBodyGyro-bandsEnergy()-1,8	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..1.8
462 fBodyGyro-bandsEnergy()-9,16	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..9.16
463 fBodyGyro-bandsEnergy()-17,24	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..17.24
464 fBodyGyro-bandsEnergy()-25,32	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..25.32
465 fBodyGyro-bandsEnergy()-33,40	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..33.40
466 fBodyGyro-bandsEnergy()-41,48	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..41.48
467 fBodyGyro-bandsEnergy()-49,56	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..49.56
468 fBodyGyro-bandsEnergy()-57,64	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..57.64
469 fBodyGyro-bandsEnergy()-1,16	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..1.16
470 fBodyGyro-bandsEnergy()-17,32	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..17.32
471 fBodyGyro-bandsEnergy()-33,48	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..33.48
472 fBodyGyro-bandsEnergy()-49,64	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..49.64
473 fBodyGyro-bandsEnergy()-1,24	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..1.24
474 fBodyGyro-bandsEnergy()-25,48	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..25.48
475 fBodyGyro-bandsEnergy()-1,8	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..1.8.1
476 fBodyGyro-bandsEnergy()-9,16	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..9.16.1
477 fBodyGyro-bandsEnergy()-17,24	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..17.24.1
478 fBodyGyro-bandsEnergy()-25,32	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..25.32.1
479 fBodyGyro-bandsEnergy()-33,40	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..33.40.1
480 fBodyGyro-bandsEnergy()-41,48	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..41.48.1
481 fBodyGyro-bandsEnergy()-49,56	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..49.56.1
482 fBodyGyro-bandsEnergy()-57,64	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..57.64.1
483 fBodyGyro-bandsEnergy()-1,16	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..1.16.1
484 fBodyGyro-bandsEnergy()-17,32	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..17.32.1
485 fBodyGyro-bandsEnergy()-33,48	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..33.48.1
486 fBodyGyro-bandsEnergy()-49,64	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..49.64.1
487 fBodyGyro-bandsEnergy()-1,24	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..1.24.1
488 fBodyGyro-bandsEnergy()-25,48	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..25.48.1
489 fBodyGyro-bandsEnergy()-1,8	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..1.8.2
490 fBodyGyro-bandsEnergy()-9,16	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..9.16.2
491 fBodyGyro-bandsEnergy()-17,24	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..17.24.2
492 fBodyGyro-bandsEnergy()-25,32	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..25.32.2
493 fBodyGyro-bandsEnergy()-33,40	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..33.40.2
494 fBodyGyro-bandsEnergy()-41,48	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..41.48.2
495 fBodyGyro-bandsEnergy()-49,56	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..49.56.2
496 fBodyGyro-bandsEnergy()-57,64	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..57.64.2
497 fBodyGyro-bandsEnergy()-1,16	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..1.16.2
498 fBodyGyro-bandsEnergy()-17,32	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..17.32.2
499 fBodyGyro-bandsEnergy()-33,48	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..33.48.2
500 fBodyGyro-bandsEnergy()-49,64	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..49.64.2
501 fBodyGyro-bandsEnergy()-1,24	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..1.24.2
502 fBodyGyro-bandsEnergy()-25,48	==>	FrequencyDomainBodyAngularVelocityEnergyOfFrequencyInterval..25.48.2
503 fBodyAccMag-mean()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsMeanValue
504 fBodyAccMag-std()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsStandardDeviation
505 fBodyAccMag-mad()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsMedianAbsoluteDeviation.
506 fBodyAccMag-max()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsLargestValueInArray
507 fBodyAccMag-min()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsSmallestValueInArray
508 fBodyAccMag-sma()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsSignalMagnitudeArea
509 fBodyAccMag-energy()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsEnergyMeasure
510 fBodyAccMag-iqr()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsInterquartileRange.
511 fBodyAccMag-entropy()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsSignalEntropy
512 fBodyAccMag-maxInds	==>	FrequencyDomainBodyAccelerationMagnitudeSignals.maxInds
513 fBodyAccMag-meanFreq()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsWeightedAverageOfFequencyComponentsForMeanFrequency
514 fBodyAccMag-skewness()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsSkewness
515 fBodyAccMag-kurtosis()	==>	FrequencyDomainBodyAccelerationMagnitudeSignalsKurtosis
516 fBodyBodyAccJerkMag-mean()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsMeanValue
517 fBodyBodyAccJerkMag-std()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsStandardDeviation
518 fBodyBodyAccJerkMag-mad()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsMedianAbsoluteDeviation.
519 fBodyBodyAccJerkMag-max()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsLargestValueInArray
520 fBodyBodyAccJerkMag-min()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsSmallestValueInArray
521 fBodyBodyAccJerkMag-sma()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsSignalMagnitudeArea
522 fBodyBodyAccJerkMag-energy()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsEnergyMeasure
523 fBodyBodyAccJerkMag-iqr()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsInterquartileRange.
524 fBodyBodyAccJerkMag-entropy()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsSignalEntropy
525 fBodyBodyAccJerkMag-maxInds	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignals.maxInds
526 fBodyBodyAccJerkMag-meanFreq()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsWeightedAverageOfFequencyComponentsForMeanFrequency
527 fBodyBodyAccJerkMag-skewness()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsSkewness
528 fBodyBodyAccJerkMag-kurtosis()	==>	FrequencyDomainBodyBodyAccelerationJerkMagnitudeSignalsKurtosis
529 fBodyBodyGyroMag-mean()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsMeanValue
530 fBodyBodyGyroMag-std()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsStandardDeviation
531 fBodyBodyGyroMag-mad()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsMedianAbsoluteDeviation.
532 fBodyBodyGyroMag-max()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsLargestValueInArray
533 fBodyBodyGyroMag-min()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsSmallestValueInArray
534 fBodyBodyGyroMag-sma()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsSignalMagnitudeArea
535 fBodyBodyGyroMag-energy()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsEnergyMeasure
536 fBodyBodyGyroMag-iqr()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsInterquartileRange.
537 fBodyBodyGyroMag-entropy()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsSignalEntropy
538 fBodyBodyGyroMag-maxInds	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignals.maxInds
539 fBodyBodyGyroMag-meanFreq()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsWeightedAverageOfFequencyComponentsForMeanFrequency
540 fBodyBodyGyroMag-skewness()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsSkewness
541 fBodyBodyGyroMag-kurtosis()	==>	FrequencyDomainBodyBodyAngularVelocityMagnitudeSignalsKurtosis
542 fBodyBodyGyroJerkMag-mean()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsMeanValue
543 fBodyBodyGyroJerkMag-std()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsStandardDeviation
544 fBodyBodyGyroJerkMag-mad()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsMedianAbsoluteDeviation.
545 fBodyBodyGyroJerkMag-max()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsLargestValueInArray
546 fBodyBodyGyroJerkMag-min()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsSmallestValueInArray
547 fBodyBodyGyroJerkMag-sma()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsSignalMagnitudeArea
548 fBodyBodyGyroJerkMag-energy()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsEnergyMeasure
549 fBodyBodyGyroJerkMag-iqr()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsInterquartileRange.
550 fBodyBodyGyroJerkMag-entropy()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsSignalEntropy
551 fBodyBodyGyroJerkMag-maxInds	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignals.maxInds
552 fBodyBodyGyroJerkMag-meanFreq()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsWeightedAverageOfFequencyComponentsForMeanFrequency
553 fBodyBodyGyroJerkMag-skewness()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsSkewness
554 fBodyBodyGyroJerkMag-kurtosis()	==>	FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeSignalsKurtosis
555 angle(tBodyAccMean,gravity)	==>	angle.TimeDomainBodyAccelerationMean.gravity.
556 angle(tBodyAccJerkMean),gravityMean)	==>	angle.TimeDomainBodyAccelerationJerkMean..gravityMean.
557 angle(tBodyGyroMean,gravityMean)	==>	angle.TimeDomainBodyAngularVelocityMean.gravityMean.
558 angle(tBodyGyroJerkMean,gravityMean)	==>	angle.TimeDomainBodyAngularVelocityJerkMean.gravityMean.
559 angle(X,gravityMean)	==>	angle.X.gravityMean.
560 angle(Y,gravityMean)	==>	angle.Y.gravityMean.
561 angle(Z,gravityMean)	==>	angle.Z.gravityMean.


