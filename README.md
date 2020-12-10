# GettingAndCleaningData
Coursera JHU Getting and Cleaning Data Course Project

The purpose of this project is to collect and prepare data that can be used for
later analysis. The raw data for this project represents data collected from
accelerometers from Samsung Galaxy S smartphones worn by 30 participants while
engaged in six activities. For more information, see README.txt in this repo. 

Requirements:
    Create an R script called run_analysis.R that does the following:
        1. Merges the training and the test sets to create one data set.
        2. Extracts only the measurements on the mean and standard deviation 
        for each measurement.
        3. Uses descriptive activity names to name the activities in the data 
        set.
        4. Appropriately labels the data set with descriptive variable names.
        5. From the data set in step 4, creates a second, independent tidy data 
        set with the average of each variable for each activity and each subject.

Methodology:
    1. Prior to reading in measurement data, determine the variable and activity
    labels
    2. Construct the test data set by reading in the subjects, activities, and
    measurements files
        a. Apply appropriate column names using the variable labels determined
        above for measures
        b. Combine columns into a single dataset (test)
    3. Construct the train data set in the same manner
    4. Combine rows of test and train into a single dataset
        a. (Optional) Arrange combined data by subject and activity
        b. (Optional) Convert subject to a factor
    5. Use regular expressions to determine logical vector of columns to keep
        a. Keep first two columns: subject, activity
        b. Keep mean measures: labels contain -mean()
            i. Do not keep meanFreq measures
        c. Keep standard deviation measures: labels contain -std()
    6. Subset data based on logical vector from previous step
    7. Assign descriptive names (determined in step 1) to activities
    8. (Optional) Clean-up variable names removing parentheses and hyphens
    9. (Optional) Clean-up R environment to free memory
    10. Summarize data to find average of each measure for each subject/activity
        a. Group by subject and activity
        b. Summarize all measures by mean
    11. Write final table to a text file