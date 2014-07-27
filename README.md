#This is the document describing how the script works and the code book describing the variables

##script working process explanation
1. read training data
2. read test data
3. merge all together into data set x
4. get all feature names and assign to x's columns
5. extracts only the measurements on the mean and sd for each measurement
6. associates data with it's activities and subjects
7. uses descriptive activity names to name the activities
8. generate tidy average data set
9.#write data set into a file named tidy_data.txt

##code book
.activity_name     			activity label name,WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING
.subject                 the NO of different volunteers, 1-30
.tBodyAcc-mean()-X       mean of measurement tBodyAcc-mean()-X for each activity_name and each subject
.tBodyAcc-mean()-Y       same as above
.tBodyAcc-mean()-Z       same as above
.tBodyAcc-std()-X        same as above
.tBodyAcc-std()-Y        ..
.tBodyAcc-std()-Z        ..
.tGravityAcc-mean()-X    ..
.tGravityAcc-mean()-Y    ..
.tGravityAcc-mean()-Z    ..
.tGravityAcc-std()-X    ..
.tGravityAcc-std()-Y    ..
.tGravityAcc-std()-Z    ..
.tBodyAccJerk-mean()-X    ..
.tBodyAccJerk-mean()-Y    ..
.tBodyAccJerk-mean()-Z    ..
.tBodyAccJerk-std()-X    ..
.tBodyAccJerk-std()-Y    ..
.tBodyAccJerk-std()-Z    ..
.tBodyGyro-mean()-X    ..
.tBodyGyro-mean()-Y    ..
.tBodyGyro-mean()-Z    ..
.tBodyGyro-std()-X    ..
.tBodyGyro-std()-Y    ..
.tBodyGyro-std()-Z    ..
.tBodyGyroJerk-mean()-X    ..
.tBodyGyroJerk-mean()-Y    ..
.tBodyGyroJerk-mean()-Z    ..
.tBodyGyroJerk-std()-X    ..
.tBodyGyroJerk-std()-Y    ..
.tBodyGyroJerk-std()-Z    ..
.tBodyAccMag-mean()    ..
.tBodyAccMag-std()    ..
.tGravityAccMag-mean()    ..
.tGravityAccMag-std()    ..
.tBodyAccJerkMag-mean()    ..
.tBodyAccJerkMag-std()    ..
.tBodyGyroMag-mean()    ..
.tBodyGyroMag-std()    ..
.tBodyGyroJerkMag-mean()    ..
.tBodyGyroJerkMag-std()    ..
.fBodyAcc-mean()-X    ..
.fBodyAcc-mean()-Y    ..
.fBodyAcc-mean()-Z    ..
.fBodyAcc-std()-X    ..
.fBodyAcc-std()-Y    ..
.fBodyAcc-std()-Z    ..
.fBodyAccJerk-mean()-X    ..
.fBodyAccJerk-mean()-Y    ..
.fBodyAccJerk-mean()-Z    ..
.fBodyAccJerk-std()-X    ..
.fBodyAccJerk-std()-Y    ..
.fBodyAccJerk-std()-Z    ..
.fBodyGyro-mean()-X    ..
.fBodyGyro-mean()-Y    ..
.fBodyGyro-mean()-Z    ..
.fBodyGyro-std()-X    ..
.fBodyGyro-std()-Y    ..
.fBodyGyro-std()-Z    ..
.fBodyAccMag-mean()    ..
.fBodyAccMag-std()    ..
.fBodyBodyAccJerkMag-mean()    ..
.fBodyBodyAccJerkMag-std()    ..
.fBodyBodyGyroMag-mean()    ..
.fBodyBodyGyroMag-std()    ..
.fBodyBodyGyroJerkMag-mean()    ..
.fBodyBodyGyroJerkMag-std()    ..