#Codebook

##Foreword
Please note that this codebook is a data dictionary describing the variables used. Any instructions to run the script and the data source are mentioned in the README.md. 

##Reference
This format is based purely from the codebook at the following url https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf using in one of the Quizzes for this module

##Initial Variable Description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##Variable Selection
The variables that were selected from the original dataset are only those calculated for mean and std. 

##Final Variables
The final variables are average of each variable (excluding Activity, and Subject) for each activity and each subject. Activity with ID of 1-6 were transformed to their respective textual values.

##Variable Description

####tBodyAcc-mean()-X
Type: numeric
Description: Average of Time body accelerometer on the x axis based on activity and subject using the mean variable

####tBodyAcc-mean()-Y
Type: numeric
Description: Average of Time body accelerometer on the y axis based on activity and subject using the mean variable

####tBodyAcc-mean()-Z
Type: numeric
Description: Average of Time body accelerometer on the z axis based on activity and subject using the mean variable


####tBodyAcc-std()-X
Type: numeric
Description: Average of Time body accelerometer on the X axis based on activity and subject using standard deviation variable

####tBodyAcc-std()-Y
Type: numeric
Description: Average of Time body accelerometer on the Y axis based on activity and subject using standard deviation variable

####tBodyAcc-std()-Z
Type: numeric
Description: Average of Time body accelerometer on the Z axis based on activity and subject using standard deviation variable

####tGravityAcc-mean()-X
Type: numeric
Description: Average of Time gravity accelerometer on the X axis based on activity and subject using mean variable

####tGravityAcc-mean()-Y
Type: numeric
Description: Average of Time gravity accelerometer on the Y axis based on activity and subject using mean variable

####tGravityAcc-mean()-Z
Type: numeric
Description: Average of Time gravity accelerometer on the Z axis based on activity and subject using mean variable

####tGravityAcc-std()-X
Type: numeric
Description: Average of Time gravity accelerometer on the X axis based on activity and subject using standard deviation variable

####tGravityAcc-std()-Y
Type: numeric
Description: Average of Time gravity accelerometer on the Y axis based on activity and subject using standard deviation variable

####tGravityAcc-std()-Z
Type: numeric
Description: Average of Time gravity accelerometer on the Z axis based on activity and subject using standard deviation variable

####tBodyAccJerk-mean()-X
Type: numeric
Description: Average of Time body jerk accelerometer on the X axis based on activity and subject using mean variable

####tBodyAccJerk-mean()-Y
Type: numeric
Description: Average of Time body jerk accelerometer on the Y axis based on activity and subject using mean variable

####tBodyAccJerk-mean()-Z
Type: numeric
Description: Average of Time body jerk accelerometer on the Z axis based on activity and subject using mean variable

####tBodyAccJerk-std()-X
Type: numeric
Description: Average of Time body jerk accelerometer on the X axis based on activity and subject using standard deviation variable

####tBodyAccJerk-std()-Y
Type: numeric
Description: Average of Time body jerk accelerometer on the Y axis based on activity and subject using standard deviation variable

####tBodyAccJerk-std()-Z
Type: numeric
Description: Average of Time body jerk accelerometer on the Z axis based on activity and subject using standard deviation variable

####tBodyGyro-mean()-X
Type: numeric
Description: Average of Time body gyroscope on the X axis based on activity and subject using mean variable

####tBodyGyro-mean()-Y
Type: numeric
Description: Average of Time body gyroscope on the Y axis based on activity and subject using mean variable

####tBodyGyro-mean()-Z
Type: numeric
Description: Average of Time body gyroscope on the Z axis based on activity and subject using mean variable

####tBodyGyro-std()-X
Type: numeric
Description: Average of Time body gyroscope on the X axis based on activity and subject using standard deviation variable

####tBodyGyro-std()-Y
Type: numeric
Description: Average of Time body gyroscope on the Y axis based on activity and subject using standard deviation variable

####tBodyGyro-std()-Z
Type: numeric
Description: Average of Time body gyroscope on the Z axis based on activity and subject using standard deviation variable

####tBodyGyroJerk-mean()-X
Type: numeric
Description: Average of Time body gyroscope jerk on the X axis based on activity and subject using mean variable

####tBodyGyroJerk-mean()-Y
Type: numeric
Description: Average of Time body gyroscope jerk on the Y axis based on activity and subject using mean variable

####tBodyGyroJerk-mean()-Z
Type: numeric
Description: Average of Time body gyroscope jerk on the Z axis based on activity and subject using mean variable

####tBodyGyroJerk-std()-X
Type: numeric
Description: Average of Time body gyroscope jerk on the X axis based on activity and subject using standard deviation variable

####tBodyGyroJerk-std()-Y
Type: numeric
Description: Average of Time body gyroscope jerk on the Y axis based on activity and subject using standard deviation variable

####tBodyGyroJerk-std()-Z
Type: numeric
Description: Average of Time body gyroscope jerk on the Z axis based on activity and subject using standard deviation variable

####tBodyAccMag-mean()
Type: numeric
Description: Average of Time body acceleration magnitude based on activity and subject using mean variable

####tBodyAccMag-std()
Type: numeric
Description: Average of Time body acceleration magnitude based on activity and subject using standard deviation variable

####tGravityAccMag-mean()
Type: numeric
Description: Average of Time gravity acceleration magnitude based on activity and subject using mean variable

####tGravityAccMag-std()
Type: numeric
Description: Average of Time gravity acceleration magnitude based on activity and subject using standard deviation variable

####tBodyAccJerkMag-mean()
Type: numeric
Description: Average of Time body acceleration jerk magnitude based on activity and subject using mean variable

tBodyAccJerkMag-std()
Type: numeric
Description: Average of Time body acceleration jerk magnitude based on activity and subject using standard deviation variable

####tBodyGyroMag-mean()
Type: numeric
Description: Average of Time body gyroscope  magnitude based on activity and subject using mean variable

####tBodyGyroMag-std()
Type: numeric
Description: Average of Time body gyroscope magnitude based on activity and subject using standard deviation variable

####tBodyGyroJerkMag-mean()
Type: numeric
Description: Average of Time body gyroscope jerk magnitude based on activity and subject using mean variable

####tBodyGyroJerkMag-std()
Type: numeric
Description: Average of Time body gyroscope jerk magnitude based on activity and subject using standard deviation variable

####fBodyAcc-mean()-X
Type: numeric
Description: Average of frequency domain signals body accelerator on the X axis based on activity and subject using mean variable

####fBodyAcc-mean()-Y
Type: numeric
Description: Average of frequency domain signals body accelerator on the Y axis based on activity and subject using mean variable

####fBodyAcc-mean()-Z
Type: numeric
Description: Average of frequency domain signals body accelerator on the Z axis based on activity and subject using mean variable

####fBodyAcc-std()-X
Type: numeric
Description: Average of frequency domain signals body accelerator on the X axis based on activity and subject using standard deviation variable

####fBodyAcc-std()-Y
Type: numeric
Description: Average of frequency domain signals body accelerator on the Y axis based on activity and subject using standard deviation variable

####fBodyAcc-std()-Z
Type: numeric
Description: Average of frequency domain signals body accelerator on the Z axis based on activity and subject using standard deviation variable

####fBodyAcc-meanFreq()-X
Type: numeric
Description: Average of frequency domain signals body accelerator on the X axis based on activity and subject using mean frequency variable

####fBodyAcc-meanFreq()-Y
Type: numeric
Description: Average of frequency domain signals body accelerator on the Y axis based on activity and subject using mean frequency variable

####fBodyAcc-meanFreq()-Z
Type: numeric
Description: Average of frequency domain signals body accelerator on the Z axis based on activity and subject using mean frequency variable

####fBodyAccJerk-mean()-X
Type: numeric
Description: Average of frequency domain signals body accelerator jerk on the X axis based on activity and subject using mean variable

####fBodyAccJerk-mean()-Y
Type: numeric
Description: Average of frequency domain signals body accelerator jerk on the Y axis based on activity and subject using mean variable

####fBodyAccJerk-mean()-Z
Type: numeric
Description: Average of frequency domain signals body accelerator jerk on the Z axis based on activity and subject using mean variable

####fBodyAccJerk-std()-X
Type: numeric
Description: Average of frequency domain signals body accelerator jerk on the X axis based on activity and subject using standard deviation variable

####fBodyAccJerk-std()-Y
Type: numeric
Description: Average of frequency domain signals body accelerator jerk on the Y axis based on activity and subject using standard deviation variable

####ffBodyAccJerk-std()-Z
Type: numeric
Description: Average of frequency domain signals body accelerator jerk on the Z axis based on activity and subject using standard deviation variable

####fBodyAccJerk-meanFreq()-X
Type: numeric
Description: Average of frequency domain signals body accelerator jerk on the X axis based on activity and subject using mean frequency variable

####fBodyAccJerk-meanFreq()-Y
Type: numeric
Description: Average of frequency domain signals body accelerator jerk on the Y axis based on activity and subject using mean frequency variable

####fBodyAccJerk-meanFreq()-Z
Type: numeric
Description: Average of frequency domain signals body accelerator jerk on the Z axis based on activity and subject using mean frequency variable

####fBodyGyro-mean()-X
Type: numeric
Description: Average of frequency domain signals body gyroscope on the X axis based on activity and subject using mean variable

####fBodyGyro-mean()-Y
Type: numeric
Description: Average of frequency domain signals body gyroscope on the Y axis based on activity and subject using mean variable

####fBodyGyro-mean()-Z
Type: numeric
Description: Average of frequency domain signals body gyroscope on the Z axis based on activity and subject using mean variable

####fBodyGyro-std()-X
Type: numeric
Description: Average of frequency domain signals body gyroscope on the X axis based on activity and subject using standard deviation variable

####fBodyGyro-std()-Y
Type: numeric
Description: Average of frequency domain signals body gyroscope on the Y axis based on activity and subject using standard deviation variable

####fBodyGyro-std()-Z
Type: numeric
Description: Average of frequency domain signals body gyroscope on the Z axis based on activity and subject using standard deviation variable

####fBodyGyro-meanFreq()-X
Type: numeric
Description: Average of frequency domain signals body gyroscope on the X axis based on activity and subject using mean frequency variable

####fBodyGyro-meanFreq()-Y
Type: numeric
Description: Average of frequency domain signals body gyroscope on the Y axis based on activity and subject using mean frequency variable

####fBodyGyro-meanFreq()-Z
Type: numeric
Description: Average of frequency domain signals body gyroscope on the Z axis based on activity and subject using mean frequency variable

####fBodyAccMag-mean()
Type: numeric
Description: Average of frequency domain signals body accelerator magnitude based on activity and subject using mean variable

####fBodyAccMag-std()
Type: numeric
Description: Average of frequency domain signals body accelerator magnitude based on activity and subject using standard deviation variable

####fBodyAccMag-meanFreq()
Type: numeric
Description: Average of frequency domain signals body accelerator magnitude based on activity and subject using mean frequency variable


####fBodyBodyAccJerkMag-mean()
Type: numeric
Description: Average of frequency domain signals body accelerator jerk magnitude based on activity and subject using mean variable

####fBodyBodyAccJerkMag-std()
Type: numeric
Description: Average of frequency domain signals body accelerator jerk magnitude based on activity and subject using standard deviation variable

####fBodyBodyAccJerkMag-meanFreq()
Type: numeric
Description: Average of frequency domain signals body gyroscope magnitude based on activity and subject using mean frequency variable

####fBodyBodyGyroMag-mean()
Type: numeric
Description: Average of frequency domain signals body gyroscope  magnitude based on activity and subject using mean variable

####fBodyBodyGyroMag-std()
Type: numeric
Description: Average of frequency domain signals body gyroscope magnitude based on activity and subject using standard deviation variable

####fBodyBodyGyroMag-meanFreq()
Type: numeric
Description: Average of frequency domain signals body gyroscope magnitude based on activity and subject using mean frequency variable

####fBodyBodyGyroJerkMag-mean()
Type: numeric
Description: Average of frequency domain signals body gyroscope jerk magnitude based on activity and subject using mean variable

####fBodyBodyGyroJerkMag-std()
Type: numeric
Description: Average of frequency domain signals body gyroscope jerk magnitude based on activity and subject using standard deviation variable

####fBodyBodyGyroJerkMag-meanFreq()
Type: numeric
Description: Average of frequency domain signals body gyroscope jerk magnitude based on activity and subject using mean frequency variable

####Subject
Type: int
Description: The subject id used in the data set, ranges from 1-30

####Activity
Type: character
Description: The various type of activities involved in the dataset, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
