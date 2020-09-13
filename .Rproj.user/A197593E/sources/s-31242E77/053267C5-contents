
corr <- function(directory, threshold = 0){
      setwd(paste("C:/Users/HP/DataScience/DataScience-R-Course/R-Programming/", directory, sep = ""))
      new <- vector("numeric")  # empty vector
      index <- 1
      
      for(i in 1:332){
        nr_cases <- 0 
        sulfate <- vector("numeric")
        nitrate <- vector("numeric")
        
        if(i < 10){
          df <- read.csv(paste("00", i, ".csv", sep = ""))
          ind <- 1
          for(j in 1:nrow(df)){
            row <- df[j, ]
            na <- is.na(row)
            if(any(na) == FALSE){
              nr_cases <- nr_cases + 1
            }
            
            if(!is.na(df[j, "sulfate"]) & !is.na(df[j, "nitrate"])){
              sulfate[ind] <- df[j , "sulfate"]
              nitrate[ind] <- df[j , "nitrate"]
              ind <- ind + 1
            }
          }
          
          if(nr_cases > threshold){
            if(length(sulfate) > 0 & length(nitrate) > 0){
              correlation <- cor(sulfate, nitrate)
              new[index] <- correlation
              index <- index + 1
            }
          }
        }
        else if(i < 100){
          df <- read.csv(paste("0", i, ".csv", sep = ""))
          for(j in 1:nrow(df)){
            row <- df[j, ]
            na <- is.na(row)
            if(any(na) == FALSE){
              nr_cases <- nr_cases + 1
            }
            
            if(!is.na(df[j, "sulfate"]) & !is.na(df[j, "nitrate"])){
              sulfate[ind] <- df[j , "sulfate"]
              nitrate[ind] <- df[j , "nitrate"]
              ind <- ind + 1
            }
          }
          
          if(nr_cases > threshold){
            if(length(sulfate) > 0 & length(nitrate) > 0){
              correlation <- cor(sulfate, nitrate)
              new[index] <- correlation
              index <- index + 1
            }
            
          }
        }
        
      }
      
      new
}

corr("specdata", 150)


cor(c(2,1), c(5,4,6))

2 = NA
