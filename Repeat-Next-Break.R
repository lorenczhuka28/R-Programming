# Repeat initiates infinte loop. It is used with break

x0 <- 1
to <- 1e-8

repeat {
  coin <- rnorm(1,1, 0.5)
  if(abs(x0-coin) < to){
    break
  } else {
    x0 <- coin
  }
}


# Next is used to skip an iteration in a loop
for(i in 1:30){
  if(i<=20){
    next
  }
    print(i)
}

