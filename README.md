README file for Run_analysis script 
===================================
Introduction
____________
This file contains the details of how the Run_analysis script works. ** The Run_analysis script assumes that the required raw dataset is downloaded and unzipped in the working directory**. 

Script details
______________
1. The script begins by loading the library of the data.table package as the script uses the function "data.table()".
2. File names of the required files such as X_train.txt, y_train.txt, subject_train.txt in the directory "UCI HAR Dataset/train" are set and then loaded into R by using the function "read.table()"
3. The different variables (561 feature vector variables, activity label, subject) from the above are combined in one data table by using the function "data.table()".
4. Similarly, the required file such as X_test.txt, y_test.txt, subject_test.txtin the directory "UCI HAR Dataset/test" are set and then loaded into R by using the function "read.table()".
5. The different variables (561 feature vector variables, activity label, subject) from the step 4 are combined in one data table by using the function "data.table()".
6. The file names for the files activity_labels.txt and features.txt in the directory "UCI HAR Dataset" are set and loaded into R by using "read.table(). Activity_labels.txt is required to map the numeric value of the activity to the string activity names. Features.txt is required to get the  561 feature vector variable names.
7. The data tables from the steps 3 and 5 are merged using the function "rbind()". This yields the course project's step 1 result.
8. The column names ( 561 feature vector variable names) of the new merged data table are renamed by using the feature_data datatable created in step 6. The meta characters in the variable names are removed by using the function "gsub()".
9. In order to extract the variables that are on mean and standard deviation for each measurement, 
	* the variables that contains the word "mean" at the end of the string are selected 
	* the variables that contains the word "mean" and not succeeded by the letter F are selected. Since "meanFreq" is another variable and not a mean value measurement, the variables that contains "meanFreq" are excluded.
	* the variables that contains the word "std" are selected.
	* function "grep()" is used to make the selection of the variables.
10. A new data table is extracted (subsetted) by using the variables selected in step 9. This yields the course project's step 2 results.
11. Another column called ActivityNames is added to the new data table by using the activity_data created in step 6. ActivityNames column contains the string names of the activities.
12. A new datatable is subsetted from the data table in step 11 and yields the first tidy data set required in course project - steps 1, 2, 3 and 4 of course project.
13. The step 12 data table is written as .txt file. 
14. Average of the variables in step 12 data table is calculated by using the function "lapply()" and is stored in new data table and this yields the second tidy data set required in course project - step 5.
15. The step 14 new data table is written as .txt file.
