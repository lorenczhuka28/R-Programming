# Subsetting partial matching

my <- list(aardvk = 1:5)
my$a # return first element that beginns with 'a'
my[["a"]] # returns NULL
my[["a", exact=FALSE]]


first <- c(1, 2, NA, 5)
bad <- is.na(first)
first[!bad]

x1 <- c(1, 2, NA, 4, NA, 5)
x2 <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x1, x2) # return logical vector : TRUE if both elements are not NaN else FALSE
good
x1[good]
x2[good]
