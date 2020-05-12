---
title: "README"
author: "Carlos Schuler"
date: "5/12/2020"
output: html_document
---


# Getting and Cleaning Data: Course Project

The purpose of this project is to demonstrate my ability to collect, work with, 
and clean a data set, to satisfy the requirements of this course.

## Evaluation Rubrics

1. The submitted data set is tidy.
1. The Github repo contains the required scripts.
1. The GitHub repo contains a code book that lists all the variables and 
summaries calculated, along with units, and any other relevant information.
1. The README file (this file) explains the data processing steps in clear and 
understandable fashion.
1. The work submitted for this project is my own.

In the authors estimation, all have been fulfilled.

## Data source

The script *run_analysis.R* downloads data from the following location:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

If the script detects that a local copy of the data is already present in the working directory,
it uses the local copy instead.

## Files

* **runAnalysis.R**: *INPUT*. The analysis script. Its function is detailed in a separate
section below.

* **datadownload.R**: *OUTPUT*. File containing the date and time of the last download
of the "UCI HAR Dataset""

* **CodeBook.md**: *DOCUMENTATION*. Description of all the variables and summaries calculated, 
along with units, and any other relevant information.

* **README.md**: *DOCUMENTATION*. This file.

* **tidyData.txt**: *OUTPUT*. The final dataset; the average of each variable for each activity
and each subject from the original data sets "mean()" and "std()" results.

* **UCI HAR Dataset**: *OUTPUT*. Directory created by unzipping the downloaded data
from the source location. Contains "Subject", "Activity" and "Feature" data for
for the "train" and "test" cohorts.

* **data.zip**: *TEMPORARY OUTPUT FILE* used to store the downloaded compressed data
from the source location prior to unzipping it. It is deleted by the script after the
the "UCI "HAR Dataset" directory is created by unzipping this file.


## Tasks accomplished by the script *run_analysis.R*

Starting with the source data, the script performs the following tasks, in order:

1. Merge the training and the test sets to create one data set.
1. Extract only the measurements on the mean and standard deviation for each measurement.
1. Use descriptive activity names to name the activities in the data set
1. Appropriately label the data set with descriptive variable names.
1. From the data set in step 4, create a second, independent tidy data set with 
the average of each variable for each activity and each subject.

## *run_analysis.R* script details

The *run_analysis.R* script implements the tasks listed above, in order.

### R version and platform used for implementation
R version 4.0.0 (2020-04-24), platform: x86_64, darwin17.0

### R packages used
* lubridate 1.7.8
* dplyr 0.8.5

### Implementation details

The script is profuselly commented to make its actions clear to the reader.
Here we highlight the script's major actions:

* If the data directory "UCI HAR Dataset" in not present in the current working
directory, the script loads and unzips the data from:

"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

The script saves the download date in the file "datadownload.R"

* The script reads each of the Subject, Activity and Feature field data for the train 
and test datasets into separate data frames from the files subject_[cohort].txt, 
y_[cohort].txt and X_[cohort]*.txt (where [cohort] is either "train" or "test").
These files are in the "test" and "train" directories under "UCI HAR Dataset".

* The script then appends (via rbind) the train and test datasets for each of these
fields. Finally, the script merges all the columns together (via cbind), resulting
in the data frame "allData". This fullfills the 1st project requirement.

* The script reads the "Feature Labels" from the file "features.txt" under 
"UCI HAR Dataset". It uses these labels to select the columns including the
strings "mean()" or "std()", using the "grep()" function followed by subsetting
the merdged "allData" data frame.  This fullfills the 2nd project requirement.

* The script reads the activity codes and activity labels from the file
"activity_labels.txt" under the directory "UCI HAR Dataset" and stores them
into a separate data frame, called "activityLabels".  

* The script then performs a right_join operation of this
data frame with "allData"", matching the activity code column present in both
data frames. This matches the activity codes in "allData" with the respective
activities. The columns of allData are then re-arrange to the original order,
substituting the activity code column by the activity description. This fulfills
the 3rd project requirement.

* The script then cleans up the column labels, by expanding "t" into "time",
"f" into "frequency", etc. It also removes parentheses and dashes from the
column labels. This is done using the "gsub()" function (modified to allow
piping). This fulfills the 4th project requirement.

* Finally, the script groups the "allData" data frame by Subject and Activity,
using the "group_by()" function, followed by a call to "summarize_all()" applying
the function "mean" to all the non-grouped columns. This is assigned to the
"tidyData" data frame (actually a "tibbl"). The column labels are adjusting by
prepending the string "Mean" to indicate that the results are the average of
multiple observations. This data frame is saved in the file 
"tidyData.txt". This fulfills the 5th project requirement.
