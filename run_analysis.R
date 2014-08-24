##set working directory
setwd("C:/coursera/getting_data/project/UCI HAR Dataset")

##read files that contain names of activities and measurements 
paramNames <- read.table("./features.txt")
activityNames <- read.table("./activity_labels.txt")

##read files for the test group
y_test <- read.table("./test/y_test.txt")
X_test <- read.table("./test/X_test.txt")
subject_test <- read.table("./test/subject_test.txt")

##give more meaningfull names to columns in various data frames
colnames(y_test) <- "ActivityTypeID"
colnames(subject_test) <- "ParticipantID"
colnames(X_test) <- paramNames[,2]
colnames(activityNames) <- c("ActivityTypeID", "ActivityType")

##merge the tables that contain the names of activities and the measurements
##for all participants
activities_test <-merge(y_test, activityNames, by.x = "ActivityTypeID", 
	by.y = "ActivityTypeID")

##bind columns from three different data frames into one dataframe
MergedTable <- cbind (subject_test, activities_test, X_test)

##read files for the train group
y_train <- read.table("./train/y_train.txt")
X_train <- read.table("./train/X_train.txt")
subject_train <- read.table("./train/subject_train.txt")

##give more meaningfull names to columns in various data frames
colnames(y_train) <- "ActivityTypeID"
colnames(subject_train) <- "ParticipantID"
colnames(X_train) <- paramNames[,2]

##merge the tables that contain the names of activities and the measurements
##for all participants
activities_train <-merge(y_train, activityNames, by.x = "ActivityTypeID", 
	by.y = "ActivityTypeID")

##bind columns from three different data frames into one dataframe
##and bind rows into the merged table to combine data for train and test groups
MergedTable <- rbind(MergedTable, cbind (subject_train, activities_train, X_train))

##create new data frame that contains only standard dev and mean measurements
##and columns that identify participant (subject) and activity
StdMeanTable <- cbind(MergedTable[,1],MergedTable[,3],
	MergedTable[,grepl(paste0(c("-mean()", "-std()"),collapse="|"),
	colnames(MergedTable))])

##give more meaningful names to the first 2 columns
colnames(StdMeanTable)[1:2] <- c("ParticipantId", "ActivityType")

##create a new data frame that includes the average of each variable 
##for each activity and each subject. 
aggdata <-aggregate(StdMeanTable, 
	by=list(StdMeanTable$ParticipantId,StdMeanTable$ActivityType), 
	FUN=mean, na.rm=TRUE)[,c(1:2,5:83)]

##give more meaningful names to the first 2 columns
colnames(aggdata)[1:2] <- c("ParticipantId", "ActivityType")

##write contents of data frame into a txt file
write.table(aggdata, file = "output.txt", row.name=FALSE)

