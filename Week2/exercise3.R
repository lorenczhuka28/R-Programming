
complete <- function(directory, id = 1:332){
  setwd(paste("C:/Users/HP/DataScience/DataScience-R-Course/R-Programming/", directory, sep = ""))
  dataframe <- data.frame()
  
  index <- 1
  
  for (i in id){
  
    if(i < 10){
      df <- read.csv(paste("00", i, ".csv", sep = ""))
      nr_cases <- 0
      for(j in 1:nrow(df)){
        row <- df[j, ]
        na <- is.na(row)
        if(any(na) == FALSE){
          nr_cases <- nr_cases + 1
        }
      }
      
      dataframe[index, 1] <- i # i is ID of monitor
      dataframe[index, 2] <- nr_cases
      index <- index + 1
      
    }
    else if(i < 100){
      df <- read.csv(paste("0", i, ".csv", sep = ""))
      nr_cases <- 0
      for(j in 1:nrow(df)){
        row <- df[j, ]
        na <- is.na(row)
        if(any(na) == FALSE){
          nr_cases <- nr_cases + 1
        }
      }
      
      dataframe[index, 1] <- i # i is ID of monitor
      dataframe[index, 2] <- nr_cases
      index <- index + 1
    }
  }
  
  #nr_cases
  nam <- c("id", "nobs")
  colnames(dataframe) <- nam
  dataframe
}


RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

complete("specdata", 30:25)
df <- read.csv("005.csv")
nrow(df)

vektor <- c(2, 5, 3)
na <- is.na(vektor)
any(na)


dataframe <- data.frame()
dataframe[1,1] <- 1
dataframe

