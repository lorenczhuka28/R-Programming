ls <- function(x){
    x*x
}

ls

rm(ls)
# if we define a function name that already is a built in function in a package R will call the function which we defined (global evironment)
# then will search the function in the package(stats) (in the order of the search())
# when the user loads a package with library function it will be in the second position in the search list after the global environment

search() # R packages


# Inside a function can be defined another function and it will be returned
make.power <- function(n){
        pow <- function(x){
              x^n
        }
        
        pow
  
}

cube <- make.power(3)
square <- make.power(2)
cube(3)
square(3)

ls(environment(cube))
get("n", environment(square))


y <- 10 

first <- function(x){
         y<-2
         y^2 + second(x)
}

second <- function(x){
          x*y  # y is a free variable
}

first(4)