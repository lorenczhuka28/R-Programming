# Subsetting a vector
# [] single brackets return element of same class of parent element
# [[]] double brackets return element of another class
# $ is used to extract elements by name

# Subsetting by numeric condition
vek1 <- c("a", "b", "c", "c", "d", "a")
vek1[1]
vek1[2]
vek1[1:4]

# Subsetting by logical condition
vek1[vek1 > "a"]

# OR we can pass as index a logical vector
u <- vek1 > "a"
u
vek1[u]

# my_date is vector of random values including NA values
my_data[1:10] # subset elements from index 1 to 10 (first element is at index 1)

my_data[is.na(my_data)] # subset NA elements
non_na <- my_data[!is.na(my_data)] # subset non NA elements
non_na[non_na > 0] # subset positive elements from non_na vector
my_data[!is.na(mydata) & my_data > 0 ] # subset non NA values and postive values
non_na[c(3,5,7)] # get 3d, 5th, 7th element of non_na vector
non_na[c(-3, -5, -7)] # get all elements of non_na vector expect 3d, 5th, 7th element OR non_na[-c(3, 5, 7)]

new <- c(foo = 11, bar = 2, norf = NA)
names(new) # get names of new vector
new["bar"] # get element by name
new[c("foo", "bar")]

another <- c(11, 2, norf)
names(another) <- c("foo", "bar", "norf") # set names to each value in a vector
identical(new, another) # return true of 2 vectors are identical


# Subsetting a list
mylist <- list(foo=1:4, bar=0.6)
mylist[1] # this is element is a list
mylist[[1]] # this element is a sequence

mylist$bar
mylist[["bar"]]
mylist["bar"]

alist <- list(foo=1:4, bar=0.6, baz="hello")
alist[c(1,3)] #list

name <- "foo"
alist[[name]]
alist$name # Returns NULL
alist$foo # Returns sequence 1:4

# Subnetting matrixes
mat <- matrix(1:6, 2, 3)
mat
mat[1,3] #returns a vector of length 1 (1 element)
mat[2,1]
mat[1, ] # returns a vector of length 3 (first row)
mat[ ,2]
mat[1,3, drop=FALSE] #return a 1x1 matrix
mat[1, , drop=FALSE] # return a 1x3 matrix
mat[ , 1:3] # dataframe
mat[ , c("colum1name", "column2name")] # dataframe
mat[ , "columnname"] # vector
mat$columnname # vector