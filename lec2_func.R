#a simple function
sin.period <- function(period) {
  xvals <- seq(from=0, to=2*pi, length=100)
  yvals <- sin(xvals/period)
  plot(x=xvals, y=yvals, type="l", lty=1, xaxs="i", lwd=2)
}
#calculate the range of a vector
range1 <- function(xvec) {
  return(c(min(xvec), max(xvec)))
}
range2 <- function(xvec) {
  invisible(c(min(xvec), max(xvec)))
}

#more complicated functions
compute.stat <- function(xvec) {
  ave <- mean(xvec)
  var <- var(xvec)
  CV <- sqrt(var)/ave  #CV is sd/mean
  cat(ave, var, CV, "\n") #prints to the command window
  out <- list(ave=ave, var=var, sd=sqrt(var), CV=CV)
  return(out)
}

#writing to a file
write.sin <- function(filename, period) {
  xvals <- seq(from=0, to=2*pi, length=100)
  yvals <- sin(xvals/period)
  outdata <- cbind(xvals, yvals)
  write.csv(x=outdata, file=filename)
}
#=========In-class exercise 1=========
cor.vec <- function(xvec, yvec) {
  XX <- xvec - mean(xvec)
  YY <- yvec - mean(yvec)
  plot(x=XX, y=YY)
  return(cor(XX, YY))  
}
#=======In-class exercise 2==========
plot.columns <- function(filename, col1=1, col2=2) {
  data <- read.csv(filename, header=F) 
  #data <- read.table(filename, sep=",") #alternative
  print(data)
  plot(data[,col1], data[,col2])
}