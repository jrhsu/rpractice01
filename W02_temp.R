rcauchy(10)



x  <-  c(5,4,2,8,9,10,19)

n  <-  length(x)
sort.x  <-  sort(x)
if(n%%2==0)  {
  median  <-  (sort.x[n/2]+sort.x[1+n/2])/2
}  else  median  <-  sort.x[(n+1)/2]

median

plot(x,x^2)

4%%3
9%%12
26%%3

plotxy <- function(x, y) {
  if (length(x) == length(y)) {
    plot(x,y^2)
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

x<-2
(y<- if(x==2) x else x=1)

require(stats)
centre <- function(x, type) {
  return(switch(type,
                mean = mean(x),
                median = median(x),
                trimmed = mean(x, trim = .1),
                "No function matches") )
}
x <- rcauchy(10) 

centre(x,"mean")

centre <- function(x, type) {
          return(switch(x,
                111 = "1",
                222 = "2",
                333 = "3",
                444 = "4",
                "No function matches") )
}

x <- c(111,222,333,444,555)
centre(x,111)

f  <-  1
for(i  in  1:10)  {
  f  <-  f*i
  cat(i,  f,  "\n")
}
f

f  <-  1
for(i  in  1:10)  {
  f  <-  f*i
  cat(i,  f)
}
f

f  <-  1
for(i  in  1:10)  {
  f  <-  f*i
  cat( i, f )
}
f


loop.iris <- function (data=iris) {
  for (i in unique(iris$Species)) {
    meanSepalLength <-
      mean(iris[iris$Species==i,]$Sepal.Length)   
    meanPetalLength <- 
      mean(iris[iris$Species==i,]$Petal.Length)   
    cat(i, meanSepalLength, meanPetalLength, "\n")
  }
}
loop.iris()

loop.iris <- function (data=iris) {
  for (i in unique(iris$Species)) {
    meanSepalLength <-
      mean(iris[iris$Species==i,]$Sepal.Length)   
    meanPetalLength <- 
      mean(iris[iris$Species==i,]$Petal.Length)   
    cat(i, meanSepalLength, meanPetalLength)
  }
}
loop.iris()


polar.loop <- function(N, year=0) {
  while(N>500) {
    N <- N*0.9999
    year <- year+1
    cat(N,year,"\n")
  }
  return(year)
}
polar.loop(N=10000)


sin.vec.plot <- function(periodvec) {
  #note: length.out needs to be high to get the plot right
  x <- seq(from=0, to=2*pi, length.out=1000)
  for (i in periodvec) {
    y <- sin(x/i)
    plot(x=x, y=y, lwd=2, xaxs="i", type="l")
  }
}
# pdf("temp.pdf", width=6, height=6)
par(mfrow=c(3,3), mar=c(1,1,1,1))
sin.vec.plot(periodvec=c(0.05, 0.1, 0.25, 0.5, 
                         1, 1.5, 2, 2.5, 5))
# dev.off()


ccc <- c("b","QQ","a","A","bb")
# note: cat() produces no output for NULL
for(ch in ccc)
  cat(ch,":", switch(EXPR = ch, a = 1, b = 2:3), "\n")
for(ch in ccc)
  cat(ch,":", switch(EXPR = ch, a =, A = 1, b = 2:3, "Otherwise: last"),"\n")

for(b in ccc)
  cat(ch,":", switch(EXPR = ch, a =, A = 1, b = 2:3, "Otherwise: last"),"\n")

for(i in c(-1:3, 9))  print(switch(i, 1, 2 , 3, 4))



## switch(f, *) with a factor f
ff <- gl(3,1, labels=LETTERS[3:1])
ff[1] # C
## so one might expect " is C" here, but
switch(ff[1], A = "I am A", B="Bb..", C=" is C")# -> "A"
## so we give a warning

## Numeric EXPR does not allow a default value to be specified
## -- it is always NULL
for(i in c(-1:3, 9))  print(switch(i, 1, 2 , 3, 4))

## visibility
switch(1, invisible(pi), pi)
switch(2, invisible(pi), pi)



