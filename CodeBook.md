Study design
=====================

The data used for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site from which the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

As described by the data providers, the data is related to the experiments which were "carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, [the following data was] captured: 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments [were] video-recorded to label the data manually. The obtained dataset [was] randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."

As further explained by the data providers, "for each record the following metadata was collected:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment."

Code book
=====================
Please find the list describing the variables used in code.
Please refer to the run_analysis.R files for the exact sequence of instructions in R. Please note that the R code includes further comments that explain the nature of operations. 
-	paramNames: a data frame into which data contained in  features.txt is read
-	activityNames: a data frame into which data contained in  activity_labels.txt is read
-	y_test: a data frame into which the data contained in y_test.txt is read
-	X_test:  a data frame into which the data contained in X_test.txt is read
-	subject_test:  a data frame into which the data contained in subject_test.txt is read
-	y_train: a data frame into which the data contained in y_train.txt is read
-	X_train:  a data frame into which the data contained in X_train.txt is read
-	subject_train:  a data frame into which the data contained in subject_train.txt is read
-	activities_test: a data frame that is a merge of the tables that contain the names of activities and the measurements (y_test, activityNames)
-	MergedTable: data frame that combines data from different data frames (subject_test, activities_test, X_test, subject_train, activities_train, X_train
-	StdMeanTable: a new data frame that contains only standard deviation and mean measurements, and columns that identify participant (subject) and activity. Columns that contain standard deviation and mean measurements are defines as columns whose name include one of the two strings: "-mean()" or "-std()"
-	aggdata: a new data frame that includes the mean of each variable for each activity and each subject

Instruction list
=====================

The code performs the following tasks (as required for this assignment):
-	Merges the training and the test sets to create one data set.
-	Extracts only the measurements on the mean and standard deviation for each measurement. 
-	Uses descriptive activity names to name the activities in the data set.
-	Appropriately labels the data set with descriptive variable names. 
-	Creates a second, independent tidy data set with the average of each variable for each activity and each subject (participant) that is later exported into the output.txt file.
Please refer to the run_analysis.R files for the exact sequence of instructions in R. Please note that the R code includes further comments that explain the nature of operations. 
