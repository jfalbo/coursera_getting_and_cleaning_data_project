# coursera_getting_and_cleaning_data_project
Coursera Week 4 Getting and Cleaning Data Project 
#Getting and Cleaning Data Course Project 

This repository contains the R code and files for the Getting and Cleaning Data course project offered by courser. 

The original data files can be found at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This project required several steps to process the raw data from the link above. They are: 

1. Download and read the “training” and “test” data sets into R. Then merge them into a single data set. 

2. Subset the data set for only the desired measurements. In this case we were looking for the mean and the standard deviation. 

3. Relabel the activity names in the data set to better describe the activities performed by the test subjects. 

4. Label the data set with variable names. 

5. From the data resulting from the steps above create a new data set the lists the the average value for each subject performing each various activity. This additional data is stored saved in the “averages.txt” file in this repo. 
