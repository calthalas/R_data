pollutantmean <- function(directory, pollutant, id = 1:332)  {
  files_list <- list.files(directory, full.names=TRUE)
  dat <- data.frame()                             
  for (i in 1:332) {                                
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  for (i in id) {
  if(pollutant == "sulfate") {
    dat_subset <- subset(dat, select = "sulfate")
    median(dat_subset[, "sulfate"], na.rm=TRUE) 
  } else {
    dat_subset <- subset(dat, select = "nitrate")
    median(dat_subset[, "nitrate"], na.rm=TRUE) 
  }
  }
}