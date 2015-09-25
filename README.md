# GetandCleanData-CourseProject
**This repository contains the submission for the Course Project of the course ["Getting and Cleaning Data"] (https://www.coursera.org/course/getdata) which is a part of a [Data Science] (https://www.coursera.org/specializations/jhudatascience) specialization offered by Johns Hopkins University on [Coursera] (https://www.coursera.org/browse).**

The repository contains the following files-

- **README.md**

- **run_analysis.R**-
run_analysis.R is an R code that coverts the raw data into a tidy data set.

**Note.** The code works using the latest versions of the "data.table" and the "dplyr" package. If the packages are not yet installed on your local system, the code automatically downloads the latest version of the package. However, if you are using an older version of the above mentioned package, it is strongly recommended to update your package to the latest version for the proper functioning of the code. Use following code to update packages- 

`update.packages(c("data.table","dplyr"))`

- **Code Book.md**
The codebook gives a detailed description of the raw data set as well as the tidy data set obtained by processing the data using the "run_analysis.R" code. 
