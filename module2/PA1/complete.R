complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  currentwd <- paste("/Users/maodee/datasciencemod/source/module2/PA1/",directory,sep="//")
  setwd(currentwd)
  filelist <- list.files(currentwd,pattern=".csv")
  filelist <- filelist[id]
  my_selected_data <- lapply(filelist, read.csv)
  my_selected_df <- do.call(rbind, my_selected_data)
  my_selected_df <- na.omit(my_selected_df);
  final_return_df <- data.frame("id"=numeric(), "nobs"=numeric())
    for (selected_id in id)
    {
        nobs = nrow(my_selected_df[my_selected_df$ID==selected_id,])
        final_return_df <- rbind(final_return_df, c(selected_id,nobs))
    }
  names(final_return_df)[1]="id"
  names(final_return_df)[2]="nobs"
  final_return_df
}