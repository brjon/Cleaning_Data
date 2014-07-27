Smartphone Data
=============

Processing and tidying of Human Activity Recognition Using Smartphones Dataset for downstream analysis
Version 1.0
Author : brj

The dataset includes the following files:
=========================================

- 'README.md'
- 'run_analysis.R' - the R script which processes the data
- 'data codebook.md' - explanation of source of data, processing done by script  
 
Outline of Code in run_Analysis.R:
========

This script processes data collected from the accelerometers from the Samsung Galaxy S smartphone, making the data "tidy" for further analysis. To do this, the script :

1.  Merges the training and the test sets to create one data set
2.  Extracts only the measurements on the mean and standard deviation for each measurement
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names
5.  Creates a second, independent tidy data set with the average of each variable for each activity and each subject


The inputs for the script are: 
1.  'features.txt': List of all features- used for variable descriptions
2.  'activity_labels.txt': Links the class labels (activity id number) with their activity name.
3.  'train/X_train.txt': Training set.
4.  'train/y_train.txt': Training labels.
5.  'test/X_test.txt': Test set.
6.  'test/y_test.txt': Test labels.
7.  'train/subject_train.txt' : identifier for subject observed
8.  'test/subject_test.txt'   : identifier for subject observed

The outputs for the script are:

A data frame written to a text file, '/UCI HAR Dataset/summData.txt'. The file can be read into R using :
```
    read.table("./UCI HAR Dataset/summData.txt",sep="",header=T)
```

Notes: 
1. The subjects and activities (labels) and sets (data variables) are only linked by order- ie by row number. So the         relative order between these sources should be preserved
2. The above directories are relative to the <working directory>'/UCI HAR Dataset/' . When extracting the data from the      zip file, the extract can be done to the working directory and the structure should be recreated
3. Packages required- base package




License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

