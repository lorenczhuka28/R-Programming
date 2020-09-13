# Debugging
# Message, Warning, Error. Only errors stops the execution

log(-1) # NaN produced, Warning

printmessage <- function(x){
        if(x > 0){
          print("X greater than zero")
        }
        else{
          print("X less or equal to zero")
        }
      invisible(x) # returns x and R does not autoprinting (need print function to print)
}

printmessage(1)
var <- printmessage(2)
var # prints 2

printmessage(NA) # error

printmessage2 <- function(x){
      if(is.na(x)){
        print("X is NA")
      }
      else if(x > 0){
        print("X greater than zero")
      }
      else{
        print("X less or equal to zero")
      }
  
      invisible(x)
}

x <- log(-1)
printmessage2(x)

# Debugging tools are traceback, debug, browser, trace, recover

mean(my)
traceback() # traceback shows the most recent error, shows where the error occurs

lm(y - x)
traceback() # the level occurs on the 4th level
debug(lm)
lm(y - x) # press n to run each line of the function code

options(error = recover)
read.csv("nosuchfile") # the menu is called function call stack to look at each function (each level)
# read.csv() calls read.table() which calls file() to connect to file. Here occurs the error (at the 3d level)



