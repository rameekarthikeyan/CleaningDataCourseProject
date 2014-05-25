Data from accelerometers from Samsung Galaxy S smartphone
=========================================================
*All the information about the data and the variables have been taken from the README file of the UCI HAR dataset*


Variables:
----------
1. ActivityNames - Name of the activity performed by the volunteers
	+ Laying
	+ Sitting
	+ Standing
	+ Walking
	+ Walking_Downstairs
	+ Walking_Upstairs
2. Subject - An integer ID used to identify a volunteer
	+ 1,2,3,4.....30
3. tBodyAccmeanX - time domain body acceleration signal's mean along X direction
4. tBodyAccmeanY - time domain body acceleration signal's mean along Y direction
5. tBodyAccmeanZ - time domain body acceleration signal's mean along Z direction
6. tBodyAccstdX - time domain body acceleration signal's standard deviation along  X direction
7. tBodyAccstdY - time domain body acceleration signal's standard deviation along Y direction
8. tBodyAccstdZ - time domain body acceleration signal's standard deviation along Z direction
9. tGravityAccmeanX - time domain gravity acceleration signal's mean along  X direction
10. tGravityAccmeanY - time domain gravity acceleration signal's mean along Y direction
11. tGravityAccmeanZ - time domain gravity acceleration signal's mean along Z direction
12. tGravityAccstdX - time domain gravity acceleration signal's standard deviation along X direction
13. tGravityAccstdY- time domain gravity acceleration signal's standard deviation along Y direction
14. tGravityAccstdZ - time domain gravity acceleration signal's standard deviation along Z direction
15. tBodyAccJerkmeanX - time domain body acceleration jerk signal's mean along  X direction
16. tBodyAccJerkmeanY - time domain body acceleration jerk signal's mean along  Y direction
17. tBodyAccJerkmeanZ - time domain body acceleration jerk signal's mean along  Z direction
18. tBodyAccJerkstdX - time domain body acceleration jerk signal's standard deviation along X direction
19. tBodyAccJerkstdY - time domain body acceleration jerk signal's standard deviation along Y direction
20. tBodyAccJerkstdZ - time domain body acceleration jerk signal's standard deviation along Z direction
21. tBodyGyromeanX - time domain body angular velocity signal's mean along X direction
22. tBodyGyromeanY _ time domain body angular velocity signal's mean along Y direction
23. tBodyGyromeanZ - time domain body angular velocity signal's mean along Z direction
24. tBodyGyrostdX - time domain body angular velocity signal's standard deviation along X direction
25. tBodyGyrostdY - time domain body angular velocity signal's standard deviation along Y direction
26. tBodyGyrostdZ - time domain body angular velocity signal's standard deviation along Z direction
27. tBodyGyroJerkmeanX - time domain body angular velocity jerk signal's mean along X direction
28. tBodyGyroJerkmeanY - time domain body angular velocity jerk signal's mean along Y direction
29. tBodyGyroJerkmeanZ - time domain body angular velocity jerk signal's mean along Z direction
30. tBodyGyroJerkstdX - time domain body angular velocity jerk signal's standard deviation along X direction
31. tBodyGyroJerkstdY - time domain body angular velocity jerk signal's standard deviation along Y direction
32. tBodyGyroJerkstdZ - time domain body angular velocity jerk signal's standard deviation along Z direction
33. tBodyAccMagmean - time domain magnitude of the body acceleration signal's mean
34. tBodyAccMagstd - time domain magnitude of the body acceleration signal's standard deviation
35. tGravityAccMagmean - time domain magnitude of the gravity acceleration signal's mean
36. tGravityAccMagstd - time domain magnitude of the gravity acceleration signal's standard deviation
37. tBodyAccJerkMagmean - time domain magnitude of the body acceleration jerk signal's mean 
38. tBodyAccJerkMagstd - time domain magnitude of the body acceleration jerk signal's standard deviation
39. tBodyGyroMagmean - time domain magnitude of body angular velocity signal's mean 
40. tBodyGyroMagstd - time domain magnitude of body angular velocity signal's standard deviation 
41. tBodyGyroJerkMagmean - time domain magnitude of body angular velocity jerk signal's mean 
42. tBodyGyroJerkMagstd - time domain magnitude of body angular velocity jerk signal's standard deviation
43. fBodyAccmeanX - frequency domain body acceleration signal's mean along X direction 
44. fBodyAccmeanY - frequency domain body acceleration signal's mean along Y direction
45. fBodyAccmeanZ - frequency domain body acceleration signal's mean along Z direction
46. fBodyAccstdX - frequency domain body acceleration signal's standard deviation along X direction
47. fBodyAccstdY - frequency domain body acceleration signal's standard deviation along Y direction
48. fBodyAccstdZ - frequency domain body acceleration signal's standard deviation along Z direction 
49. fBodyAccJerkmeanX - frequency domain body acceleration jerk signal's mean along X direction
50. fBodyAccJerkmeanY - frequency domain body acceleration jerk signal's mean along Y direction
51. fBodyAccJerkmeanZ - frequency domain body acceleration jerk signal's mean along Z direction
52. fBodyAccJerkstdX - frequency domain body acceleration jerk signal's standard deviation along X direction
53. fBodyAccJerkstdY - frequency domain body acceleration jerk signal's standard deviation along Y direction
54. fBodyAccJerkstdZ - frequency domain body acceleration jerk signal's standard deviation along Z direction
55. fBodyGyromeanX - frequency domain body angular velocity signal's mean along X direction
56. fBodyGyromeanY - frequency domain body angular velocity signal's mean along Y direction
57. fBodyGyromeanZ - frequency domain body angular velocity signal's mean along Z direction
58. fBodyGyrostdX - frequency domain body angular velocity signal's standard deviation along X direction
59. fBodyGyrostdY - frequency domain body angular velocity signal's standard deviation along Y direction
60. fBodyGyrostdZ - frequency domain body angular velocity signal's standard deviation along Z direction 
61. fBodyAccMagmean - frequency domain magnitude of the body acceleration signal's mean
62. fBodyAccMagstd - frequency domain magnitude of the body acceleration signal's standard deviation
63. fBodyBodyAccJerkMagmean - frequency domain magnitude of the body acceleration jerk signal's mean
64. fBodyBodyAccJerkMagstd - frequency domain magnitude of the body acceleration jerk signal's standard deviation
65. fBodyBodyGyroMagmean - frequency domain magnitude of the body angular velocity signal's mean
66. fBodyBodyGyroMagstd - frequency domain magnitude of the body angular velocity signal's standard deviation
67. fBodyBodyGyroJerkMagmean - frequency domain magnitude of the body angular velocity jerk signal's mean
68. fBodyBodyGyroJerkMagstd - frequency domain magnitude of the body angular velocity jerk signal's standard deviation

Data:
-----
The above mentioned variables have been measured for 30 different subjects and for 6 different activities. Observations are stored in the first data set of the course project. Since there are many observations for same activity and subject pair, tidy data principle is applied to get observation for each activity and subject pair by taking the average of the variables for each activity and subject pair. Tidy data is stored in second dataset of the course project.

Instructions for getting the tidy dataset:
------------------------------------------

* Operating System - Windows Vista
* R version - 3.0.3

1. Step 1 - Download the raw UCI HAR dataset and unzip the files in the working directory.
2. Step 2 - Run the "Run_analysis.R" script on R.
3. Step 3 - The two output files called "LabelExtractMergedDataSet.txt" and "AveragedDataSet.txt" in the working directory have the results of merging and tidying.
