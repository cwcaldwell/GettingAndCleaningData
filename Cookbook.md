---
title: "Cookbook"
author: "Chuck Caldwell"
date: "12/10/2020"
output: html_document
---

# GettingAndCleaningData
## Coursera JHU Getting and Cleaning Data Course Project Cookbook

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
- features_info.txt: General information about the measurement variables

#### Additional Notes:
- The raw data files above were copied to the working directory where the script was run.
- The corresponding files in the test and train subfolders contain the same data for different subsets of participants
    - Train data contains 70% of participants (21)
    - Test data contains 30% of participants (9)
        - Subjects 2, 4, 9, 10, 12, 13, 18, 20, and 24 are in the test group
- The subject (participant) id and activity id for each row of train and test measurements data are contained in separate files
- Data files have no headers
    - Names for the 561 measurement variables in order are contained in features.txt
    - Mean mesurement variable names contain the string "mean()"
    - Standard deviation measurement variable names contain the string "std()"
        - There are 33 mean measurements and 33 standard deviation measurements
- Descriptive names for the activity levels are contained in activity_labels.txt

### Output:
##### The ultimaate output is a tidy dataset contained in a flat text file named final.txt.
- The dimensions of the final dataset is 180 observations (rows) of 68 variables
    - Each variable forms a column: subject, activity, and 66 measures
    _ Each observation forms a row: the average of 66 mean and standard deviation measurements for a particular subject engaged in a specific activity

#### Fields:
- subject: factor - the participant, identified by a number 1-30
- activity: factor - the activity, indicated by the descriptive name
    - levels: walking, walking_upstairs, walking_downstairs, sitting, standing, laying
- tBodyAccMeanX: float - the average of the tBodyAcc-mean()-X measurements for that subject and activity
- tBodyAccStdX: float - the average of the tBodyAcc-std()-X measurements for that subject and activity
    - Remaining fields are similar to the the two above

#### Additional Notes:
- The descriptive names for measurement variables are derived from those in features.txt.
- The dataset satisfies the condition for tidy data as decibed above; however, the 66 meaurement variables could be arguably be gathered into key-value pairs. For example, each measure has X, Y, Z and Mag values as well as mean and standard deviation values.