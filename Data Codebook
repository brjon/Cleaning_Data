Tidy Data Set 
=================

## Data source- :

The tidy data set is derived from the original data. The original data codebook and licence is included below. The original data can be found at URL 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The licence for the original data is included at the bottom


## Derivation of tidy data:

The following methodology sets out how the tidy data is derived from the original data:

## Files used and their description:

    1.  'features.txt': List of all features- used for variable descriptions
    2.  'activity_labels.txt': Links the class labels (activity id number) with their activity name.
    3.  'train/X_train.txt': Training set.  observations of 581 variables
    4.  'train/y_train.txt': Training labels. activity code for X_train.txt in same row order
    5.  'test/X_test.txt': Test set.   observations of 581 variables
    6.  'test/y_test.txt': Test labels. activity code for Y_train.txt in same row order
    7.  'train/subject_train.txt' : identifier for subject observed for X_train.txt in same row order
    8.  'test/subject_test.txt'   : identifier for subject observed for Y_train.txt in same row order
    
## Data processing applied to files:

1. Append the Training set and Test set observations, by combining row-wise. The number and order of columns is the same for each set, so they can be combined by a simple append operation
2. Append the column names from 'features.txt' to each column as column headers
3. Filter columns which have "mean" or "std" as the measure for that variable- the items of interest required for downstream analyis (as per the project specification).
4. The original names of the filtered column headers have been changed as follows:
    1. Invalid characters replaced : 
    * '-'  was changed to "_"
    * '(' and ')' were changed to blanks ''
    2.'BodyBody' was change to 'Body' - the duplication seems to be an error in the original labelling
    3. the suffixes 't' and ;f; were changed to 'time' and 'freq' to be more descriptive
5. Subject data- combined  : The 'subject_train' and 'subject_test' data (one column) were appended.
6. Activity data- combined :The 'y_train" and 'y_test' data (one column) were appended.
7. The combined Subject and combined Activity columns were then combined (as first and second columns respectively) to the combined filtered data (581) columns
8. The Activity dimension data was redefined as a factor, with the labels for each level mapped using the 'activity_lables.txt' mapping    
9. The combined data was then grouped by unique groups of 'activity' and 'subject'. The measure calculated for each group was the mean of each variable

   
Columns In Output  
=================

The output has the following items:

1. activity
   Factor variable with numbers 1-6 and labels as follows:
    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING

2. subject
   numerical 1-30 representing an identifier code for each subject for which data was collected and observed
   
For the following, the value shown is the mean of the observations for the group in column 1 and 2
3.timeBodyAcc_mean_X
4	timeBodyAcc_mean_Y
5	timeBodyAcc_mean_Z
6	timeBodyAcc_std_X
7	timeBodyAcc_std_Y
8	timeBodyAcc_std_Z
9	tGravityAcc_mean_X
10	tGravityAcc_mean_Y
11	tGravityAcc_mean_Z
12	tGravityAcc_std_X
13	tGravityAcc_std_Y
14	tGravityAcc_std_Z
15	timeBodyAccJerk_mean_X
16	timeBodyAccJerk_mean_Y
17	timeBodyAccJerk_mean_Z
18	timeBodyAccJerk_std_X
19	timeBodyAccJerk_std_Y
20	timeBodyAccJerk_std_Z
21	timeBodyGyro_mean_X
22	timeBodyGyro_mean_Y
23	timeBodyGyro_mean_Z
24	timeBodyGyro_std_X
25	timeBodyGyro_std_Y
26	timeBodyGyro_std_Z
27	timeBodyGyroJerk_mean_X
28	timeBodyGyroJerk_mean_Y
29	timeBodyGyroJerk_mean_Z
30	timeBodyGyroJerk_std_X
31	timeBodyGyroJerk_std_Y
32	timeBodyGyroJerk_std_Z
33	timeBodyAccMag_mean
34	timeBodyAccMag_std
35	tGravityAccMag_mean
36	tGravityAccMag_std
37	timeBodyAccJerkMag_mean
38	timeBodyAccJerkMag_std
39	timeBodyGyroMag_mean
40	timeBodyGyroMag_std
41	timeBodyGyroJerkMag_mean
42	timeBodyGyroJerkMag_std
43	freqBodyAcc_mean_X
44	freqBodyAcc_mean_Y
45	freqBodyAcc_mean_Z
46	freqBodyAcc_std_X
47	freqBodyAcc_std_Y
48	freqBodyAcc_std_Z
49	freqBodyAcc_meanFreq_X
50	freqBodyAcc_meanFreq_Y
51	freqBodyAcc_meanFreq_Z
52	freqBodyAccJerk_mean_X
53	freqBodyAccJerk_mean_Y
54	freqBodyAccJerk_mean_Z
55	freqBodyAccJerk_std_X
56	freqBodyAccJerk_std_Y
57	freqBodyAccJerk_std_Z
58	freqBodyAccJerk_meanFreq_X
59	freqBodyAccJerk_meanFreq_Y
60	freqBodyAccJerk_meanFreq_Z
61	freqBodyGyro_mean_X
62	freqBodyGyro_mean_Y
63	freqBodyGyro_mean_Z
64	freqBodyGyro_std_X
65	freqBodyGyro_std_Y
66	freqBodyGyro_std_Z
67	freqBodyGyro_meanFreq_X
68	freqBodyGyro_meanFreq_Y
69	freqBodyGyro_meanFreq_Z
70	freqBodyAccMag_mean
71	freqBodyAccMag_std
72	freqBodyAccMag_meanFreq
73	freqBodyAccJerkMag_mean
74	freqBodyAccJerkMag_std
75	freqBodyAccJerkMag_meanFreq
76	freqBodyGyroMag_mean
77	freqBodyGyroMag_std
78	freqBodyGyroMag_meanFreq
79	freqBodyGyroJerkMag_mean
80	freqBodyGyroJerkMag_std
81	freqBodyGyroJerkMag_meanFreq
   

ORIGINAL DATA-CODEBOOK

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

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.




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
