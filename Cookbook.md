# GettingAndCleaningData
Coursera JHU Getting and Cleaning Data Course Project

The purpose of this project is to collect and prepare data that can be used for
later analysis. The raw data for this project represents data collected from
accelerometers from Samsung Galaxy S smartphones worn by 30 participants while
engaged in six activities. For more information, see README.txt in this repo. 

This document describes the data used for this project. For more information
on the script, see README.md in this repo.

The raw data was in a zip file linked to the course website and extracted to
the working directory for the script. Located in separate subfolders, train
data covers 70% of participants (7352 rows) and test data covers the remaining 
30% (2947 rows). Each dataset is further split into three flat text files. 
X_train.txt and X_test.txt each contains 561 measures (variables/columns) for
each observation/row. subject_train.txt and y_train.txt (and subject_test.txt 
and y_test.test) capture the participant and activity associated with each row.

Related to the two measurements data (X_*.txt) files, features.txt identifies 
the 561 variable names for the column. Likewise, activity_labels.txt identifies 
how the six activities are coded. In the final dataset, variable names for 
extracted mean and standard deviation measures were slighly modified to remove
parentheses and hyphens; activity labels were converted to lower case.

