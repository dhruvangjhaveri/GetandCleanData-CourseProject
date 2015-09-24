## Installing Required Packages
if(!("data.table" %in% installed.packages())) install.packages("data.table")
if(!("dplyr" %in% installed.packages())) install.packages("dplyr")
library(data.table)
library(dplyr)

## Reading Data from Files
data <- fread("./UCI HAR Dataset/test/subject_test.txt")
data <- rbind(data, fread("./UCI HAR Dataset/train/subject_train.txt"))
x <- fread("./UCI HAR Dataset/test/y_test.txt")
x <- rbind(x, fread("./UCI HAR Dataset/train/y_train.txt"))
x <- as.factor(x[,V1])
levels(x) <- as.character(fread("./UCI HAR Dataset/activity_labels.txt")[,V2]) 
data[,x:=x]
y <- fread("./UCI HAR Dataset/test/X_test.txt")
y <- rbind(y, fread("./UCI HAR Dataset/train/X_train.txt"))
data <- cbind(data, y)
rm(x,y)

## Naming Variables of Data
names(data) <- c("Subject", "Activity", fread("./UCI HAR Dataset/features.txt")[,V2])

## Substetting, Arranging & Summarising Data
data <- data %>% select(c(1:2, grep("mean()",names(data), fixed = T), grep("std()",names(data), fixed = T))) %>% arrange(Subject, Activity) %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
