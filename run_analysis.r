##Getting and Cleaning Data week 4 Project 
##You should create one R script called run_analysis.R that does the following.

##1. Merges the training and the test sets to create one data set.
##2. Extracts only the measurements on the mean and standard deviation for each measurement.
##3. Uses descriptive activity names to name the activities in the data set
##4. Appropriately labels the data set with descriptive variable names.
##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 #set working directory 

setwd("/Users/jakefalbo/Desktop/Coursera/Getting and Cleaning Data/Wk4_Project/UCI HAR Dataset")

##read each necesssary file into a vector 
 activityLabels <- read.table("activity_labels.txt")
features <- read.table("features.txt")


subject_test <- read.table("test/subject_test.txt")
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")

subject_train <- read.table("train/subject_train.txt")
x_train <- read.table("train/x_train.txt")
y_train <- read.table("train/y_train.txt")


#combine the x_test and x_train datasets 
df_x <- rbind(x_test, x_train)

#combine the y_test and y_train datasets 
df_y <- rbind(y_train, y_test)

#combine subject_train and subject_test 
df_sub <- rbind(subject_train, subject_test)

## subset only features that I am interested in "std" and "mean"
my_features <- grep("std|mean", features[, 2])

#subset the desired data
df_x <- df_x[, my_features]

#change the column names 
names(df_x) <- features[my_features, 2]

#change the activity names 
df_y[ , 1] <- activityLabels[df_y[, 1], 2]
names(df_y) <- "activity"

names(df_sub) <- "subject"

# create a singe data frame 
data_total <- cbind(df_sub, df_y, df_x)

###From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
sub_activity_mean <-aggregate(. ~subject + activity, data_total, mean)

write.table(sub_activity_mean, "averages.txt", row.names = FALSE)
