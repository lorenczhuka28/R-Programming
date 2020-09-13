
# 1- We can generate samples from specific probability distribution with r* functions
# 2- We can generate samples from arbitrary vectors

set.seed(1)
sample(1:10, 4) # generate 4 number from 1-10 without replacement
sample(1:10, 4)
sample(1:10, 4)

sample(letters, 5) # letters is a character vector from a to z
sample(1:10) # permutation
sample(1:10)
sample(1:10, replace = TRUE) # permutation with replacement
sample(1:10, 4, replace=TRUE)

# 100 hedhje zari ku 0 tregon koke dhe 1 pil. Probabiliteti qe bie koke eshte 0.3 dhe qe bie pil eshte 0.7
# Rrjedhimisht nga 100 hedhje rreth 70% do jene 1 pil dhe 30 % koke 0
flips <- sample(c(0,1), 100, replace=TRUE, prob=c(0.3, 0.7))
sum(flips) # 81 pil