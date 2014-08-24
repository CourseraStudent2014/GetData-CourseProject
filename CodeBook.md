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

Instruction list
=====================

The code performs the following tasks (as required for this assignment):
-	Merges the training and the test sets to create one data set.
-	Extracts only the measurements on the mean and standard deviation for each measurement. 
-	Uses descriptive activity names to name the activities in the data set.
-	Appropriately labels the data set with descriptive variable names. 
-	Creates a second, independent tidy data set with the average of each variable for each activity and each subject (participant) that is later exported into the output.txt file.
Please refer to the run_analysis.R files for the exact sequence of instructions in R. Please note that the R code includes further comments that explain the nature of operations. 
