corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  
  currentwd <- paste("/Users/maodee/datasciencemod/source/module2/PA1/",directory,sep="//")
  setwd(currentwd)
  filelist <- list.files(currentwd,pattern=".csv")
  filelist <- filelist[1:332]
  my_selected_data <- lapply(filelist, read.csv)
  my_selected_df <- do.call(rbind, my_selected_data)
  my_selected_df <- na.omit(my_selected_df);
  final_return_df <- data.frame("id"=numeric(), "nobs"=numeric())
  result <-vector()
  for (selected_id in 1:332)
  {
    nobs <- nrow(my_selected_df[my_selected_df$ID==selected_id,])
    cases <- my_selected_df[my_selected_df$ID==selected_id,]
    
    if (nobs >= threshold){
      result <- c(result, cor(cases$nitrate, cases$sulfate))
  }
     
  }
  result

} 