#========================================
#Lecture 3, BIOF529 SuperR
#loops and conditions

#based on lecture materials by Andre Punt
#========================================

#===== If statement
x  <-  c(5,4,2,8,9,10)

n  <-  length(x)
sort.x  <-  sort(x)
if(n%%2==0)  {
  median  <-  (sort.x[n/2]+sort.x[1+n/2])/2
}  else  median  <-  sort.x[(n+1)/2]

median


plotxy <- function(x, y) {
  if (length(x) == length(y)) {
    plot(x,y)
  }
  else {
    print("Lengths of x and y are different")
  }
}
plotxy(x=1:5, y=5:1)
plotxy(x=1:5, y=4:1)

x  <-  seq(0,2,len=6)
ifelse(x  <=  1,  "small",  "big")
y  <-     matrix(1:8,  nrow=2)
ifelse(y>3  &  y  <7,  1,  0)


#====complicated if-then-else statement
sum.bigger <- function(x, y) {
  if(length(x) != length(y)) {
    print("not equal lengths")
  }
  else {
    if (sum(x) > sum(y)) {
      print("x bigger")
    }
    else {
      print("x smaller or equal")
    }
  }
}
sum.bigger(x=1:5, y=6:10)

#===switch statement
#rarely used but can greatly simplify the mess
#of multiple nested if-then-else statements
require(stats)
centre <- function(x, type) {
  return(switch(type,
                mean = mean(x),
                median = median(x),
                trimmed = mean(x, trim = .1),
                "No function matches") )
}
x <- rcauchy(10)  #ten values from a cauchy distribution
centre(x, "mean")
centre(x, "median")
centre(x, "unknown")

#-For loop

for (i in set) {
   #do something
}

for (i in seq(from=1,to=5,by=1)) { print(i) }
for (i in c(1,4,5,8,8,8)) { print(i) }
for (i in c("1","N","L")) { print(i) }

for (i in c(1,4,5,8)) {
   print(i) 
}
print(i)

#  Calculate  10!  using  a  for  loop
f  <-  1
for(i  in  1:10)  {
  f  <-  f*i
  cat(i,  f,  "\n")
}
f
#  Calculate  10!  using  a  while  loop
i  <-  10
f  <-  1
while(i>1)  {
  f  <-  i*f
  i  <-  i-1
  cat(i,  f,  "\n")
}
f
#  Calculate  10!  using  a  repeat  loop
i  <-  10
f  <-  1
repeat  {
  f  <-  i*f
  i  <-  i-1
  cat(i,  f,  "\n")
  if(i<1)  break
}
f

#======looping through species in iris
#first check what the data set looks like
head(iris)
names(iris)
str(iris)
unique(iris$Species)  #find the unique species names

#loop through the species names
for (i in unique(iris$Species)) {
   print(i)   
}

#loop through the species names and calculate stuff
for (i in unique(iris$Species)) {
   meanSepalLength <- mean(iris[iris$Species==i,]$Sepal.Length)   
   meanPetalLength <- mean(iris[iris$Species==i,]$Petal.Length)   
   cat(i, meanSepalLength, meanPetalLength, "\n")
}

#convert to a function
loop.iris <- function (data=iris) {
  for (i in unique(iris$Species)) {
     meanSepalLength <- mean(iris[iris$Species==i,]$Sepal.Length)   
     meanPetalLength <- mean(iris[iris$Species==i,]$Petal.Length)   
     cat(i, meanSepalLength, meanPetalLength, "\n")
  }
}
loop.iris()

#=====while loop
#rarely used, since for-loops can do almost all
#looping, but while-loops are sometimes essential

#== when will polar bears fall below 500?
polar.loop <- function(N, year=2012) {
  while(N>500) {
    N <- N*0.9999
    year <- year+1
    cat(N,year,"\n")
  }
  return(year)
}
polar.loop(N=10000)



#===numerical switch statement: no default allowed
for(i in 0:6) {
  print(switch(i, 1, 2, 3, 4))
}

for(i in 0:6) {   #return the 0th element, first element, second...
  print(switch(i, 
               "Help",       #first element
               "Too hard",   #second element
               "OK",         #third element 
               "Really?"))   #fourth element
}

#===useful RStudio features
#choose Code->Reindent Lines ctrl+I
#code->Comment/Uncomment ctrl+shift+C
#rerun code ctrl+shift+P
polar.loop <- function(N, year=2012) {
  while(N>500) {
    N<-N*0.92
    year<-year+1
  }
  return(year)
}
polar.loop(N=10000)

#========In-class exercise 1

sin.vec.plot <- function(periodvec) {
   #note: length.out needs to be high to get the plot right
   x <- seq(from=0, to=2*pi, length.out=1000)
   for (i in periodvec) {
      y <- sin(x/i)
      plot(x=x, y=y, lwd=2, xaxs="i", type="l")
   }
}
pdf("temp.pdf", width=6, height=6)
par(mfrow=c(3,3), mar=c(1,1,1,1))
sin.vec.plot(periodvec=c(0.05, 0.1, 0.25, 0.5, 
                         1, 1.5, 2, 2.5, 5))
dev.off()
#more general version of the function
sin.vec.plot.gen <- function(periodvec, xlim=c(0,2*pi), resolution=1000) {
   #note: length.out needs to be high to get the plot right
   x <- seq(from=xlim[1], to=xlim[2], length.out=resolution)
   for (i in periodvec) {
      y <- sin(x/i)
      plot(x=x, y=y, lwd=2, xaxs="i", type="l")
   }
}
par(mfrow=c(3,3))
sin.vec.plot.gen(periodvec=c(0.05, 0.1, 0.25, 0.5, 1, 1.5, 2, 2.5, 5),
             xlim=c(-2*pi, 2*pi), resolution=100)

#--Avoid loop

z  <-  rnorm(1E7)
system.time(sum(z))

start  <-  proc.time()
total=0
for(i  in  1:length(z))
  total  <-  total  +  z[i]
proc.time()-start




#=========In-class exercise 2
reg <- lm(y~x)  #do the regression
slope <- coefficients(reg)[2]

#=====Plan it out! My plan in comments
#read in the data file
#figure out how many animals there are
#loop through the animals
#check if there are two or more data points
#if yes, regress length on age
#store the slope in a vector
#end the loop
#plot a histogram of the slopes 


#=====now fill in the bits one at a time
#read in the data file: row, animal, age, weight
aw <- read.csv("Data//lect3.csv", header=F)
#figure out how many animals there are
animals <- unique(aw[,2])
slopes <- vector(length=length(animals))
#loop through the animals
for (i in animals) {
   one.aw <- aw[aw[,2]==i,]  #extract data for this animal
   #check if there are two or more data points
   if (nrow(one.aw) >= 2) {  #upper case NROW works for vectors
      #if yes, regress length on age
      reg <- lm(one.aw[,4]~one.aw[,3])
      #store the slope in a vector, oh wait I need a vector! 
      slopes[i] <- coefficients(reg)[2]      
   }  #end if statement
}  #end for loop
#plot a histogram of the slopes 
hist(slopes)


#=====turn it into a function and remove the comments
#use Code->Reindent Lines to get the indentation right
rm(list=ls())
aw.slopes <- function(filename="Data//lect3.csv") {
   aw <- read.csv(filename, header=F)
   animals <- unique(aw[,2])
   slopes <- vector(length=length(animals))
   for (i in animals) {
      one.aw <- aw[aw[,2]==i,]  #extract data for this 
                                #animal
      if (nrow(one.aw) >= 2) {  #upper case NROW works for vectors
         reg <- lm(one.aw[,4]~one.aw[,3])
         slopes[i] <- coefficients(reg)[2]      
      }
      else {
         slopes[i] <- NA  #suddenly realize I can't have a missing value=0
      }
      cat(i,"\n", slopes, "\n")
   }  #end for loop
   hist(slopes)
   return(slopes)
}
aw.slopes()