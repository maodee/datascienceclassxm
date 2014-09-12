library(data.table)
library(reshape2)
createTidy <-function() {
  
  #Step 1, merge both training and test set
  
  #reading training set
  train_x<-read.table("train/X_train.txt")
  train_y<-read.table("train/Y_train.txt")
  colnames(train_y)<-c("Act")
  #one field only
  train_sub<-data.frame(read.table("train/subject_train.txt"))
  colnames(train_sub)<-c("Subject")
  sub_train <- cbind(train_x, train_y, train_sub)
  
  #reading test set
  test_x<-read.table("test/X_test.txt")
  test_y<-read.table("test/Y_test.txt")
  colnames(test_y)<-c("Act")
  test_sub<-read.table("test/subject_test.txt")
  colnames(test_sub)<-c("Subject")
  sub_test <- cbind(train_x, train_y, train_sub)
  
  total_train_test<-data.table(rbind(sub_train,sub_test))
  
  #Step 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
  
  #need to grep those text from features matching mean() and std
  features<-read.table("features.txt")
  ext_features<-paste("V",as.character(grep("mean|std",read.table("features.txt")[,2])),sep="")
  ext_features<-append(ext_features,c("Act","Subject"))
  
  extracted_set <- total_train_test[,c(ext_features), with=FALSE]
  
  #Step 3 Uses descriptive activity names to name the activities in the data set
  #need to set the labels in "Value Y" to the respective labels, 
  # 1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING
  
  activity_labels <-read.table("activity_labels.txt")
  
  #using mutate and if else to check the different ids to match the activity labels
  extracted_set<-mutate(extracted_set,Act, Activity=ifelse(extracted_set$Act==1,"WALKING", ifelse(extracted_set$Act==2,"WALKING_UPSTAIRS",ifelse(extracted_set$Act==3,"WALKING_DOWNSTAIRS", ifelse(extracted_set$Act==4,"SITTING",ifelse(extracted_set$Act==5,"STANDING",ifelse(extracted_set$Act==6,"LAYING","NA")))))))
  extracted_set<-subset(extracted_set, select=-Act)
  
  #Step 4 - Appropriately labels the data set with descriptive variable names. 
  ext_features_id<-grep("mean|std",read.table("features.txt")[,2])
  names_of_cols <-features[c(ext_features_id),]
  names_of_cols <- as.character(names_of_cols[,"V2"])
  names_of_cols<-append(names_of_cols,c("Subject","Activity"))
  setnames(extracted_set,names(extracted_set),names_of_cols)
  
  #Step 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  #melt the data by using subject and activity
  melt_ex_data <-melt(extracted_set,id=c("Subject","Activity"))
  
  #compute the mean of each variable using dcast
  melt_ex_data <-dcast(melt_ex_data, Subject + Activity ~ variable, mean)
  write.table(melt_ex_data, "tidy.txt", row.name=FALSE)  
  
}