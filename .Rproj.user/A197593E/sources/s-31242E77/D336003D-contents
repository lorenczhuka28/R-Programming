# FOR LOOP

for(i in 1:10){
  print(i)
}


# These 3 loops have the same behaviour.
char <- c("a", "b", "c", "d")

for(i in 1:4){
  print(char[i])
}

for(i in seq_along(char)){    # seq_along returns a sequence 1:4
  print(char[i])
}

for(element in char){
  print(element)
}


mymat <- matrix(1:6, 2, 3)

for(i in seq_len(nrow(mymat))){   # seq_len takes nr rows/columns as argument and return a sequence from 1 to that number
  for(j in seq_len(ncol(mymat))){
    print(mymat[i,j])
  }
}


# WHILE LOOP 
count <- 0
while(count < 10){
  print(count)
  count <- count + 1
}

z <- 5
while(z>=3 && z<=10){
  print(z)
  coin <- rbinom(1, 1, 0.5)
  
  if(coin == 1){
    z <- z + 1
  }
  else {
    z <- z - 1
  }
}