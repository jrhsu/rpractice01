##### 2017/02/02 Week01 Data Structure $ Data Type
## Class: Thursday, 5:30#7:30, Building 60, Rathskeller
## Instructor: Kyung Dae Ko, nihsuperr@gmail.com, kyungdae.ko@nih.gov
 ---------------------------------------------------------------
 ------------------------------------------
 ---------------------  
 #####################
 ##########################################
 ###############################################################

 
#### Data Structures_begin ---------------------------------------------------------------
# Vectors
# Matrices
# Arrays
# Lists
# Dataframes
#### Data Structures_End ###############################################################


### Vector_Begin ------------------------------------------
## Definition
# A vector is an ordered collection of objects of the same type
## To create a vector 
# The function c(...)  concatenates its arguments to form a vector
## To create a patterned vector 
# :      # Sequence of integers
# seq()  # General sequence
# rep()  # Vector of replicated elements





## c() # function c()_begin --------------------- 
# To create a vector


v1  <-  c(2.5,  4,  7.3,  0.1)
v1
# [1]  2.5  4.0  7.3  0.1

v2  <-  c("A",  "B",  "C",  "D")
v2
# [1]  "A"  "B"  "C"  "D"
## c() # function c()_End #####################



## : # Sequence of integers_begin ---------------------

v3  <-  -3:3
v3
# [1] -3 -2 -1  0  1  2  3

## : # Sequence of integers_End #####################



## seq()  # General sequence_begin ---------------------

seq(0,  2,  by=0.5)
# [1]  0.0  0.5  1.0  1.5  2.0

seq(0,  2,  len=6)
# [1]  0.0  0.4  0.8  1.2  1.6  2.0

## seq()  # General sequence_End #####################



## rep()  # Vector of replicated elements_begin ---------------------

rep(1:5,  each=2)
# [1]  1  1  2  2  3  3  4  4  5  5

rep(1:5,  times=2)
# [1] 1 2 3 4 5 1 2 3 4 5

## rep()  # Vector of replicated elements_End #####################


## Reference elements of a Vector_begin ---------------------
# Use [ ]
# Use function names() to get or set the names of vector elements


## Use [ ] with a vector/scalar of positions to reference elements of a vector
# Include a minus sign before the vector/scalar to remove elements
x  <-  c(4,  7,  2,  10,  1,  0)
x[4]
# [1]  10

x[1:3]
# [1]  4  7  2

x[c(2,5,6)]

[1]  7  1  0

# Include a minus sign before the vector/scalar to remove elements

x[-3]
# [1]     4     7  10     1     0

x[-c(4,5)]
[# 1]  4  7  2  0
  
x[x>4]
# [1]     7  10
  
x[3]  <-  99
x
# [1]     4     7  99  10     1     0



## Use function names() to get or set the names of vector elements
# funtion_names()

# print the names attribute of the islands data set

islands

# Africa       Antarctica             Asia        Australia 
# 11506             5500            16988             2968 
# Axel Heiberg           Baffin            Banks           Borneo 
# 16              184               23              280 
# Britain          Celebes            Celon             Cuba 
# 84               73               25               43 

# View(islands)

str(islands)
# num [1:48] 11506 5500 16988 2968 16 ...

class(islands)
# [1] "numeric"

is.vector(island)
# [1] TRUE

names(islands)

# [1] "Africa"           "Antarctica"       "Asia"             "Australia"    
# [5] "Axel Heiberg"     "Baffin"           "Banks"            "Borneo"       
# [9] "Britain"          "Celebes"          "Celon"            "Cuba"         
# [13] "Devon"            "Ellesmere"        "Europe"           "Greenland"   
# [17] "Hainan"           "Hispaniola"       "Hokkaido"         "Honshu"      
# [21] "Iceland"          "Ireland"          "Java"             "Kyushu"      
# [25] "Luzon"            "Madagascar"       "Melville"         "Mindanao"    
# [29] "Moluccas"         "New Britain"      "New Guinea"       "New Zealand (N)" 
# [33] "New Zealand (S)"  "Newfoundland"     "North America"    "Novaya Zemlya"
# [37] "Prince of Wales"  "Sakhalin"         "South America"    "Southampton"  
# [41] "Spitsbergen"      "Sumatra"          "Taiwan"           "Tasmania"    
# [45] "Tierra del Fuego" "Timor"            "Vancouver"        "Victoria"    


# remove the names attribute
names(islands) <- NULL
islands
# [1] 11506  5500 16988  2968    16   184    23   280    84    73    25    43    21
# [14]    82  3745   840    13    30    30    89    40    33    49    14    42   227
# [27]    16    36    29    15   306    44    58    43  9390    32    13    29  6795
# [40]    16    15   183    14    26    19    13    12    82

rm(islands) # remove the copy made

x  <-  c(4,  7,  2,  10,  1,  0)
x
# [1]  4  7  2 10  1  0

x[3]
# [1] 2

names(x)[3] <- "c"
x
# <NA> <NA>    c <NA> <NA> <NA> 
#  4    7    2   10    1    0 

names(x) <- c("a","b","c","d","e","f")
x
# a  b  c  d  e  f 
# 4  7  2 10  1  0 

# which() & match()
# Additional functions that will return the indices of a vector

# which()     Indices of a logical vector where the condition is TRUE
# which.max() Location of the (ﬁrst) maximum element of a numeric vector
# which.min() Location of the (ﬁrst) minimum element of a numeric vector
# match()     First position of an element in a vecto

x  <-  c(4,  7,  2,  10,  1,  0)
x

which(x>=4)
# [1] 1 2 4

which.max(x)
# [1]  4

x[which.max(x)]
# [1]  10

x[which.min(x)]
# [1]  0


max(x)
# [1]  10

y  <-  rep(1:5,  times=5:1)
y
# [1] 1 1 1 1 1 2 2 2 2 3 3 3 4 4 5

match(1:5,  y)
# [1] 1     6  10  13  15

match(unique(y),  y)
# [1]     1     6  10  13  15


## Reference elements of a Vector_End #####################



## Vector Operations_begin ---------------------

# When vectors are used in math expressions the operations are performed element by element

x  <-  c(4,7,2,10,1,0)
y  <-  x^2  +  1
y
# [1]  17  50   5 101   2   1

x+y
# [1]  21  57   7 111   3   1

x-y
# [1] -13 -43  -3 -91  -1  -1

x*y
# [1]   68  350   10 1010    2    0

x/y
# [1] 0.2352941 0.1400000 0.4000000 0.0990099 0.5000000 0.0000000


## Vector Operations_End #####################


## Useful Vector Functions_begin ---------------------

sum(x) # Sum of the elements of  x
prod(x) # product of the elements of  x
cumsum(x) # Cumulative suu of the elements of  x
cumprod(x) # Cumulative product of the elements of  x
min(x)  # Minimum element of  x
max(x)  # Maximum element of  x
mean(x) # Mean of  x
median(x) # median of  x
var(x) # Variance of  x
sd(x) # standard deviation of  x
cov(x,y) # Covariance of  x and y
cor(x,y) # correlation of  x and y
range(x) # Range of  x
quantile(x) # Quantiles of x for the given probabilities
fivenum(x) # Five number summary of  x
length(x) # Number of elements in x
unique(x) # Unique elements of  x
rev(x) # Reverse the elements of  x
sort(x) # Sort the elements of  x
which() # Indices of  TRUEs in a logical vector
which.max(x) # Index of the max element of  x
which.min(x) # Index of the min element of  x
match() # First position of an element in a vector
union(x,y) # Union of  x and y
intersect(x,y) # Intersection of  x and y
setdiff(x,y) # Elements of x that are not in y
setequal(x,y) # Do x and y contain the same elements?

x  <-  c(4,7,2,10,1,0)
x
# [1]  4  7  2 10  1  0
y  <-  x^2  +  1
y
# [1]  17  50   5 101   2   1

sum(x) # Sum of the elements of  x
# [1] 24

prod(x) # product of the elements of  x
# [1] 0

cumsum(x) # Cumulative suu of the elements of  x
# [1]  4 11 13 23 24 24

cumprod(x) # Cumulative product of the elements of  x
# [1]   4  28  56 560 560   0

min(x)  # Minimum element of  x
# [1] 0

max(x)  # Maximum element of  x
# [1] 10

mean(x) # Mean of  x
# [1] 4

median(x) # median of  x
# [1] 3

var(x) # Variance of  x
# [1] 14.8

sd(x) # standard deviation of  x
# [1] 3.847077

cov(x,y) # Covariance of  x and y
# [1] 147.2

cor(x,y) # correlation of  x and y
# [1] 0.9652157

range(x) # Range of  x
# [1]  0 10

quantile(x) # Quantiles of x for the given probabilities
#    0%   25%   50%   75%  100% 
#  0.00  1.25  3.00  6.25 10.00 

fivenum(x) # Five number summary of  x
# [1]  0  1  3  7 10

length(x) # Number of elements in x
# [1] 6

unique(x) # Unique elements of  x
# [1]  4  7  2 10  1  0

rev(x) # Reverse the elements of  x
# [1]  0  1 10  2  7  4

sort(x) # Sort the elements of  x
# [1]  0  1  2  4  7 10

# which() # Indices of  TRUEs in a logical vector
which(x>=4)
# [1] 1 2 4

which.max(x) # Index of the max element of  x
# [1] 4

which.min(x) # Index of the min element of  x
# [1] 6

# match() # First position of an element in a vector
match(1:5,  y)
# [1]  6  5 NA NA  3

match(1,  y)
# [1] 6

match(2,  y)
# [1] 5

match(3,  y)
# [1] NA

match(50,  y)
# [1] 5

union(x,y) # Union of  x and y
#  [1]   4   7   2  10   1   0  17  50   5 101

intersect(x,y) # Intersection of  x and y
# [1] 2 1

setdiff(x,y) # Elements of x that are not in y
# [1]  4  7 10  0

setequal(x,y) # Do x and y contain the same elements?
# [1] FALSE


## Useful Vector Functions_End #####################

###_Vector_End ##########################################



### Matrices_Begin ------------------------------------------
# 2 dimemsional

## Definition
# A matrix is just a two-dimensional generalization of a vector


## To create a Matrices_begin ---------------------

## To create a matrix: matrix() function
# data  a vector that gives data to ﬁll the matrix; if  data does not have enough elements to ﬁll the matrix, then the elements are recycled.
# nrow  desired number of rows
# ncol  desired number of columns
# byrow  if  FALSE (default) matrix is ﬁlled by columns, otherwise by rows
# dimnames  (optional) list of length 2 giving the row and column names respectively, list names will be used as names for the dimensions


matrix(data=NA,  nrow=1,  ncol=1,  byrow  =  FALSE,  dimnames  =  NULL)

#      [,1]
# [1,]   NA




x  <-  matrix(c(5,0,6,1,3,5,9,5,7,1,5,3),  nrow=3,  ncol=4,  byrow=TRUE, dimnames=list(rows=c("r.1",  "r.2",  "r.3"), cols=c("c.1",  "c.2",  "c.3",  "c.4")))

x
#      cols
# rows  c.1 c.2 c.3 c.4
#   r.1   5   0   6   1
#   r.2   3   5   9   5
#   r.3   7   1   5   3

x_no_name  <-  matrix(c(5,0,6,1,3,5,9,5,7,1,5,3),  nrow=3,  ncol=4,  byrow=TRUE)

x_no_name

#     [,1] [,2] [,3] [,4]
# [1,]    5    0    6    1
# [2,]    3    5    9    5
# [3,]    7    1    5    3


N  <-  matrix(c(5,8,3,0,4,1),  nrow=2,  ncol=3,  byrow=TRUE)
colnames(N)  <-  c("c.1",  "c.2",  "c.3")
rownames(N) <- c("r.1",  "r.2")


N
#      c.1 c.2 c.3
# r.1   5   8   3
# r.2   0   4   1



##To create a Matrices_End #####################


## Reference Elements of a Matrices_begin ---------------------
# using the [ ]: 
# using the row or column names



## using the [ ] to Reference matrix elements just like with vectors
   # but now with 2-dimensions

x  <-  matrix(c(5,0,6,1,3,5,9,5,7,1,5,3),  nrow=3,  ncol=4,  byrow=TRUE)
x
#      [,1] [,2] [,3] [,4]
# [1,]    5    0    6    1
# [2,]    3    5    9    5
# [3,]    7    1    5    3
  
x[2,3]  #  Row  2,  Column  3
# [1]  9

x[1,] #  Row  1
# [1]  5  0  6  1

x[,2]   #  Column  2
# [1]  0  5  1

x[c(1,3),]    #  Rows  1  and  3,  all  Columns
#      [,1] [,2] [,3] [,4]
# [1,]    5    0    6    1
# [2,]    7    1    5    3


## using the row or column names:
# We can also reference parts of a matrix by using the row or column names
# Sometimes it is better to reference a row/column by its name rather than by the numeric index.  
  # For example, if a program adds or permutes the columns of a matrix then the numeric index of the columns may change.  
    # As a result you might reference the wrong column of the new matrix if you use the old index number. 
    # However the name of each column will not change.
# Reference matrix elements using the [ ] but now use the column or row name, with quotations, inplace of the index number
# You don’t have to specify the names when you create a matrix.  
# To get or set the column, row, or both dimension names of  A:
  # colnames(A)
  # rownames(A)
  # dimnames(A)
# Can also name the elements of a vector, c("name.1"=1,  "name.2"=2).
# Use the function names() to get or set the names of vector elements.



# colnames(A)
# rownames(A)
# dimnames(A)


x  <-  matrix(c(5,0,6,1,3,5,9,5,7,1,5,3),  nrow=3,  ncol=4,  byrow=TRUE, dimnames=list(rows=c("r.1",  "r.2",  "r.3"), cols=c("c.1",  "c.2",  "c.3",  "c.4")))

colnames(x)
# [1] "c.1" "c.2" "c.3" "c.4"

rownames(x)
# [1] "r.1" "r.2" "r.3"

dimnames(x)
# $rows
# [1] "r.1" "r.2" "r.3"

# $cols
# [1] "c.1" "c.2" "c.3" "c.4"

colnames(x) <- c("c.1",  "c.2",  "c.3",  "c.4")
rownames(x) <- c("r.1",  "r.2",  "r.3")




N  <-  matrix(c(5,8,3,0,4,1),  nrow=2,  ncol=3,  byrow=TRUE)
colnames(N)  <-  c("c.1",  "c.2",  "c.3")
rownames(N) <- c("r.1",  "r.2")


N
#      c.1 c.2 c.3
# r.1   5   8   3
# r.2   0   4   1

N[,"c.2"]   #  Column  named  "c.2"
#  r.1 r.2 
#   8   4 


colnames(N)
# [1]  "c.1"  "c.2"  "c.3"

M <-diag(2)
M
#      [,1] [,2]
# [1,]    1    0
# [2,]    0    1

(M <-diag(2))
#      [,1] [,2]
# [1,]    1    0
# [2,]    0    1


M3 <-diag(3)
M3
#       [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    1    0
# [3,]    0    0    1



(MN  <-  cbind(M,  N)) #  Placing  the  expression  in  parentheses
MN  <-  cbind(M,  N)
MN
#          c.1 c.2 c.3
# r.1 1 0   5   8   3
# r.2 0 1   0   4   1

(M3N  <-  rbind(M3,  N)) #  Placing  the  expression  in  parentheses
#      c.1 c.2 c.3
#       0   1   0
#       0   0   1
# r.1   5   8   3
# r.2   0   4   1




dimnames(MN)
# [[1]]
# [1] "r.1" "r.2"

# [[2]]
# [1] ""    ""    "c.1" "c.2" "c.3"


MN[,2]     #  Column  2
# r.1 r.2 
#   0   1 

MN[,"c.2"]    #  Column  named  "c.2"
# r.1 r.2 
#   8   4 

M3N[,"c.2"]    #  Column  named  "c.2"
#            r.1 r.2 
# 0   1   0   8   4 

MN["r.2",]    #  row  named  "r.2"
#         c.1 c.2 c.3 
#  0   1   0   4   1 

M3N["r.2",]    #  row  named  "r.2"
# c.1 c.2 c.3 
# 0   4   1 

MN["r.2","c.2"]    #  row  named  "r.2",  Column  named  "c.2"
# [1] 4

M3N["r.2","c.2"]    #  row  named  "r.2",  Column  named  "c.2"
# [1] 4

      
## Reference Elements of a Matrices_End #####################



# Matrices Operations_begin ---------------------

# When matrices are used in math expressions the operations are performed element by element.
# For matrix multiplication use the %*% operator
# If a vector is used in matrix multiplication, it will be coerced to either a row or column matrix to make the arguments conformable.  
# Using %*% on two vectors will return the inner product (%o% for outer product) as a matrix and not a scalar.  
# Use either c() or as.vector() to convert to a scalar.

(A <- matrix(1:4, nrow=2))
#       [,1] [,2]
# [1,]    1    3
# [2,]    2    4

(B <- matrix(1, nrow=2, ncol=2))
#       [,1] [,2]
# [1,]    1    1
# [2,]    1    1


A*B
#            [,1]       [,2]
# [1,]          1          3
# [2,]          2          4

A%*%B
#                  [,1]  [,2]
# [1,]          4          4
# [2,]          6          6

A%o%B

# , , 1, 1

#      [,1] [,2]
# [1,]    1    3
# [2,]    2    4

# , , 2, 1

#       [,1] [,2]
# [1,]    1    3
# [2,]    2    4

# , , 1, 2

#       [,1] [,2]
# [1,]    1    3
# [2,]    2    4

# , , 2, 2

#       [,1] [,2]
# [1,]    1    3
# [2,]    2    4


(y  <-  1:3)
[1] 1 2 3

y%*%y
#           [,1]
# [1,]       14

A/(y%*%y)
# Error  in  A/(y%*%y):non #conformable  arrays

A/c(y%*%y)
#             [,1]       [,2]
# [1,]  0.07142857  0.2142857
# [2,]  0.14285714  0.2857143

# Matrices Operations_End #####################


# Useful Matrices Functions_begin ---------------------

#  t(A)            # Transpose of  A
#  det(A)          # Determinate of  A
#  solve(A,b)      # Solves the equation Ax=b for x
#  solve(A)        # Matrix inverse of  A
#  MASS::ginv(A)   # Generalized inverse of  A (MASS package)
#  eigen(A)        # Eigenvalues and eigenvectors of  A
#  chol(A)         # Choleski factorization of  A
#  diag(n)         # Create a n×n identity matrix
#  diag(A)         # Returns the diagonal elements of a matrix A
#  diag(x)         # Create a diagonal matrix from a vector x
#  lower.tri(A)    # Matrix of logicals indicating lower triangular matrix
#  upper.tri(A)    # Matrix of logicals indicating upper triangular matrix
#  apply()         # Apply a function to the margins of a matrix
#  rbind(...)      # Combines arguments by rows
#  cbind(...)      # Combines arguments by columns and
#  dim(A)          # Dimensions of  A
#  nrow(A)         # Number of rows of  A
#  ncol(A)         # Number of columns of  A
#  rownames(A)     # Get or set the row names of  A
#  colnames(A)     # Get or set the column names of  A
#  dimnames(A)     # Get or set the dimension names of  A


t(A)
# [,1] [,2]
# [1,]    1    2
# [2,]    3    4

det(A)
# [1] -2

solve(A,b)
# Error in solve.default(A, b) : object 'b' not found

solve(A)
#       [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5

MASS::ginv(A)
#       [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5


eigen(A)
# $values
# [1]  5.3722813 -0.3722813

# $vectors
#            [,1]       [,2]
# [1,] -0.5657675 -0.9093767
# [2,] -0.8245648  0.4159736

chol(A)
# Error in chol.default(A) : 
# the leading minor of order 2 is not positive definite

diag(n)
# n=10
#       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
# [1,]     1    0    0    0    0    0    0    0    0     0
# [2,]     0    1    0    0    0    0    0    0    0     0
# [3,]     0    0    1    0    0    0    0    0    0     0
# [4,]     0    0    0    1    0    0    0    0    0     0
# [5,]     0    0    0    0    1    0    0    0    0     0
# [6,]     0    0    0    0    0    1    0    0    0     0
# [7,]     0    0    0    0    0    0    1    0    0     0
# [8,]     0    0    0    0    0    0    0    1    0     0
# [9,]     0    0    0    0    0    0    0    0    1     0
# [10,]    0    0    0    0    0    0    0    0    0     1

diag(A)
# [1] 1 4

(x  <-  matrix(1:12,  nrow=3,  ncol=4))
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

diag(x)
#[1] 1 5 9

lower.tri(A)
#       [,1]  [,2]
# [1,] FALSE FALSE
# [2,]  TRUE FALSE

upper.tri(A)
#       [,1]  [,2]
# [1,] FALSE  TRUE
# [2,] FALSE FALSE

# apply()
(x  <-  matrix(1:12,  nrow=3,  ncol=4))
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

apply(x,  1,  sum)  #  Row  totals
# [1]  22  26  30

apply(x,  2,  mean)  #  Column  means
# [1]     2     5     8  11

# rbind(...)
(rAB <- rbind(A,B))
#       [,1] [,2]
# [1,]    1    3
# [2,]    2    4
# [3,]    1    1
# [4,]    1    1

# cbind(...)
(cAB <- cbind(A,B))
#       [,1] [,2] [,3] [,4]
# [1,]    1    3    1    1
# [2,]    2    4    1    1


dim(A)
# [1] 2 2

nrow(A)
# [1] 2

ncol(A)
# [1] 2

colnames(A)
NULL

rownames(A)
NULL

dimnames(A)
NULL



# Useful Matrices Functions_End #####################  



# Matrices Example_begin ---------------------

## Example # Simulating Survival Data
  # The apply() function is great for simulating survival data.  Suppose we
  # want to simulate n = 10 observations where, the event times T follow an
  # exponential distribution with mean λ = 0.25 and the censoring times C are
  # distributed uniformly from 0 to 1.  Then the observed data is,
  # X = min(T,C) and δ = I(T < C).
  
#  Sample  size
n = 10
  
#  Generate event & censor times (look at the documentation tosee how R  parameterizes the exponential distribution)
event <- rexp(n,4)
censor <- runif(n)
    
# Select the minimum time and create an indicator variable
time <- apply(cbind(censor, event), 1, min)
index <- apply(cbind(censor, event), 1, which.min) -1
    
cbind(event, censor, time, index) #  Verify
# data4 <- cbind(event, censor, time, index) #  Verify
# data2  <- cbind(time, index)  #  Simulated  dataset
data <- cbind(time, index)  #  Simulated  dataset
    

#  Generate event & censor times (look at the documentation tosee how R  parameterizes the exponential distribution)
(event <- rexp(n,4))
# [1] 0.12397995 0.09226512 0.03223059 0.74592295 0.16978968 0.30600469 0.07016226
# [8] 0.04644129 0.61692838 0.05641769

(censor <- runif(n))
# [1] 0.3234119 0.3180562 0.7325883 0.7252999 0.7886921 0.7062104 0.6142827
# [8] 0.3460263 0.5011811 0.2137595


# Select the minimum time and create an indicator variable

(cbind(censor, event))
#          censor      event
# [1,]  0.3234119 0.12397995
# [2,]  0.3180562 0.09226512
# [3,]  0.7325883 0.03223059
# [4,]  0.7252999 0.74592295
# [5,]  0.7886921 0.16978968
# [6,]  0.7062104 0.30600469
# [7,]  0.6142827 0.07016226
# [8,]  0.3460263 0.04644129
# [9,]  0.5011811 0.61692838
# [10,] 0.2137595 0.05641769


(time <- apply(cbind(censor, event), 1, min))
# [1] 0.12397995 0.09226512 0.03223059 0.72529993 0.16978968 0.30600469 0.07016226
# [8] 0.04644129 0.50118105 0.05641769


(index <- apply(cbind(censor, event), 1, which.min) -1)
[1] 1 1 1 0 1 1 1 1 0 1


(cbind(event, censor, time, index)) #  Verify
#           event    censor       time index
# [1,]  0.12397995 0.3234119 0.12397995     1
# [2,]  0.09226512 0.3180562 0.09226512     1
# [3,]  0.03223059 0.7325883 0.03223059     1
# [4,]  0.74592295 0.7252999 0.72529993     0
# [5,]  0.16978968 0.7886921 0.16978968     1
# [6,]  0.30600469 0.7062104 0.30600469     1
# [7,]  0.07016226 0.6142827 0.07016226     1
# [8,]  0.04644129 0.3460263 0.04644129     1
# [9,]  0.61692838 0.5011811 0.50118105     0
# [10,] 0.05641769 0.2137595 0.05641769     1


(data <- cbind(time, index)) #  Simulated  dataset
#            time index
# [1,] 0.12397995     1
# [2,] 0.09226512     1
# [3,] 0.03223059     1
# [4,] 0.72529993     0
# [5,] 0.16978968     1
# [7,] 0.07016226     1
# [8,] 0.04644129     1
# [9,] 0.50118105     0
# [10,] 0.05641769    1


# Matrices Example_End #####################

### Matrices_End ##########################################

  
### Arrays_begin ------------------------------------------
# for imagine processing (MRI, CT)  
  
  
## Definition
  
## To create a Arrays_begin ---------------------
    
dim(as.array(letters)) 
arr <- array(1:3, c(2,4)) 
arr # recycle 1:3 "2 2/3 times" 

#     [,1] [,2] [,3] [,4] 
#[1,]    1    3    2    1 
#[2,]    2    1    3    2

names(arr)
# NULL

class(arr)
# [1] "matrix"

str(arr)
# int [1:2, 1:4] 1 2 3 1 2 3 1 2

summary(arr)

#       V1             V2            V3             V4      
# Min.   :1.00   Min.   :1.0   Min.   :2.00   Min.   :1.00  
# 1st Qu.:1.25   1st Qu.:1.5   1st Qu.:2.25   1st Qu.:1.25  
# Median :1.50   Median :2.0   Median :2.50   Median :1.50  
# Mean   :1.50   Mean   :2.0   Mean   :2.50   Mean   :1.50  
# 3rd Qu.:1.75   3rd Qu.:2.5   3rd Qu.:2.75   3rd Qu.:1.75  
# Max.   :2.00   Max.   :3.0   Max.   :3.00   Max.   :2.00  

rm(arr)



    
    
    
    
## To create a Arrays_End #####################
  
  
## Reference Elements of a Arrays_begin ---------------------
## Reference Elements of a Arrays_End #####################
  
  
# Arrays Operations_begin ---------------------
# Arrays Operations_End #####################
  
  
# Useful Arrays Functions_begin ---------------------
# Useful Arrays Functions_End #####################
  
  
# Arrays Example_begin ---------------------
# Arrays Example_End #####################
  
### Arrays_End ##########################################



### Lists_begin ------------------------------------------
  ## vector
  ## elements do not need to be of teh same type or dimension
  
  
## Definition
  
## To create a Lists_begin ---------------------
  
x  <-  list(num=c(1,2,3),  "Nick",  identity=diag(2))
x
  
$num
# [1] 1 2 3
  
[[2]]
# [1] "Nick"
  
$identity
#       [,1] [,2]
# [1,]    1    0
# [2,]    0    1

names(x)
[1] "num"      ""         "identity"

class(x)
#  [1] "list"

str(x)
# List of 3
# $ num     : num [1:3] 1 2 3
# $         : chr "Nick"
# $ identity: num [1:2, 1:2] 1 0 0 1

summary(x)
#         Length Class  Mode     
# num      3      -none- numeric  
#          1      -none- character
# identity 4      -none- numeric  


z <- list(a = 1, b = "c", c = 1:3)
z
# $a
# [1] 1

# $b
# [1] "c"

# $c
# [1] 1 2 3

names(z)
# [1] "a" "b" "c"


  
## To create a Lists_End #####################
  
  
## Reference Elements of a Lists_begin ---------------------
  
z <- list(a = 1, b = "c", c = 1:3)
z
# $a
# [1] 1
  
# $b
# [1] "c"
  
# $c
# [1] 1 2 3
  
z[1]
# $a
# [1] 1

z[2]
# $b
# [1] "c"

z[3]
# $c
# [1] 1 2 3

names(z)
[1] "a" "b" "c"

z["a"]
# $a
# [1] 1
  
z["b"]
# $b
# [1] "c"
  
z["c"]
# $c
# [1] 1 2 3
  
  
names(z)[3] <- "c2"  # change just the name of the third element.
z
# $a
# [1] 1
  
# $b
# [1] "c"
  
# $c2
# [1] 1 2 3
  
names(z)
# [1] "a"  "b"  "c2"
  
z["a"]
# $a
# [1] 1

z["b"]
# $b
# [1] "c"

z["c2"]
# $c2
#  [1] 1 2 3
  
  
z <- 1:3
z
# [1] 1 2 3
  
names(z)
# NULL
  
  
names(z)[2] <- "b" ## assign just one name
z
# <NA>    b <NA> 
#   1    2    3 
  
names(z)
# [1] NA  "b" NA 
  

  
  
## Reference Elements of a Lists_End #####################
  
  
# Lists Operations_begin ---------------------
# Lists Operations_End #####################
  
  
# Useful Lists Functions_begin ---------------------

  lapply()
  sapply()
  vapply()
  replicate()
  unlist(x)
  length(x)
  names(x)
  
# Useful Lists Functions_End #####################
  
  
# Lists Example_begin ---------------------
# Lists Example_End #####################
  
### Lists_End ##########################################



### Dataframes_begin ------------------------------------------
  # R datasets as dataframes
  
## Definition
# A dataframe is a matrix-like structure, where the columns can be of diﬀerent types.  
# You can also think of a dataframe as a list. Each column is an element of the list and each element has the same length.
# A dataframe is the fundamental data structure used by R’s statistical modeling functions

  
## To create a Dataframes_begin ---------------------
## To create a Dataframes_End #####################
  
  
## Reference Elements of a Dataframes_begin ---------------------
## Reference Elements of a Dataframes_End #####################
  
  
# Dataframes Operations_begin ---------------------
# Dataframes Operations_End #####################
  
  
# Useful Dataframes Functions_begin ---------------------
# Useful Dataframes Functions_End #####################
  
  
# Dataframes Example_begin ---------------------
# Dataframes Example_End #####################
  
### Dataframes_End ##########################################
  
  
#### Data Structures_End ###############################################################
  








  #### Data Types_begin ---------------------------------------------------------------
  
  
  ### Numeric_begin ------------------------------------------
  
  ## Definition
  
  # Numeric Operations_begin ---------------------
  # Numeric Operations_End #####################
  
  # Numeric Example_begin ---------------------
  # Numeric Example_End #####################
  
  ### Numeric_End ##########################################
  
  
  
  ### Logical_begin ------------------------------------------
  
  ## Definition
  
  # Logical Operations_begin ---------------------
  
  !x
  x  &  y
  x  &&  y
  x  |  y
  x  ||  y
  xor(x,y)
  x  %in%  y
  x  <  y
  x  >  y
  x  <=  y
  x  >=  y
  x  ==  y
  x  
  
  # NOT x
  # x AND y elementwise, returns a vector
  # x AND y, returns a single value
  # x OR y elementwise, returns a vector
  # x OR y, returns a single value
  # Exclusive OR of  x and y, elementwise
  # x IN y
  # x < y
  # x > y
  # x ≤ y
  # x ≥ y
  # x = y
  # x = y!=  y
  
  
  
  
  # Logical Operations_End #####################
  
  
  
  # Useful Logical Functions_begin ---------------------
  
  isTRUE(x) # TRUE if  x is TRUE
  all(...) # TRUE if all arguments are TRUE
  any(...) # TRUE if at least one argument is TRUE
  identical(x,y) # Safe and reliable way to test two objects for being exactly  equal
  all.equal(x,y) # Test if two objects are nearly  equal
  
  # Useful Logical Functions_End #####################
  
  
  # Logical Example_begin ---------------------
  # Logical Example_End #####################
  
  ### Logical_End ##########################################
  
  
  
  ### Character_begin ------------------------------------------
  
  ## Definition
  
  # Character Operations_begin ---------------------

  # Character Operations_End #####################
  
  
  # Useful Character Functions_begin ---------------------
  
  cat()
  paste()
  print()
  substr()
  strtrim()
  strsplit()
  grep()
  
  grepl()
  agrep()
  regexpr()
  
  gsub()
  sub()
  
  tolower(),  toupper()
  noquote()
  nchar()
  letters,  LETTERS
  
  
  Concatenate objects and print to console (\n for newline)
  Concatenate objects and return a string
  Print an object
  Extract or replace substrings in a character vector
  Trim character vectors to speciﬁed display widths
  Split elements of a character vector according to a substring
  Search for matches to a pattern within a character vector,
  returns a vector of the indices that matched
  Like grep(), but returns a logical vector
  Similar to grep(), but searches for approximate matches
  Similar to grep(), but returns the position of the ﬁrst
  instance of a pattern within a string
  Replace all occurrences of a pattern with a character vector
  Like gsub(), but only replaces the ﬁrst occurrence
  
  Convert to all lower/upper case
  Print a character vector without quotations
  Number of characters
  Built#in vector of lower and upper case letters
  

  
  
  
  
  # Useful Character Functions_End #####################
  
  
  # Character Example_begin ---------------------
  
  ## Example # Pattern Matching
  
  
  # Character Example_End #####################
  
  ### Character_End ##########################################
  
  
  
  ### Factor_begin ------------------------------------------
  
  ## Definition
  
  
  # Factor Operations_begin ---------------------
  

  # Factor Operations_End #####################
  
  
  # Useful Factor Functions_begin ---------------------
  
  factor(rep(1:2,  4),  labels=c("trt.1",  "trt.2"))
  # [1]  trt.1  trt.2  trt.1  trt.2  trt.1  trt.2  trt.1  trt.2
  Levels:  trt.1  trt.2
  
  factor(rep(1:3,  4),  labels=c("low",  "med",  "high"),  ordered=TRUE)
  # [1]  low     med     high  low     med     high  low     med     high  low     med     high
  Levels:  low  <  med  <  high
  
  levels(x)
  nlevels(x)
  relevel(x,  ref)
  reorder()
  gl()
  cut(x,  breaks)
  
  Retrieve or set the levels of  x
  Return the number of levels of  x
  Levels of  x are reordered so that the level speciﬁed by ref is ﬁrst
  Reorders levels based on the values of a second variable
  Generate factors by specifying the pattern of their levels
  Divides the range of  x into intervals (factors) determined by breaks
  
  # Useful Factor Functions_End #####################
  
  
  # Factor Example_begin ---------------------
  # Factor Example_End #####################
  
  ### Factor_End ##########################################
  
  
  ### Dates_begin ------------------------------------------
  
  ## Definition
  
  
  # Dates Operations_begin ---------------------
  # Dates Operations_End #####################
  
  
  # Useful Dates Functions_begin ---------------------
  # Useful Dates Functions_End #####################
  
  
  # Dates Example_begin ---------------------
  # Dates Example_End #####################
  
  ### Missing Data_End ##########################################
  
  
  ### Missing Data_begin ------------------------------------------
  
  ## Definition
  
  
  # Missing Data Operations_begin ---------------------
  x  <-  c(4,  7,  2,  0,  1,  NA)
    mean(x)
  # [1]  NA
  mean(x,  na.rm=TRUE)
  # [1]  2.8
  which(x>4)
  # [1]  2
  
  x  <-  matrix(1:4,  ncol=2,  dimnames=list(NULL,  c("c.1",  "c.2")))
  
  
  # Missing Data Operations_End #####################
  
  
  # Useful Missing Data Functions_begin ---------------------
  

    
    ## Detecting Missing Data
    
    is.na(x)
  is.nan(x)
  is.null(x)
  
  # Useful Missing Data Functions_End #####################
  
  
  # Missing Data Example_begin ---------------------
  # Missing Data Example_End #####################
  
  ### Missing Data_End ##########################################
  
#### Data Types_End ###############################################################
  
  

