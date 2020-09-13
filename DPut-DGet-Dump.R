# DPut produces new file of text presentations(metdaata) of R objects and takes 1 R object as argument.
# We dont need to specify attributes of dataframe when we create dataframe, instead we use this function.
# DGet is used to read R Object in files into R.
df1 <- data.frame(a=1, b="a")
df1

dput(df1)

dput(df1, file="new.R")
new.df1 <- dget("new.R")
new.df1


# Dump is like DPut but it takes a vector of R objects and it is used with source.
var4 <- "foo"
var5 <- data.frame(a=1, b="a")
dump(c("var4", "var5"), file="data.R")
rm(var4, var5) # rm function is used te remove R objects
source("data.R") # R objects are loaded into R
var5
var4
