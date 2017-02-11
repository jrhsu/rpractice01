#========================================
#Lecture 2, biof529 SuperR

#based on lecture materials by Andre Punt
#========================================

#a simple function
sin.period <- function(period) {
   xvals <- seq(from=0, to=2*pi, length=100)
   yvals <- sin(xvals/period)
   plot(x=xvals, y=yvals, type="l", lty=1, xaxs="i", lwd=2)
}
sin.period(period=1)
sin.period(2)
sin.period(100)

pdf("Plots\\sin period.pdf", width=6, height=6)
par(mfrow=c(2,2), mar=c(5,5,2,1))
sin.period(0.25)
sin.period(0.5)
sin.period(1)
sin.period(2)
dev.off()

#calculate the range of a vector
range1 <- function(xvec) {
   return(c(min(xvec), max(xvec)))
}
range2 <- function(xvec) {
   invisible(c(min(xvec), max(xvec)))
}
range1(1:10)
range2(1:10)
x1 <- range1(1:10)
x2 <- range2(1:10)
x1
x2

#more complicated functions
compute.stat <- function(xvec) {
  ave <- mean(xvec)
  var <- var(xvec)
  CV <- sqrt(var)/ave  #CV is sd/mean
  cat(ave, var, CV, "\n") #prints to the command window
  out <- list(ave=ave, var=var, sd=sqrt(var), CV=CV)
  return(out)
}
xx <- rnorm(n=100, mean=0, sd=1)
stats <- compute.stat(xvec=xx)
print(stats)
print(stats$sd)

#writing to a file
write.sin <- function(filename, period) {
   xvals <- seq(from=0, to=2*pi, length=100)
   yvals <- sin(xvals/period)
   outdata <- cbind(xvals, yvals)
   write.csv(x=outdata, file=filename)
}
write.sin(filename="Tables\\sinperiod.csv", period=0.25)


#=========In-class exercise 1=========
cor.vec <- function(xvec, yvec) {
   XX <- xvec - mean(xvec)
   YY <- yvec - mean(yvec)
   plot(x=XX, y=YY)
   return(cor(XX, YY))  
}
xx <- seq(from=1, to=100, by=1)
yy <- 0.2 + xx*0.5 + rnorm(n=length(xx), mean=0, sd=5)  
cor.vec(xvec=xx, yvec=yy)

#====scope
rm(list=ls())
x1 <- 10
func1 <- function(x,y) {
   print(x)
   print(y)
   print(x1)
}
func1(x=5, y=6)
print(x)
print(y)

#=====scope 2
rm(list=ls()) #clear everything
x1 <- 10
func1 <- function(x) {
   x1 <- x
   return(x1)
}
func1(x=5)
print(x1)

#=====scope 3
rm(list=ls()) #clear everything
x1 <- 10
func1 <- function(x) {
   x1 <<- x
   return(x1)
}
func1(x=5)
print(x1)

#=====scope 4
rm(list=ls()) #clear everything
func1 <- function(x) {
   return(func2(y=x))
}
func2 <- function(y) {
   return(func3(z=y))
}
func3 <- function(z) {
   return(3*z)
}
func1(4)  
z <- 3
func1(4)
x <- 2
func1(4)

#======scope 5
#common bug, hard to find
rm(list=ls()) #clear everything
func1 <- function(x) {
   return(func2(y=X))
}
func2 <- function(y) {
   return(func3(z=y))
}
func3 <- function(z) {
   return(3*z)
}
func1(4)
X <- 2
func1(4)

#======automatically creating functions in RStudio
#if you have code like this 
x <- 100
y <- 3*x
z <- 5*y

#select the code, choose menu Code->Extract Function

somethingrandom <- function (x) {
  y <- 3*x
  print(y)
  z <- 5*y
  cat(z,"\n")
  return(z)
}
somethingrandom(x=100)

fifteen <- function (x) {
  y <- 3*x
  z <- 5*y
}

#=======In-class exercise 2==========
plot.columns <- function(filename, col1=1, col2=2) {
   data <- read.csv(filename, header=F) 
   #data <- read.table(filename, sep=",") #alternative
   print(data)
   plot(data[,col1], data[,col2])
}
# plot.columns(filename="Data//Lect2.csv", col1=1, col2=2)
plot.columns(filename="Lect2.csv", col1=2, col2=3)

