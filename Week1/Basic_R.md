## Basic R

R can be used for basic commands. For example, R can be used to for basic math functions and data manipulations. Below is a code block that defines a variable X and briefly summarizes properties of that variable. In this document, you will find code in these code blocks: 

```


```
This is where you will eventually type your own code. Code blocks will include all
code and R output. R output will be identifed with "##". Knitr will automatically format
this when you compile to PDF. Oh yeah, I'm sure you just noticed all of the charactors.
Well this is the price you will pay for using something as awesome as LATEX . There are
certain special charactors that you are not allowed to use alone. To use these you will need
to add infront of them. You should be good if you do this. But from time to time you
will forget and probably get this error: You can't use `macro parameter character #` in
horizontal mode. Just ask for help if you can't x that.

if x

### Goals
+ Getting set up in Git and GitHub
+ Creating Accounts
+ Repos


```R
# Create a sequence of numbers
X <- 2:10

# Display basic statistics about X
summary(X)

## Min.  1st Qu.  Median  Mean  3rd Qu.  Max.
##   2        4        6     6       8     10

mean(X)

## [1] 6