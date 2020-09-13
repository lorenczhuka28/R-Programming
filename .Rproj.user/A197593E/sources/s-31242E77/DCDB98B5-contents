install.packages("swirl")
packageVersion("swirl")
library(swirl)

# WORKSPACE AND FILES

ls()  # all object in the workspace (global environment)
rm(list=ls())   # clear all variables in the global environment

swirl()


# getwd() -> find the directory of the project
# list.files() or dir() -> list all files of the project
# args(list.files) -> look arguments of a function
# dir.create("dirname") -> create new directory in the working directory
# setwd("dirname") -> set new working directory
# file.create("mytest.R") -> create new file in a working directory
# file.exists("mytest.R") -> check if a file exists in a working directory
# file.info("mytest.R") -> information about a file
# file.rename("mytest.R", "mytest2.R") -> rename a file
# file.remove("mytest.R") -> delete a file
# file.copy("mytest.R", mytestcopy.R") -> copy a file
# file.path("mytest.R") -> find relative path of a file
# file.path("folder1", "folder2") -> make a platform independent pathname folder1/folder2
# dir.create(file.path("testdir2", "testdir3), recursive=TRUE) -> in the current working directory testdir2 directory will be created and inside him the directory testdir3 will be created


TRUE & c(TRUE, FALSE, FALSE) # true will be checked (&) with each element of the vector
TRUE && c(TRUE, FALSE, FALSE) # only first element will be checked (true & true outputs true)

TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)

isTRUE(6>4) # TRUE

# All AND operators are evaluated before OR operators

5 > 8 || 6!=8 && 4 > 3.9 # TRUE

# xor -> if one element is TRUE and the other FALSE, returns TRUE, otherwise FALSE
xor(5==6, !FALSE)

ints <- sample(10)
which(ints>7) # which function takes a logical expression as argument and returns the values of vector that satisfies the condition

any(ints < 0) # any function takes a logical expression as argument and returns TRUE if one or more of the elemnets satisfies the condition
all(ints > 0) # all function takes a logical expression as argument and returns TRUE if all elemenets satisfy the condition

vektor <- c(2, NA, 3)
na <- is.na(vektor)
any(na) # check if a vector has any NA value