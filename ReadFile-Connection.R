file1 <- file("foo.txt", "r")
data <- read.csv(file1)
data

# same as

data <- read.csv("foo.txt")


# Read first 10 Lines from a compressed gz file
file2 <- gzfile("word.gz")
data <- readLines(file2, 10)
data


con <- url("http://jhsp.edu", "r")
data <- readLines(con)
head(data)