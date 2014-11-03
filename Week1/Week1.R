### INTRODUCTION TO WORKING IN R ###

# SETTING YOUR WORKING DIRECTORY
getwd() # prints current working directory
setwd("/Users/lennonj/GitHub/Quantitative_Biodiversity/Assignments/Week1") # set workding dir

# USING R AS A CALCULATOR #
1+3 # addition

3-1 # subtraction

3*10^2 # multiplication

10/pi # division using one of R's built-in constants

sin(4) # trigonometry; simple example of a function (sin) and argument (4)

log10(100) # log base 10; another example of function and argument

log(100) # natural log

# DEFINING VARIABLES #
  # importance of "assignment" using -> (vs =)
  # importance of sequence of definintions
  # in R studio, see Environment tab

a <- 10

b <- a + 20

a <- 20 # now, what is b?

  # you can clear variable from R memory in two ways
  # 1) rm(list=ls()) # removes all items in the list 'ls'
      # example of calling functions within functions
  # 2) clicking on "clear" in the Environment tab

# WORKING WITH SCALARS, VECTORS, AND MATRICES #

w <- 5 # x is a scalar

x <- c(2,3,6,w,w+7, 12,14) # x is a vector

help(c) # What is the function c? the help function is your friend.

y <- w*x # what happens when you multiply a scalar and vector?

z <- x*y # what happens when you multiply two vectors?

z[2] # reference 2nd element in vector z

z[2:5] # reference elements 2-5 in vector z

z[2]=583 # change the value of an element in vector z

sum(z) # built-in function for taking sum of vector

mean(z) # built-in function for taking mean of vector

sd(z) # built-in function for taking standard deviation of vector

sem(z) # what about standard error of the mean?

sem <- function(x){
  sd(x)/sqrt(length(x))
  } # example of a simple user-defined function

  # Three common ways to create a matrix (two dimensional vectors)

  # First way: combine vectors
j <- c(rnorm(length(z),mean=z)) # create new vector of random numbers

k <- cbind(z,j) # use cbind to make a matrix from two vectors

  # use 'help' function to learn about cbind

  # use the 'dim' function to describe the matrix you just created 

  # Second way: use matrix function
l <- matrix(c(2,4,3,1,5,7),nrow=3,ncol=2) 

  # Third way: import data
m <- as.matrix(read.table("matrix.txt",sep="\t",header=FALSE))

n <- t(m) # often we want to transpose matrices, this is easy in R

  # Some ways to subset data in a matrix:

  # Take first three rows:
n <- m[1:3,]

  # Take first two columns:
n <- m[,1:2]

  # Take columns 1, 2, and 5:
n <- m[,c(1:2,5)]
