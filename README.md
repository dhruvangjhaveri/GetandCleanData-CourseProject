## Note: You may find this repository created about 3 months ago. This is due to the fact that I am retaking this course and submitting the same repository which I had created when doing the course first time. I assure you that it is my own work.

# GetandCleanData-CourseProject
**This repository contains the submission for the Course Project of the course ["Getting and Cleaning Data"] (https://www.coursera.org/course/getdata) which is a part of a [Data Science] (https://www.coursera.org/specializations/jhudatascience) specialization offered by Johns Hopkins University on [Coursera] (https://www.coursera.org/browse).**

The repository contains the following files-

- **README.md**

- **run_analysis.R**: It is an R code that coverts the raw data into a tidy data set. The code performs the following steps-
 - 1. Checking for and installing required packages
 - 2. Unzipping the ".zip" containing the raw data and creating a "UCI HAR Dataset" folder in the working directory.
 -  3. Reading data from the different files in the "test" and "train" folder and merging the data to form one large dataset.
 - 4. Naming the variables of the data set
 - 5. Extracting only the mean and the standard deviation values from the raw dataset
 - 6. Arranging this data set according to the subject number and the activity performed by each subject.
 - 7. Summarising this data by taking the mean of each variable for each particular activity done by each particular subject. 
 - 8. Reanaming variables to syntactically valid column names.

**Note.** The code requires the ".zip" file in the working to directory to process the raw data. The ".zip" file can be downloaded from the following link- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

**Note.** The code functions using the latest versions of the "data.table" and the "dplyr" package. It is strongly recommended to update your package to the latest version ([Version 1.9.6] (https://cran.r-project.org/web/packages/data.table/index.html) for "data.table and [Version 0.4.3] (https://cran.r-project.org/web/packages/dplyr/index.html) for "dplyr" package) for the proper functioning of the code. 

The packages can be directly updated from the R console using the following code-
`update.packages(c("data.table","dplyr"))`

- **Code Book.md**: It gives a detailed description of the raw data set as well as the tidy data set obtained by processing the data using the "run_analysis.R" code. 



**References**:
----------------
- https://www.coursera.org/course/getdata
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
