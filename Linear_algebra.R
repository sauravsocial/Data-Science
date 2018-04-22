install.packages("pracma",dependencies = T)
library(pracma)
A= matrix(c(1,2,3,2,4,6,1,0,0),3,3,F)
Rank(A)
rank(A)
inv(A)
library(MASS)
b= matrix(c(1,2,5),ncol=1,byrow = F)
x= ginv(A)%*%b

A= matrix(c(1,2,1,1),2,2,T)
A
B= matrix(c(1,1,1,1),2,2,T)
B
Rank(A)

A= matrix(c(1,2,2,3,4,7,-2,0,6),3,3,T)
