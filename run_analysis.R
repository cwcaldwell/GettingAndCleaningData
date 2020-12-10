# script should be saved into the folder containing raw data files
library(dplyr)

# get the variable (measures) and activity labels (names)
varLabels <- read.table("features.txt", row.names = 1,
                       col.names = c("","measure"))
actLabels <- read.table("activity_labels.txt", row.names = 1,
                        col.names = c("", "action"))

# load/construct the test dataset
subj <- read.table("test\\subject_test.txt", col.names = c("subject"))
act <- read.table("test\\y_test.txt", colClasses = "factor", 
                  col.names = c("activity"))
meas <- read.table("test\\X_test.txt", col.names = varLabels$measure)
test <- cbind(subj, act, meas)

# load/construct the train dataset
subj <- read.table("train\\subject_train.txt", col.names = c("subject"))
act <- read.table("train\\y_train.txt", colClasses = "factor", 
                  col.names = c("activity"))
meas <- read.table("train\\X_train.txt", col.names = varLabels$measure)
train <- cbind(subj, act, meas)

# combine into a single dataset (sort and convert subject to a factor)
data <- rbind(test, train) %>%
    arrange(subject, activity) %>%
    mutate(subject = as.factor(subject))

# determine the columns to keep (means and standard deviations)
keep <- grepl("subject|activity|mean[^F]|std", names(data))
# and subset the data accordingly
data <- data[, keep]

# apply descriptive names (levels) to activity factor
levels(data$activity) <- tolower(actLabels$action)

# clean-up variable names (remove periods and preserve camel case)
names(data) <- names(data) %>%
    sub("mean", "Mean", .) %>%
    sub("std", "Std", .) %>%
    gsub("\\.", "", .)

# clean up environment
rm(list = c("varLabels", "actLabels", "meas", "subj", "act", 
            "test", "train", "keep"))

# create dataset for submission
averages <- data %>%
    group_by(subject, activity) %>%
    summarize_all(mean)

# write text file for submission
write.table(averages, "final.txt", row.names = FALSE)