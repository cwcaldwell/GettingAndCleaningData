---
title: "Codebook"
author: "Chuck Caldwell"
date: "12/10/2020"
output: html_document
---

# GettingAndCleaningData
## Coursera JHU Getting and Cleaning Data Course Project Codebook

The purpose of this project is to collect and prepare data that can be used for
later analysis. The "raw" data for this project represents data collected from
sensors from Samsung Galaxy S II smartphones worn by 30 participants while
engaged in six activities. For more information, see README.txt in this repo. 

### Raw Data:
##### The raw dataset includes the following files used in this project:
- train/X_train.txt: Training set (measurements) 7352 observations of 561 variables
- train/y_train.txt: Training labels (activity) 7352 observations of 1 variable
- train/subject_train.txt: Training subjects (participant) 7352 observations of 1 variable
- test/X_test.txt: Test set (measurements) 2947 observations of 561 variables
- test/y_test.txt: Test labels (activity) 2947 observations of 1 variable
- test/subject_test.txt: Test subjects (participant) 2947 observations of 1 variable
- activity_labels.txt: Descriptive names for activities (6)
- features.txt: Descriptive names for measurement variables (561)
- README.txt: General information about the raw dataset
- features_info.txt: General information about the measurement variables (codebook below)

### Original codebook

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

#### Additional Notes:
- The raw data files above were copied to the working directory where the script was run.
- The corresponding files in the test and train subfolders contain the same data for different subsets of participants
    - Train data contains 70% of participants (21)
    - Test data contains 30% of participants (9)
        - Subjects 2, 4, 9, 10, 12, 13, 18, 20, and 24 are in the test group
- The subject (participant) id and activity id for each row of train and test measurements data are contained in separate files
- Data files have no headers
    - Names for the 561 measurement variables (in the test and training set files) are contained (in order) in features.txt. As noted:
        - Mean mesurement variable names contain the string "mean()" (33)
        - Standard deviation measurement variable names contain the string "std()" (33)
- Descriptive names for the activity levels are contained in activity_labels.txt

### Output:
##### The ultimaate output is a tidy dataset contained in a flat text file named final.txt.
- The dimensions of the final dataset is 180 observations (rows) of 68 variables
    - Each variable forms a column: subject, activity, and 66 measures
    _ Each observation forms a row: the average of 66 mean and standard deviation measurements for a particular subject engaged in a specific activity

#### Variables:
- subject: factor - the participant, identified by a number 1-30
- activity: factor - the activity, indicated by the descriptive name
    - levels: walking, walking_upstairs, walking_downstairs, sitting, standing, laying
- All other variables are floats representing the average (mean) for the specified values for the specific subject and activity
    - tBodyAccMeanX
    - tBodyAccMeanY
    - tBodyAccMeanZ
    - tBodyAccStdX
    - tBodyAccStdY
    - tBodyAccStdZ
    - tGravityAccMeanX
    - tGravityAccMeanY
    - tGravityAccMeanZ
    - tGravityAccStdX
    - tGravityAccStdY
    - tGravityAccStdZ
    - tBodyAccJerkMeanX
    - tBodyAccJerkMeanY
    - tBodyAccJerkMeanZ
    - tBodyAccJerkStdX
    - tBodyAccJerkStdY
    - tBodyAccJerkStdZ
    - tBodyGyroMeanX
    - tBodyGyroMeanY
    - tBodyGyroMeanZ
    - tBodyGyroStdX
    - tBodyGyroStdY
    - tBodyGyroStdZ
    - tBodyGyroJerkMeanX
    - tBodyGyroJerkMeanY
    - tBodyGyroJerkMeanZ
    - tBodyGyroJerkStdX
    - tBodyGyroJerkStdY
    - tBodyGyroJerkStdZ
    - tBodyAccMagMean
    - tBodyAccMagStd
    - tGravityAccMagMean
    - tGravityAccMagStd
    - tBodyAccJerkMagMean
    - tBodyAccJerkMagStd
    - tBodyGyroMagMean
    - tBodyGyroMagStd
    - tBodyGyroJerkMagMean
    - tBodyGyroJerkMagStd
    - fBodyAccMeanX
    - fBodyAccMeanY
    - fBodyAccMeanZ
    - fBodyAccStdX
    - fBodyAccStdY
    - fBodyAccStdZ
    - fBodyAccJerkMeanX
    - fBodyAccJerkMeanY
    - fBodyAccJerkMeanZ
    - fBodyAccJerkStdX
    - fBodyAccJerkStdY
    - fBodyAccJerkStdZ
    - fBodyGyroMeanX
    - fBodyGyroMeanY
    - fBodyGyroMeanZ
    - fBodyGyroStdX
    - fBodyGyroStdY
    - fBodyGyroStdZ
    - fBodyAccMagMean
    - fBodyAccMagStd
    - fBodyBodyAccJerkMagMean
    - fBodyBodyAccJerkMagStd
    - fBodyBodyGyroMagMean
    - fBodyBodyGyroMagStd
    - fBodyBodyGyroJerkMagMean
    - fBodyBodyGyroJerkMagStd

#### Additional Notes:
- The descriptive names for measurement variables are derived from those in features.txt, removing parentheses and hyphens and presering camel case
- Only mean and standard deviation measures were kept.
- The abbreviations Acc (accelerometer), Gyro (gyroscope) and Mag (magnitude) were retained to limit variable name length.