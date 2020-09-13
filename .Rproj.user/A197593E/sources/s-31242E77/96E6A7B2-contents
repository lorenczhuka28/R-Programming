# MATRICES
# MAatrices are vectors with a dimension attribute. The dimension attribute itself is a vector of 2 elements nrow and ncol
# mAtric has elements of same class
m <- matrix(nrow=2, ncol=3)
m
m[1][1] <- 1
m
dim(m)
attributes(m)

# matrices are constructed column-wise
ma <- matrix(1:6, nrow=2, ncol=3)
ma

x <- matrix(c(0,1,1,0,1,0,1,0,1), 3, 3)
s <- solve(x) # inverse of matrix x
s

# convert vector to matrix
v <- 1:10
v
dim(v) <- c(2,5)
v
class(v)
dim(v)
attributes(v)

# create matrix by column binding and row binding
x <- 1:3
y <- 10:12
cbind(x,y) # OR we can cbind / rbind a vector with a matrix

rbind(x,y)

patients <- c("Bill", "Gina", "Kelly", "Sean")
my_matrix <- matrix(1:20, nrow=4, ncol=5)
con <- cbind(patients, my_matrix) # the result will be a matrix of string elements (numbers became strings)
my_data <- data.frame(patients, my_matrix) # dataframe can contain differnet classes
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
colnames(my_data) <- cnames # set names to data frame columns



# DATAFRAME
# Elements of dataframe can be of different classes (each column has a specific class)

df <- data.frame(foo = 1:4, bar=c(T,T,F,F))
df
dim(df)
nrow(df)
ncol(df)
object.size(df) # how much space occupies dataframe
names(df) # character vector of column names
head(df) # first 6 rows
head(df, 10) # first 10 rows
tail(df) # last 6 rows 
tail(df, 10) # last 10 rows
summary(df) # summary information of each variable(column)
table(df$bar) # distribution of bar variable (how many times each value occurs)
str(df) # general information about dataset

mydataframe <- data.frame(a = c(1,2,3,4), b = c(8,9,6,7))
mydataframe

# Load dataframe iris from datasets package
library(datasets)
data("iris")
head(iris)
data("mtcars")
head(mtcars)