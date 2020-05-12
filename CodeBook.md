---
title: "README"
author: "Carlos Schuler"
date: "5/11/2020"
output: html_document
---


# Code Book for "Getting and Cleaning Data Course Project"

This **Code Book** lists all the variables and summaries calculated, along with 
units, and any other relevant information.

## Data source and Output

The script *run_analysis.R* downloads data from the following location:

><https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

and performs subsetting and averaging operations to produce the data  in the file
*tidyData.txt*.

## Variables in *tidydata.txt*

The information provided for the original dataset is reproduced in a following
section below.

The file *tidydata.txt* contains space-separated tabular data, with column labels
as the header in the first row.

* The variables in *tidydata.txt* have a one-to one correspondence to the variables
in the source dataset, as per the table below. 
* Per the original dataset description,
all "feature" (measured) variables are normalized and bounded within [-1,1].

| *Source DataSet* | *"allData" internal data frame* | *TidyData dataset* |
|:---------------------------:|:-----------------------------------------------:|:---------------------------------------------------:|
| Subject | Subject | Subject |
| ActivityCode | ActivityCode | Activity |
| tBodyAcc-mean()-X | TimeBodyAccelerationMeanX | MeanTimeBodyAccelerationMeanX |
| tBodyAcc-mean()-Y | TimeBodyAccelerationMeanY | MeanTimeBodyAccelerationMeanY |
| tBodyAcc-mean()-Z | TimeBodyAccelerationMeanZ | MeanTimeBodyAccelerationMeanZ |
| tBodyAcc-std()-X | TimeBodyAccelerationStdevX | MeanTimeBodyAccelerationStdevX |
| tBodyAcc-std()-Y | TimeBodyAccelerationStdevY | MeanTimeBodyAccelerationStdevY |
| tBodyAcc-std()-Z | TimeBodyAccelerationStdevZ | MeanTimeBodyAccelerationStdevZ |
| tGravityAcc-mean()-X | TimeGravityAccelerationMeanX | MeanTimeGravityAccelerationMeanX |
| tGravityAcc-mean()-Y | TimeGravityAccelerationMeanY | MeanTimeGravityAccelerationMeanY |
| tGravityAcc-mean()-Z | TimeGravityAccelerationMeanZ | MeanTimeGravityAccelerationMeanZ |
| tGravityAcc-std()-X | TimeGravityAccelerationStdevX | MeanTimeGravityAccelerationStdevX |
| tGravityAcc-std()-Y | TimeGravityAccelerationStdevY | MeanTimeGravityAccelerationStdevY |
| tGravityAcc-std()-Z | TimeGravityAccelerationStdevZ | MeanTimeGravityAccelerationStdevZ |
| tBodyAccJerk-mean()-X | TimeBodyAccelerationJerkMeanX | MeanTimeBodyAccelerationJerkMeanX |
| tBodyAccJerk-mean()-Y | TimeBodyAccelerationJerkMeanY | MeanTimeBodyAccelerationJerkMeanY |
| tBodyAccJerk-mean()-Z | TimeBodyAccelerationJerkMeanZ | MeanTimeBodyAccelerationJerkMeanZ |
| tBodyAccJerk-std()-X | TimeBodyAccelerationJerkStdevX | MeanTimeBodyAccelerationJerkStdevX |
| tBodyAccJerk-std()-Y | TimeBodyAccelerationJerkStdevY | MeanTimeBodyAccelerationJerkStdevY |
| tBodyAccJerk-std()-Z | TimeBodyAccelerationJerkStdevZ | MeanTimeBodyAccelerationJerkStdevZ |
| tBodyGyro-mean()-X | TimeBodyGyroscopeMeanX | MeanTimeBodyGyroscopeMeanX |
| tBodyGyro-mean()-Y | TimeBodyGyroscopeMeanY | MeanTimeBodyGyroscopeMeanY |
| tBodyGyro-mean()-Z | TimeBodyGyroscopeMeanZ | MeanTimeBodyGyroscopeMeanZ |
| tBodyGyro-std()-X | TimeBodyGyroscopeStdevX | MeanTimeBodyGyroscopeStdevX |
| tBodyGyro-std()-Y | TimeBodyGyroscopeStdevY | MeanTimeBodyGyroscopeStdevY |
| tBodyGyro-std()-Z | TimeBodyGyroscopeStdevZ | MeanTimeBodyGyroscopeStdevZ |
| tBodyGyroJerk-mean()-X | TimeBodyGyroscopeJerkMeanX | MeanTimeBodyGyroscopeJerkMeanX |
| tBodyGyroJerk-mean()-Y | TimeBodyGyroscopeJerkMeanY | MeanTimeBodyGyroscopeJerkMeanY |
| tBodyGyroJerk-mean()-Z | TimeBodyGyroscopeJerkMeanZ | MeanTimeBodyGyroscopeJerkMeanZ |
| tBodyGyroJerk-std()-X | TimeBodyGyroscopeJerkStdevX | MeanTimeBodyGyroscopeJerkStdevX |
| tBodyGyroJerk-std()-Y | TimeBodyGyroscopeJerkStdevY | MeanTimeBodyGyroscopeJerkStdevY |
| tBodyGyroJerk-std()-Z | TimeBodyGyroscopeJerkStdevZ | MeanTimeBodyGyroscopeJerkStdevZ |
| tBodyAccMag-mean() | TimeBodyAccelerationMagnitudeMean | MeanTimeBodyAccelerationMagnitudeMean |
| tBodyAccMag-std() | TimeBodyAccelerationMagnitudeStdev | MeanTimeBodyAccelerationMagnitudeStdev |
| tGravityAccMag-mean() | TimeGravityAccelerationMagnitudeMean | MeanTimeGravityAccelerationMagnitudeMean |
| tGravityAccMag-std() | TimeGravityAccelerationMagnitudeStdev | MeanTimeGravityAccelerationMagnitudeStdev |
| tBodyAccJerkMag-mean() | TimeBodyAccelerationJerkMagnitudeMean | MeanTimeBodyAccelerationJerkMagnitudeMean |
| tBodyAccJerkMag-std() | TimeBodyAccelerationJerkMagnitudeStdev | MeanTimeBodyAccelerationJerkMagnitudeStdev |
| tBodyGyroMag-mean() | TimeBodyGyroscopeMagnitudeMean | MeanTimeBodyGyroscopeMagnitudeMean |
| tBodyGyroMag-std() | TimeBodyGyroscopeMagnitudeStdev | MeanTimeBodyGyroscopeMagnitudeStdev |
| tBodyGyroJerkMag-mean() | TimeBodyGyroscopeJerkMagnitudeMean | MeanTimeBodyGyroscopeJerkMagnitudeMean |
| tBodyGyroJerkMag-std() | TimeBodyGyroscopeJerkMagnitudeStdev | MeanTimeBodyGyroscopeJerkMagnitudeStdev |
| fBodyAcc-mean()-X | FrequencyBodyAccelerationMeanX | MeanFrequencyBodyAccelerationMeanX |
| fBodyAcc-mean()-Y | FrequencyBodyAccelerationMeanY | MeanFrequencyBodyAccelerationMeanY |
| fBodyAcc-mean()-Z | FrequencyBodyAccelerationMeanZ | MeanFrequencyBodyAccelerationMeanZ |
| fBodyAcc-std()-X | FrequencyBodyAccelerationStdevX | MeanFrequencyBodyAccelerationStdevX |
| fBodyAcc-std()-Y | FrequencyBodyAccelerationStdevY | MeanFrequencyBodyAccelerationStdevY |
| fBodyAcc-std()-Z | FrequencyBodyAccelerationStdevZ | MeanFrequencyBodyAccelerationStdevZ |
| fBodyAccJerk-mean()-X | FrequencyBodyAccelerationJerkMeanX | MeanFrequencyBodyAccelerationJerkMeanX |
| fBodyAccJerk-mean()-Y | FrequencyBodyAccelerationJerkMeanY | MeanFrequencyBodyAccelerationJerkMeanY |
| fBodyAccJerk-mean()-Z | FrequencyBodyAccelerationJerkMeanZ | MeanFrequencyBodyAccelerationJerkMeanZ |
| fBodyAccJerk-std()-X | FrequencyBodyAccelerationJerkStdevX | MeanFrequencyBodyAccelerationJerkStdevX |
| fBodyAccJerk-std()-Y | FrequencyBodyAccelerationJerkStdevY | MeanFrequencyBodyAccelerationJerkStdevY |
| fBodyAccJerk-std()-Z | FrequencyBodyAccelerationJerkStdevZ | MeanFrequencyBodyAccelerationJerkStdevZ |
| fBodyGyro-mean()-X | FrequencyBodyGyroscopeMeanX | MeanFrequencyBodyGyroscopeMeanX |
| fBodyGyro-mean()-Y | FrequencyBodyGyroscopeMeanY | MeanFrequencyBodyGyroscopeMeanY |
| fBodyGyro-mean()-Z | FrequencyBodyGyroscopeMeanZ | MeanFrequencyBodyGyroscopeMeanZ |
| fBodyGyro-std()-X | FrequencyBodyGyroscopeStdevX | MeanFrequencyBodyGyroscopeStdevX |
| fBodyGyro-std()-Y | FrequencyBodyGyroscopeStdevY | MeanFrequencyBodyGyroscopeStdevY |
| fBodyGyro-std()-Z | FrequencyBodyGyroscopeStdevZ | MeanFrequencyBodyGyroscopeStdevZ |
| fBodyAccMag-mean() | FrequencyBodyAccelerationMagnitudeMean | MeanFrequencyBodyAccelerationMagnitudeMean |
| fBodyAccMag-std() | FrequencyBodyAccelerationMagnitudeStdev | MeanFrequencyBodyAccelerationMagnitudeStdev |
| fBodyBodyAccJerkMag-mean() | FrequencyBodyBodyAccelerationJerkMagnitudeMean | MeanFrequencyBodyBodyAccelerationJerkMagnitudeMean |
| fBodyBodyAccJerkMag-std() | FrequencyBodyBodyAccelerationJerkMagnitudeStdev | MeanFrequencyBodyBodyAccelerationJerkMagnitudeStdev |
| fBodyBodyGyroMag-mean() | FrequencyBodyBodyGyroscopeMagnitudeMean | MeanFrequencyBodyBodyGyroscopeMagnitudeMean |
| fBodyBodyGyroMag-std() | FrequencyBodyBodyGyroscopeMagnitudeStdev | MeanFrequencyBodyBodyGyroscopeMagnitudeStdev |
| fBodyBodyGyroJerkMag-mean() | FrequencyBodyBodyGyroscopeJerkMagnitudeMean | MeanFrequencyBodyBodyGyroscopeJerkMagnitudeMean |
| fBodyBodyGyroJerkMag-std() | FrequencyBodyBodyGyroscopeJerkMagnitudeStdev | MeanFrequencyBodyBodyGyroscopeJerkMagnitudeStdev |


## Data Transformations

* Data present in multiple input files for "Subject", "Activity" and "Feature",
for the "train" and "test" cohorts, is condensed into a single internal data frame, called
"allData".
* The data is subset so that only variables with the substrings "mean()" and "std()" in the original data set
are present in the final "allData" internal data frame and in the output *tidydata.txt*.
This is accomplished by subsetting the original data.
* Variable names from the original data set are transformed by the
following rules for better readability:

  * Replace leading "t"'s by "Time"
  * Replace leading "f"'s by "Frequency"
  * Replace the string "Acc" by "Acceleration"
  * Replace the string "Gyro" by "Gyroscope"
  * Replace the string "jerk" by "Jerk"
  * Replace the string "Mag" by "Magnitude"
  * Replace the string "mean()" by "Mean"
  * Replace the string "std()" by "Stdev"
  * Remove all dashes
  
* ActivityCodes from the original dataset are replaced by descriptive activity labels,
per the file *activity_labels.txt* in the source dataset. This is accomplished 
via a right-join operation.
* The prefix "Mean" is added to all column labels in *tidydata.txt* to emphasize
that this data corresponds to the mean of all observations for each subject and 
each activity.

## *run_analysis.R* internal variables

* *"activityLabels"*: data frame -  ActivityCode / Activity
* *"allActivities"*: data frame - condenses all "Activity" data 
* *"allData"*: data frame - condenses all data, later subset for mean() and std() data
* *"allFeatures"*: data frame - condenses all "Feature" data   
* *"allSubjects"*: data frame - condenses all "Subject" data      
* *"basePath"*: string - the base path for the unzipped source data
* *"cohortNames"*: character array - "test" and "train"
* *"columnLabels"*: character array - used to transform the column labels
* *"columnsSelected"*: integer array - used to subset the allData data frame
* *"cwd"*: character - current working directory
* *"dataDownloadDate"*: POSIXct - stores the date the source data was downloaded
* *"dataFolder"*: character - stores the name of the unzipped source data directory
* *"dateFile"*: character - name of the file where the download date is stored
* *"featureLabels"*: data frame - feature labels from the original dataset
* *"fp"*: character array - base paths for the "test" and "train" directories
* *"mygsub"*: function - gsub with function parameters in different order for piping compatibility
* *"testActivities"*: data frame - original "Activity" source data  for the test cohort
* *"testFeatures"*: data frame - original "Feature" source data for the test cohort
* *"testSubjects"*: data frame - original "Subject" source data  for the test cohort
* *"tidyData"*: data frame (tibbl) - final dataset, containing the average of all
mean() and std() "Features" from the original data set, for each "Subject" and "Activity"
* *"trainActivities"*: data frame - original "Activity" source data  for the train cohort
* *"trainFeatures"*: data frame - original "Feature" source data  for the train cohort
* *"trainSubjects"*: data frame - original "Subject" source data  for the train cohort 
* *"url"*: character - location of the source data     
* *"zipfile"*: character - name of the temporary downloaded zip file

----

## Original "README.txt" data documentation from <http://archive.ics.uci.edu>:


## Human Activity Recognition Using Smartphones Dataset, 

#### Version 1.0

#### Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

#### Smartlab - Non Linear Complex Systems Laboratory

#### DITEN - Universiti degli Studi di Genova.

#### Via Opera Pia 11A, I-16145, Genoa, Italy.

#### activityrecognition@smartlab.ws

#### www.smartlab.ws

\

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### For each record it is provided:


- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### The dataset includes the following files:


- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: <activityrecognition@smartlab.ws>

### License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

>[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

**Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.**
\
\

----

## Information provided in the file "features_info.txt"

### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

**tBodyAcc-XYZ**\
**tGravityAcc-XYZ**\
**tBodyAccJerk-XYZ**\
**tBodyGyro-XYZ**\
**tBodyGyroJerk-XYZ**\
**tBodyAccMag**\
**tGravityAccMag**\
**tBodyAccJerkMag**\
**tBodyGyroMag**\
**tBodyGyroJerkMag**\
**fBodyAcc-XYZ**\
**fBodyAccJerk-XYZ**\
**fBodyGyro-XYZ**\
**fBodyAccMag**\
**fBodyAccJerkMag**\
**fBodyGyroMag**\
**fBodyGyroJerkMag**\

The set of variables that were estimated from these signals are: 

**mean()**: Mean value\
**std()**: Standard deviation\
**mad()**: Median absolute deviation\
**max()**: Largest value in array\
**min()**: Smallest value in array\
**sma()**: Signal magnitude area\
**energy()**: Energy measure. Sum of the squares divided by the number of values\
**iqr()**: Interquartile range\
**entropy()**: Signal entropy\
**arCoeff()**: Autorregresion coefficients with Burg order equal to 4\
**correlation()**: correlation coefficient between two signals\
**maxInds()**: index of the frequency component with largest magnitude\
**meanFreq()**: Weighted average of the frequency components to obtain a mean frequency\
**skewness()**: skewness of the frequency domain signal\
**kurtosis()**: kurtosis of the frequency domain signal\
**bandsEnergy()**: Energy of a frequency interval within the 64 bins of the FFT of each window\
**angle()**: Angle between to vectors\

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the **angle()** variable:

**gravityMean**\
**tBodyAccMean**\
**tBodyAccJerkMean**\
**tBodyGyroMean**\
**tBodyGyroJerkMean**\

The complete list of variables of each feature vector is available in 'features.txt'