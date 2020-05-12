## run_analysis.R
#
#
# DATA SOURCE:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# R script that does the following:
#
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each 
#      measurement.
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set 
#      with the average of each variable for each activity and each subject.

##########################################
# Load packages
library(lubridate)
library(dplyr)


##########################################
# Original data location
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataFolder <- "UCI HAR Dataset"
zipfile <- "data.zip"
dateFile <- "datadownload.R"


##########################################
# Download the data if not already present in the working directory

if(!file.exists(dataFolder)) {
        # Download from the web
        cat("\n\nDownlading and unzipping data from:\n")
        cat("\t",url,"\n")
        download.file(url,zipfile)
        if(!file.exists(zipfile)) stop("Error downloading file.")
        unzip(zipfile)
        file.remove(zipfile)
        rm(zipfile)
        if(!file.exists(dataFolder)) stop("Error unziping data file")
        dataDownloadDate <- now()
        dput(dataDownloadDate,file="datadownload.R")
} else {
        # Data was downloaded previously
        if(file.exists(dateFile)) {
                dataDownloadDate<-dget(dateFile)
                cat("\n\nData previously downloaded from:\n")
                cat("\t",url,"\n")
                cat("On: ")
                cat(as.character(dataDownloadDate),"\n")
        } else {
                cat("\n\nData previously downloaded from:\n")
                cat("\t",url,"\n")
                warning("Date file \"", dateFile, "\" not found")
                dataDownloadDate <- as.character(NULL)
        }
}


##########################################
# Set path information
cwd <- getwd()
basePath <- file.path(cwd,dataFolder)

cohortNames <- c("train","test")
fp <- c(file.path(basePath,"train"),
        file.path(basePath,"test"))
names(fp) <-cohortNames


##########################################
# 1. Merge the training and the test sets to create one data set.

# Read training data
trainSubjects <- read.table(file.path(fp["train"],"subject_train.txt"))
trainActivities <- read.table(file.path(fp["train"],"y_train.txt"))
trainFeatures <- read.table(file.path(fp["train"],"x_train.txt"))

# Read test data
testSubjects <- read.table(file.path(fp["test"],"subject_test.txt"))
testActivities <- read.table(file.path(fp["test"],"y_test.txt"))
testFeatures <- read.table(file.path(fp["test"],"x_test.txt"))

# Combine Data for each field
allSubjects <- rbind(trainSubjects,testSubjects)
allActivities <-rbind(trainActivities,testActivities)
allFeatures <- rbind(trainFeatures,testFeatures)

# Combine ALL data into one data set
allData <- cbind(allSubjects,allActivities,allFeatures)         ### Fulfills 1 ###


##########################################
# 2. Extract only the measurements on the mean and standard deviation for each 
#      measurement.

# Read "feature labels" and name all columns of allData
featureLabels <- read.table(file.path(basePath,"features.txt"))

# Select Mean and Standard Deviation columns
columnsSelected <- grep("(mean\\(\\))|(std\\(\\))",featureLabels[,2])

# Extract only the mean and standard deviation data for each measurement.
# (add 2 to columnsSelected to account for subj and act)
allData <- allData[c(1,2,columnsSelected+2)]
names(allData)<-c("Subject","ActivityCode",featureLabels[columnsSelected,2])
                                                                ### Fulfills 2 ###

##########################################
# 3. Uses descriptive activity names to name the activities in the data set.

# Read "activity labels"
activityLabels <- read.table(file.path(basePath,"activity_labels.txt"))
names(activityLabels) <- c("ActivityCode","Activity")
# make lower case
activityLabels[,2] <- tolower(activityLabels[,2])

# Use right_join to match the activityLabels to the activies
allData <- right_join(activityLabels,allData,by = "ActivityCode")

# Remove the activity codes and sort the columns nicely
allData <- allData[c(3,2,4:ncol(allData))]                      ### Fulfills 3 ###


##########################################
# 4. Appropriately labels the data set with descriptive variable names.

# Change the order of gsub, to make compatible with %>% pipe
mygsub <- function(x, pattern, replacement, ...) {gsub(pattern, replacement, x, ...)}


# Substitute abbreviations, eliminate brackets, dashes ...
columnLabels <-
        featureLabels[columnsSelected,2] %>%
        mygsub("^t", "Time") %>%
        mygsub("^f","Frequency") %>%
        mygsub("Acc","Acceleration") %>%
        mygsub("Gyro","Gyroscope") %>%
        mygsub("jerk","Jerk") %>%
        mygsub("Mag","Magnitude") %>%
        mygsub("mean\\(\\)","Mean") %>%
        mygsub("std\\(\\)","Stdev") %>%
        mygsub("-","")


# Label the data set with descriptive variable names
names(allData) <- c("Subject","Activity",
                    columnLabels)                               ### Fulfills 4 ###


##########################################
# 5. From the data set in step 4, creates a second, independent tidy data set 
#      with the average of each variable for each activity and each subject.

# Group the data and summarize averages for all variables
tidyData <- allData %>% group_by(Subject, Activity) %>% summarize_all(mean)

# Adjust the column labels

names(tidyData) <- c("Subject","Activity",sub("^","Mean",columnLabels))


# Write tidyData to disk without row names 
write.table(tidyData, file = "tidyData.txt", row.names = FALSE)                    ### Fulfills 5 ###

