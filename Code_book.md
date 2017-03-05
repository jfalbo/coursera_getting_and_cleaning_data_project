##Code Book 

in the run_analysis.r file they are several objects created by just reading the raw data. These objects are:  
activityLabels
feature
subject_test
x_test
y_test
subject_train
x_train
y_train 

Those objects created via the raw data are processed and subsetted to create data_total. 

data_total is the combined and subsetted data frame. 

sub_activity_mean is the data frame created by finding the average variable of each subject performing each activity. sub_activity_mean was used to create the "averages.txt" data file. 
