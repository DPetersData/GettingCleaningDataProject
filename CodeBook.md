# CodeBook

- - -
#### Variable Name

Data Type

Description of contents
- - -


#### Test_TesterID

Type: Vector

Contents: contains the subject_test.txt files from the data source


#### Test_TestData

Type: Data Frame

Contents: contains the X_test.txt files from the data source


#### Test_ActivityLabels

Type: Vector

Contents: contains the y_test.txt files from the data source


#### NewTestDF

Type: Data Frame

Contents: contains a table with the tester ID, activity label, and each of the mean and standard deviation readings from the Test population


#### Train_TesterID

Type: Vector

Contents: contains the subject_train.txt files from the data source


#### Train_TestData

Type: Data Frame

Contents: contains the X_train.txt files from the data source


#### Train_ActivityLabels

Type: Vector

Contents: contains the y_train.txt files from the data source


#### NewTrainDF

Type: Data Frame

Contents: contains a table with the tester ID, activity label, and each of the mean and standard deviation readings from the Train population


#### AllMeanStdData

Type: Data Frame

Contents: contains the merged NewTestDF and NewTrainDF data frames


#### WalkingDF

Type: Data Frame

Contents: contains just the data from AllMeansStdData for the walking activity


#### Walking_UpstairsDF

Type: Data Frame

Contents: contains just the data from AllMeansStdData for the walking upstairs activity


#### Walking_DownstairsDF

Type: Data Frame

Contents: contains just the data from AllMeansStdData for the walking downstairs activity


#### SittingDF

Type: Data Frame

Contents: contains just the data from AllMeansStdData for the sitting activity


#### StandingDF

Type: Data Frame

Contents: contains just the data from AllMeansStdData for the standing activity


#### LayingDF

Type: Data Frame

Contents: contains just the data from AllMeansStdData for the laying activity


#### WalkingAverages

Type: Data Frame

Contents: contains the average of each variable for each subject during the walking activity


#### Walking_UpstairsAverages

Type: Data Frame

Contents: contains the average of each variable for each subject during the walking upstairs activity


#### Walking_DownstairsAverages

Type: Data Frame

Contents: contains the average of each variable for each subject during the walking downstairs activity


#### SittingAverages

Type: Data Frame

Contents: contains the average of each variable for each subject during the sitting activity


#### StandingingAverages

Type: Data Frame

Contents: contains the average of each variable for each subject during the standing activity


#### LayingAverages

Type: Data Frame

Contents: contains the average of each variable for each subject during the laying activity

