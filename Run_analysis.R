## This script is to create the first data set and second
## tidy data set of the course project.
## This script assumes that the required raw data set is downloaded 
## and the files are unzipped to the working directory
## Library data.table is loaded as the script uses data.table
library(data.table)
## file names of the required training files are set to read them into R
fnamextrain <- "./UCI HAR Dataset/train/X_train.txt"
fnameytrain <- "./UCI HAR Dataset/train/Y_train.txt"
fnamesubjecttrain <- "./UCI HAR Dataset/train/subject_train.txt"
## The training files are read into R using read.table
xtrainvalues <- read.table(fnamextrain)
ytrainvalues <- read.table(fnameytrain)
subjecttrainvalues <- read.table(fnamesubjecttrain)
## The different variables are combined in one data table
datatable1 <- data.table(ActivityLabel = ytrainvalues, Subject = subjecttrainvalues, feature_vector = xtrainvalues)
## file names of the required test files are set to read them into R
fnamextest <-  "./UCI HAR Dataset/test/X_test.txt"
xtestvalues <- read.table(fnamextest)
fnameytest <-  "./UCI HAR Dataset/test/Y_test.txt"
## The test files are read into R using read.table
ytestvalues <- read.table(fnameytest)
## file names of the subject files are set to read them into R
fnamesubjecttest <-  "./UCI HAR Dataset/test/subject_test.txt"
## The files are read into R using read.table
subjecttestvalues <- read.table(fnamesubjecttest)
## The different variables are combined in one data table
datatable2 <- data.table(ActivityLabel = ytestvalues, Subject = subjecttestvalues, feature_vector = xtestvalues)
## file name of the required activity file is set to read them into R
fnameactivitylb <- "./UCI HAR Dataset/activity_labels.txt"
## The files are read into R using read.table
activity_data <- read.table(fnameactivitylb)
## file name of the required feature file is set to read them into R
fnamefeature <- "./UCI HAR Dataset/features.txt"
## The files are read into R using read.table
feature_data <- read.table(fnamefeature)
## The training data table and the test data table are merged using rbind
mergedDT <- rbind(datatable1, datatable2)
## The column names of the merged data table are renamed using the features data table
## and the metacharacters in the names are removed using gsub
numcols <- ncol(mergedDT)
setnames(mergedDT, 3:numcols, gsub("*\\-*\\(*\\,*\\)*-*", "", as.vector(feature_data$V2)))
setnames(mergedDT, 1:2, c("ActivityLabel", "Subject"))
## The column names (variables) that contains the pattern "mean" at the end are selected using grep
sb <- grep("mean$",colnames(mergedDT))
## The column names (variables) that contains the pattern "mean", but not succeeded by F are selected 
## in order to exclude the meanFreq variables
sf <- grep("mean[^F]",colnames(mergedDT))
## The column names (variables) that contains the pattern "std" are selected using grep
sv <- grep("std?", colnames(mergedDT))
## The above resulting indexes are sorted
meanstdmeasures <- sort(c(sb,sf,sv,1,2))
## The required column variables are extracted into the new datatable
extractedDT <- mergedDT[, meanstdmeasures, with=FALSE]
## key is set for the new data table
setkey(extractedDT, ActivityLabel)
## numeric values of activity label are mapped to their character wordings using 
## the activity label text file and the corresponding activity names are added 
## as one new column called "ActivityNames"
extractedDT[, ActivityNames := as.character(activity_data[["V2"]][ActivityLabel])]
## New data table is extracted without the numeric value activity label column
keyedDT <-  extractedDT[,!"ActivityLabel", with=FALSE]
## ActivityNames column is ordered as first column
setcolorder(keyedDT, c("ActivityNames", setdiff(names(keyedDT), "ActivityNames")))
## keys are set for the new data table
labeledDT <- setkeyv(keyedDT, c("ActivityNames", "Subject"))
## file name is set for writing the first tidy data set
filenm1 <- "LabelExtractMergedDataSet"
## if the file name already exists, new file name is created by appending 
## the old file name with the current date time stamp
if(file.exists(filenm1)) {
filenm1 <- paste0(filenm1, gsub("*\\:*\\:*","",format(Sys.time(), "%b %d %X")))
        }
filenm1 <- paste0(filenm1,".txt")
## The first tidy data set is written in a file
write.table(labeledDT, file = filenm1)
## The second tidy data set is created using lapply and .SD 
AveragedDT <- labeledDT[,lapply(.SD,mean),by=c("ActivityNames", "Subject")]
## file name is set for writing the second tidy data set
filenm2 <- "AveragedDataSet"
## if the file name already exists, new file name is created by appending 
## the old file name with the current date time stamp
if(file.exists(filenm2)) {
filenm2 <- paste0(filenm2, gsub("*\\:*\\:*","",format(Sys.time(), "%b %d %X")))
        }
filenm2 <- paste0(filenm2,".txt")
## The second tidy data set is written in a file
write.table(AveragedDT, file = filenm2)

