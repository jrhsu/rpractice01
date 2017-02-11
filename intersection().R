## The intersection of two sets can be defined via match():
## Simple version:
## intersect <- function(x, y) y[match(x, y, nomatch = 0)]
intersect # the R function in base is slightly more careful
intersect(1:10, 7:20)

1:10 %in% c(1,3,5,9)
# [1]  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE

sstr <- c("c","ab","B","bba","c",NA,"@","bla","a","Ba","%")
sstr[sstr %in% c(letters, LETTERS)]

# [1] "c" "B" "c" "a"

"%w/o%" <- function(x, y) x[!x %in% y] #--  x without y
(1:10) %w/o% c(3,7,12)
# [1]  1  2  4  5  6  8  9 10


## Note that setdiff() is very similar and typically makes more sense: 
c(1:6,7:2) %w/o% c(3,7,12)  # -> keeps duplicates
# [1] 1 2 4 5 6 6 5 4 2

setdiff(c(1:6,7:2), c(3,7,12)) # -> unique values
# [1] 1 2 4 5 6