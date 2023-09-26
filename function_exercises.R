pollutantmean <- function (directory, pollutant, id = 1:332) {
  x <- NULL
  
  for (i in id) {
    path <- paste(sprintf("%03d", i), ".csv", sep="")
    file <- read.csv(paste(directory, "/", path, sep=""))
    pol <- as.array(file$pollutant)
    pol <- replace(pol, is.na(pol), 0)
    pol <- as.double(pol)
    
    if (is.null(x)) {
      x <- vector(pol)
    } else {
      x <- rbind(x, pol)
    }
  }
  
  mean_x <- mean(x, na.rm=TRUE)
  mean_x
}




pollutantmean("specdata", "sulfate", 1:20)

directory <- "specdata"
pollutant <- "sulfate"
file$sulfate
x
