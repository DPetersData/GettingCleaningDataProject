############################################################################################################
#  Getting and Cleaning Data - Course Project
#  June 2016
#
#  The purpose of this script is to:
#  1. Merge the training and the test sets to create one data set.
#  2. Extract only the measurements on the mean and standard deviation for each measurement.
#  3. Use descriptive activity names to name the activities in the data set
#  4. Appropriately label the data set with descriptive variable names.
#  5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
#
#  Reference for data: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
#  Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.
#  International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
############################################################################################################

#load libraries
library(dplyr)

# Load TEST data: "subject_test.txt"
Test_TesterID = read.table("./Documents/DataScienceCourses/C3/Project/test/subject_test.txt")

# Load TEST data: "X_test.txt" & load column names from features.txt file
Test_TestData = read.table("./Documents/DataScienceCourses/C3/Project/test/X_test.txt")

# Load TEST data: "y_test.txt"
Test_ActivityLabels = read.table("./Documents/DataScienceCourses/C3/Project/test/y_test.txt")

# Create new data frame that includes Tester ID, Activity labels, and extracted mean and standard deviation measurements
NewTestDF <- cbind(Test_TesterID, Test_ActivityLabels, select(Test_TestData, V1:V6), select(Test_TestData, V41:V46), select(Test_TestData, V81:V86), select(Test_TestData, V121:V126), select(Test_TestData, V161:V166), select(Test_TestData, V201:V202), select(Test_TestData, V214:V215), select(Test_TestData, V227:V228), select(Test_TestData, V240:V241), select(Test_TestData, V253:V254), select(Test_TestData, V266:V271), select(Test_TestData, V345:V350), select(Test_TestData, V424:V429), select(Test_TestData, V503:V504), select(Test_TestData, V516:V517), select(Test_TestData, V529:V530), select(Test_TestData, V542:V543))

colnames(NewTestDF) <- c("TesterID", "Activity", "tBodyAcc-mean-X", "tBodyAcc-mean-Y", "tBodyAcc-mean-Z", "tBodyAcc-std-X", "tBodyAcc-std-Y", "tBodyAcc-std-Z", "tGravityAcc-mean-X", "tGravityAcc-mean-Y", "tGravityAcc-mean-Z", "tGravityAcc-std-X", "tGravityAcc-std-Y", "tGravityAcc-std-Z", "tBodyAccJerk-mean-X", "tBodyAccJerk-mean-Y", "tBodyAccJerk-mean-Z", "tBodyAccJerk-std-X", "tBodyAccJerk-std-Y", "tBodyAccJerk-std-Z", "tBodyGyro-mean-X", "tBodyGyro-mean-Y", "tBodyGyro-mean-Z", "tBodyGyro-std-X", "tBodyGyro-std-Y", "tBodyGyro-std-Z", "tBodyGyroJerk-mean-X", "tBodyGyroJerk-mean-Y", "tBodyGyroJerk-mean-Z", "tBodyGyroJerk-std-X", "tBodyGyroJerk-std-Y", "tBodyGyroJerk-std-Z", "tBodyAccMag-mean", "tBodyAccMag-std", "tGravityAccMag-mean", "tGravityAccMag-std", "tBodyAccJerkMag-mean", "tBodyAccJerkMag-std", "tBodyGyroMag-mean", "tBodyGyroMag-std", "tBodyGyroJerkMag-mean", "tBodyGyroJerkMag-std", "fBodyAcc-mean-X", "fBodyAcc-mean-Y", "fBodyAcc-mean-Z", "fBodyAcc-std-X", "fBodyAcc-std-Y", "fBodyAcc-std-Z", "fBodyAccJerk-mean-X", "fBodyAccJerk-mean-Y", "fBodyAccJerk-mean-Z", "fBodyAccJerk-std-X", "fBodyAccJerk-std-Y", "fBodyAccJerk-std-Z", "fBodyGyro-mean-X", "fBodyGyro-mean-Y", "fBodyGyro-mean-Z", "fBodyGyro-std-X", "fBodyGyro-std-Y", "fBodyGyro-std-Z", "fBodyAccMag-mean", "fBodyAccMag-std", "fBodyBodyAccJerkMag-mean", "fBodyBodyAccJerkMag-std", "fBodyBodyGyroMag-mean", "fBodyBodyGyroMag-std", "fBodyBodyGyroJerkMag-mean", "fBodyBodyGyroJerkMag-std")


# Load TRAIN data: "subject_train.txt"
Train_TesterID = read.table("./Documents/DataScienceCourses/C3/Project/train/subject_train.txt")

# Load TRAIN data: "X_train.txt"
Train_TestData = read.table("./Documents/DataScienceCourses/C3/Project/train/X_train.txt")

# Load TRAIN data: "y_train.txt"
Train_ActivityLabels = read.table("./Documents/DataScienceCourses/C3/Project/train/y_train.txt")

# Create new data frame that includes Tester ID, Activity labels, and extracted mean and standard deviation measurements
NewTrainDF <- cbind(Train_TesterID, Train_ActivityLabels, select(Train_TestData, V1:V6), select(Train_TestData, V41:V46), select(Train_TestData, V81:V86), select(Train_TestData, V121:V126), select(Train_TestData, V161:V166), select(Train_TestData, V201:V202), select(Train_TestData, V214:V215), select(Train_TestData, V227:V228), select(Train_TestData, V240:V241), select(Train_TestData, V253:V254), select(Train_TestData, V266:V271), select(Train_TestData, V345:V350), select(Train_TestData, V424:V429), select(Train_TestData, V503:V504), select(Train_TestData, V516:V517), select(Train_TestData, V529:V530), select(Train_TestData, V542:V543))

colnames(NewTrainDF) <- c("TesterID", "Activity", "tBodyAcc-mean-X", "tBodyAcc-mean-Y", "tBodyAcc-mean-Z", "tBodyAcc-std-X", "tBodyAcc-std-Y", "tBodyAcc-std-Z", "tGravityAcc-mean-X", "tGravityAcc-mean-Y", "tGravityAcc-mean-Z", "tGravityAcc-std-X", "tGravityAcc-std-Y", "tGravityAcc-std-Z", "tBodyAccJerk-mean-X", "tBodyAccJerk-mean-Y", "tBodyAccJerk-mean-Z", "tBodyAccJerk-std-X", "tBodyAccJerk-std-Y", "tBodyAccJerk-std-Z", "tBodyGyro-mean-X", "tBodyGyro-mean-Y", "tBodyGyro-mean-Z", "tBodyGyro-std-X", "tBodyGyro-std-Y", "tBodyGyro-std-Z", "tBodyGyroJerk-mean-X", "tBodyGyroJerk-mean-Y", "tBodyGyroJerk-mean-Z", "tBodyGyroJerk-std-X", "tBodyGyroJerk-std-Y", "tBodyGyroJerk-std-Z", "tBodyAccMag-mean", "tBodyAccMag-std", "tGravityAccMag-mean", "tGravityAccMag-std", "tBodyAccJerkMag-mean", "tBodyAccJerkMag-std", "tBodyGyroMag-mean", "tBodyGyroMag-std", "tBodyGyroJerkMag-mean", "tBodyGyroJerkMag-std", "fBodyAcc-mean-X", "fBodyAcc-mean-Y", "fBodyAcc-mean-Z", "fBodyAcc-std-X", "fBodyAcc-std-Y", "fBodyAcc-std-Z", "fBodyAccJerk-mean-X", "fBodyAccJerk-mean-Y", "fBodyAccJerk-mean-Z", "fBodyAccJerk-std-X", "fBodyAccJerk-std-Y", "fBodyAccJerk-std-Z", "fBodyGyro-mean-X", "fBodyGyro-mean-Y", "fBodyGyro-mean-Z", "fBodyGyro-std-X", "fBodyGyro-std-Y", "fBodyGyro-std-Z", "fBodyAccMag-mean", "fBodyAccMag-std", "fBodyBodyAccJerkMag-mean", "fBodyBodyAccJerkMag-std", "fBodyBodyGyroMag-mean", "fBodyBodyGyroMag-std", "fBodyBodyGyroJerkMag-mean", "fBodyBodyGyroJerkMag-std")


# Merge TEST and TRAIN dataframes into AllMeanStdData
AllMeanStdData <- rbind(NewTestDF, NewTrainDF)


# Separate Acivities into their own tables
WalkingDF <- AllMeanStdData[(AllMeanStdData$Activity == 1),]
Walking_UpstairsDF <- AllMeanStdData[(AllMeanStdData$Activity == 2),]
Walking_DownstairsDF <- AllMeanStdData[(AllMeanStdData$Activity == 3),]
SittingDF <- AllMeanStdData[(AllMeanStdData$Activity == 4),]
StandingDF <- AllMeanStdData[(AllMeanStdData$Activity == 5),]
LayingDF <- AllMeanStdData[(AllMeanStdData$Activity == 6),]


# Assignment: create a second, independent tidy data set with the average of each variable for each activity and each subject.
WalkingAverages <- summarize_each(group_by(WalkingDF, TesterID), funs(mean))
Walking_UpstairsAverages <- summarize_each(group_by(Walking_UpstairsDF, TesterID), funs(mean))
Walking_DownstairsAverages <- summarize_each(group_by(Walking_DownstairsDF, TesterID), funs(mean))
SittingAverages <- summarize_each(group_by(SittingDF, TesterID), funs(mean))
StandingAverages <- summarize_each(group_by(StandingDF, TesterID), funs(mean))
LayingAverages <- summarize_each(group_by(LayingDF, TesterID), funs(mean))


