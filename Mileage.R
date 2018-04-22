library(xlsx)
df= read.xlsx(file.choose(),1,header = T)
summary(df)

k= 1/9
lambda= 0.02
e= exp(-lambda)
answer= e* (lambda**k)
answer= answer/ (factorial(lambda))
answer

x= list(70, 67, 62, 68, 61, 68, 70, 64, 64, 66)

X=c(5.6, 2.3, 8.5, 6.6, 5.9)
Y=c( 4.1, 6.3, 7.4, 6.9, 5.5)
