---
title: "README.md"
author: "Chuck Caldwell"
date: "12/10/2020"
output: html_document
---

# GettingAndCleaningData
## Coursera JHU Getting and Cleaning Data Course Project

The purpose of this project is to collect and prepare data that can be used for
later analysis. The "raw" data for this project represents data collected from
sensors from Samsung Galaxy S II smartphones worn by 30 participants while
engaged in six activities. For more information, see README.txt in this repo. 

### Requirements:
##### Create an R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Methodology:
1. Prior to reading in measurement data, determine the descriptive names for activities and measurement variables
2. Construct the test data set by reading and merging the subjects, activities, and measurements data files in the test subfolder
    a. Apply appropriate column names using the names determined above for measures
        i. When labels are applied to the column names, parentheses and hyphens are automatically converted to periods (dots)
    b. Combine columns into a single dataset (test)
3. Construct the train data set in the same manner
4. Combine (by rows) of test and train into a single dataset
    a. (Optional) Arrange combined data by subject and activity
    b. (Optional) Convert subject to a factor
5. Use regular expressions to determine a logical vector of columns to keep
    a. Keep first two columns: subject, activity
    b. Keep mean measures: labels originally contain -mean()
        i. Do not keep meanFreq measures: labels originally contain -meanFreq()
    c. Keep standard deviation measures: labels originally contain -std()
6. Subset data based on logical vector from previous step
7. Assign descriptive names (determined in step 1) to activities
8. (Optional) Clean-up variable names removing dots and preserving camel case
9. (Optional) Clean-up R environment to free memory
10. Summarize data to find average of each measure for each subject/activity
    a. Group by subject and activity
    b. Summarize all measures by mean
11. Write final table to a text file

### Output:
Assuming the raw data files are in the working directory, the run_analysis.R script ultimately creates a flat file named final.txt that satisfies requirement 5 above. This file contains a tidy dataset with 180 observations (rows) of 68 variables (columns). Each row represents the average (mean) of the 66 raw mean and standard deviation measures for a specific participant (subject) and activity. Subject and activity are factors and all other columns are numeric. Subject is identified by a number (1-30) and activity is identified by name (level), as described in activity_labels.txt (albeit lowercase). The reamining columns are named as described in features.txt with parentheses and hyphens removed and maintaining camel case. For example, the measurement originally labeled "tBodyAcc-mean()-X" is renamed "tBodyAccMeanX" in final.txt.