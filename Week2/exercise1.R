
pollutantmean <- function(directory, pollutant, id = 1:332){
  setwd(paste("C:/Users/HP/DataScience/DataScience-R-Course/R-Programming/", directory, sep = ""))
  dataframe <- data.frame()
  
  for (i in id){
    if(i < 10){
      df <- read.csv(paste("00", i, ".csv", sep = ""))
      dataframe <- rbind(dataframe, df)
  }
  else if(i < 100){
      dfx <- read.csv(paste("0", i, ".csv", sep = ""))
      dataframe <- rbind(dataframe, dfx)
  }
  }
  
  na <- is.na(dataframe[ , pollutant])
  mean(dataframe[ , pollutant][!na])
  
  #mean(dataframe[ , pollutant], na.rm = TRUE)
}

pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate")
pollutantmean("specdata", "nitrate", 23)

setwd("C:/Users/HP/DataScience/DataScience-R-Course/R-Programming/testdir")
df1 <- read.csv("001.csv")
nrow(df1)
df2 <- read.csv("002.csv")
nrow(df2)


getwd()

setwd(paste("C:/Users/HP/DataScience/DataScience-R-Course/R-Programming/", "specdata", sep = ""))
df <- read.csv(paste("00", 4, ".csv", sep = ""))
head(df)
