
#Data Set Source
The original data set to be used in this analysis is based on the following, 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Pre-requsities to running the run_analysis.r
1. Please download the file from the link above (Data Set Source)
2. Please refer to codebook.md for details on the variables used in tidy.txt
3. Please unzip the Data Set into your desired folder.
4. Set your working directory accurately
5. Make sure the following folder structure is available when runnning the script,
  *your folder
    *data folder
      *train (folder)
      *test (folder)
      *activity_labels.txt
      *features.txt
      *run_analysis.r
      *codebook.md
      *README.md
6. source("run_analysis.r")
7. createTidy()
8. Check the workspace directory for "tidy.txt" as the output of the file

#Script Explaination
1. Loading libraries
Before the function is called, the script will call 2 load functions to load data.table and reshape.

2. Function name: createTidy()
This function will contain the 5 steps required create the tidy data

3. Step 1, merge both training and test set
The train and test data sets are read from their respective folders. Using cbind, the respective data sets are combined together first with their activity values and the subject values. Upon a completed of train and test, they are combined together using rbind to form a complete data set.

4. Step 2, Extracts only the measurements on the mean and standard deviation for each measurement
The features.txt information is read to for the grep to take place. Using the grep function, any text that matches mean or std are returned with their respective ids. Using the respective ids, the text are paste together with a keyword V to form the actual variable names to extract. Act and subject were appended to this as well to form the basis of column extraction from the complete data set.

5. Step 3 Use descriptive activity names to name the activities in the data set
The objective here is to rename the various activities numbered in 1-6 to their actual descriptive names. Using the mutate function, a new column was created using the ifelse statement to determine the column id value to match it with its descriptive name. After the mutate operation is complete, the original Act column containing the activity id is removed.

6. Step 4 - Appropriately labels the data set with descriptive variable names.
In this step, the labels were derived from their original feature names with no changes made to them. After extracting the names, using the setnames method, the old names with V1.. were renamed accordingly to the descriptive label names

7. Step 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Using the melt variable, the extracted complete data set was first melted down based on id variables of subject and activity. Subsequently, using the dcast, the computation of each variable's mean based on subject and activity were computed.

8. tidy.txt
Lastly, using the write.table function with row.name = FALSE, the tidy file is created.


