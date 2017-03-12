#========================================
#Lecture 4, BIOF529 SuperR
#Data IO & String manipulation

#========================================

##  get  the  working  directory
getwd()
setwd("/Users/kok3/Documents/NIH/FASE/biof529")
dir("./")  #  shows  directory  contents      
dir("../")

## Scan
x1 <- scan("z3.txt",what="")
x2 <- scan("z3.txt",what="",sep="\n")

##readline
w <- readline()
inits <- readline("type your initials: ")

##read.table for data frame
z <- read.table("persons.txt",header=TRUE)

## read matrix data
x <- matrix(scan("matrix_example"),nrow=5,byrow=TRUE)
read.matrix <- function(filename) {
  as.matrix(read.table(filename))
}

## Writing data frames to a text ﬁle
kids <- c("Jack","Jill")
ages <- c(12,10)
d <- data.frame(kids,ages,stringsAsFactors=FALSE)
write.table(d,"kds")
xc<-d              
write.table(xc,"xcnew",row.names=FALSE,col.names=FALSE,quote=FALSE)

## cat()              
cat("abc\n",file="u")
cat("de\n",file="u",append=TRUE)
cat(file="v",1,2,"xyz\n")

## String-Manipulation Functions
grep("Pole",c("Equator","North Pole","South Pole"))
grep("pole",c("Equator","North Pole","South Pole"))

nchar("South Pole")

paste("North","Pole")
paste("North","Pole",sep="")
paste("North","Pole",sep=".")
paste("North","and","South","Poles")

i <- 8
s <- sprintf("the square of %d is %d",i,i^2)

substring("Equator",3,5)

strsplit("6-16-2011",split="-")

regexpr("uat","Equator")

gregexpr("iss","Mississippi")

##pums
source(file.path(".",'/','pums.r'))
pumsdf <- extractpums("PUMS5_06.TXT.short",list(Gender=c(23,23),Age=c(25,26)))
