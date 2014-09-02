pollutantmean <- function(directory, pollutant, id = 1:332) {
  #give me a list of all the files in specdata folder
  currentwd <- paste("/Users/maodee/datasciencemod/source/module2/PA1/",directory,sep="//")
  setwd(currentwd)
  filelist <- list.files(currentwd,pattern=".csv")
  filelist <- filelist[id]
  my_selected_data <- lapply(filelist, read.csv)
  my_selected_df <- do.call(rbind, my_selected_data)
  mean(my_selected_df[, pollutant], na.rm=TRUE)
  #setwd("/Users/maodee/datasciencemod/source/module2/PA1/")
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
}