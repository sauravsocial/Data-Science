subject = c("sci","mat","eng"); Ram = c(65,30,67); Geetha=c(87,89,75) 
emp.names=c("Man","Rag","Sha","Din")
num.emp=4
ID= c(1,2,3,4)
emp.list= list(ID,emp.names,num.emp)
emp.list
emp.list= list("id"=ID,"Names"=emp.names,"Total staff"=num.emp)
print(emp.list$Names)
print(emp.list[1])
print(emp.list[[1]])
print(emp.list[[1]][1])
substr(emp.list[[2]][1],2,3)

####DATA FRAMES###
vec1= c(1,2,3)
vec2= c("R","Scala","Java")
vec3= c("For prototyping", "For protoyping","For scalability")
df= data.frame(vec1,vec2,vec3)
source_path="C:/Users/Harshit/Desktop/NPTEL COURSES/Business Analytics in R/"
newDF= read.table(file= "Business Analytics in R/NaughtyBicycle.xlsx")

pd= data.frame("Name"= c("Senthil","Senthil","Sam","Sam"),
               "Month"=c(month.abb[1],month.abb[2],month.abb[1],month.abb[2]),
               "BS"=c(141.2,139.3,135.2,160.1),
               "BP"=c(90,78,80,81))
pd2= subset(pd,Name=="Senthil"| BS>150) 

df= rbind(df,data.frame(vec1=4,vec2="c",vec3="For scaleup"))
df= cbind(df,vec4=c(10,20,30,40))
df2= df[-3,-1]
df3= df[,!names(df)%in%c("vec3")]
df4= df[!df$vec1==3,]

#REcasting dataframes
library(reshape2)

Df= melt(pd,id.vars = c("Name","Month"),measure.vars = c("BS","BP"))

Df2=dcast(Df,variable+Month ~ Name, value.var = "value")

Df3= recast(pd,variable+Month ~ Name, id.var=c("Name","Month"))

library(dplyr)
pd2<- mutate(pd,logBP=log(BP))

pd_new= data.frame("Name"=c("Senthil","Ramesh","Sam"),
                   "Department"=c("PSE","Data Analytics","PSE"))

pd_left_join1=left_join(pd,pd_new,by= "Name")

# Matrices & Arithmetics
A=matrix(c(1,2,3,4,5,6,7,8,9)) 
B=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3)
C=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3, byrow = T)
# OR matrix(1:9,3,3,T)
D=matrix(3,4,5)
E= diag(c(4,5,6),3,3)
colnames(B)<- c("a","b","c")
rownames(B)<- c("d","e","f")
t(B)#transpose
A%*%B # regular multiplcation 
A*B  # elementwise
A/B  # elementwise

vol= function(dia,len){
  ans= pi*(dia^2)*len/4
    return(ans)
}
A=matrix(1:9,3,3,T)
apply(A,1,sum)
apply(A,2,sum)
B=matrix(10:18,3,3)
myList= list(A,B)
determinant= lapply(myList, det)
mapply(det,myList)
tapply(A,B,sum)
id= c(1,1,1,1,2,2,2,3,3,4,4)
values= c(1,2,3,4,5,6,7,8,9,10,-1)
tapply(values, id, sum)
seq(from=0,to=100,length=4)
for(i in seq(1,10,0.5)){
  print(c(i,i+10))
}

#PLOTS 

#-> Scatter Plot

x=1:10
y=x^2
plot(y)

plot(mtcars$wt, mtcars$mpg, main="ScatterPlot for cars",
     xlab= "Car Weight", ylab="Miles per Gallon", pch= 19)
plot(x,y,type = 'l')

# Bar plots

H<-c(7,12,28,3,41)
M<-c(month.abb[3:7])
barplot(H, names.arg = M, xlab= "Month", ylab= "Revenue", col= "blue", main= "Revenue chart", border = "red")
