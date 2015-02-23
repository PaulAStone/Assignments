################################################################################
#                                                                              #
# MothurTools Functions Source Code                                            #
#                                                                              #
################################################################################
#                                                                              #
# Written by: Mario Muscarella                                                 #
#                                                                              #
# Last update: 2015/02/22                                                      #
#                                                                              #
################################################################################
#                                                                              #
# Notes: This code provides numerous functions to be used in the analysis of   #
#        16S rRNA sequence data post mothur anlaysis                           #
#                                                                              #
# Issues: Slow performance reading in OTU tables (common R issue)              #
#                                                                              #
# Recent Changes:                                                              #
#                                                                              #
# Future Changes (To-Do List):                                                 #
#         1. Design functions to work with shared files in memory              #
#         2. Add warnings                                                      #
#                                                                              #
################################################################################

# Import OTU matrix
read.otu <- function(shared = " ", cutoff = "0.03"){
  matrix <- read.table(shared, header=T, fill=TRUE, comment.char="", sep="\t")
  matrix.cutoff <- subset(matrix, matrix$label == cutoff)
  matrix.out    <- as.matrix(matrix.cutoff[1:dim(matrix.cutoff)[1],
                                           4:(3+mean(matrix.cutoff$numOtus))])
  row.names(matrix.out) <- matrix.cutoff$Group
  return(matrix.out)
  }

# Count All Groups
count.groups <- function(otu.matrix = " "){
  counts <- rowSums(otu.matrix)
  return(counts)
  }

# rarefy function from Vegan (version 2.0-10)
rrarefy.1 <- function (x, sample) {
    if (!identical(all.equal(x, round(x)), TRUE))
        stop("function is meaningful only for integers (counts)")
    x <- as.matrix(x)
    if (ncol(x) == 1)
        x <- t(x)
    if (length(sample) > 1 && length(sample) != nrow(x))
        stop(gettextf("length of 'sample' and number of rows of 'x' do not match"))
    sample <- rep(sample, length = nrow(x))
    colnames(x) <- colnames(x, do.NULL = FALSE)
    nm <- colnames(x)
    for (i in 1:nrow(x)) {
        row <- sample(rep(nm, times = x[i, ]), sample[i])
        row <- table(row)
        ind <- names(row)
        x[i, ] <- 0
        x[i, ind] <- row
        }
    return(x)
    }

# Subsampling wrapper
sub.sample <- function(otu.matrix  = " ",
                       sample.size = "min(count.groups(test))"){
  counts <- count.groups(otu.matrix)
  if (sample.size == " "){
    sample.size = counts}
  statement <- counts > sample.size  # Add warning message
  otu.matrix <- subset(otu.matrix, rowSums(otu.matrix)>sample.size)
  x <- rrarefy.1(otu.matrix, sample.size)
  return(x)
  }

# Calculate Sample Depth or Coverage for Resampled Matrix
coverage <- function(input= " ", cutoff = " ", size = " ", shared = "FALSE"){
  if(shared == TRUE){
    otu.matrix <- read.otu(input, cutoff)
    } else {
      otu.matrix <- input
      }
  counts <- count.groups(otu.matrix)
  statement <- counts > size  # Add warning message
  otu.matrix <- subset(otu.matrix, rowSums(otu.matrix)>size)
  cover <- matrix(NA, dim(otu.matrix)[1], 1)
  rownames(cover) <- rownames(otu.matrix)
  colnames(cover) <- "Coverage"
  temp.matrix <- sub.sample(otu.matrix, size)
  for (i in 1:dim(temp.matrix)[1]){
    cover[i,] <- 1 - ((length(which(temp.matrix[1,] == 1))) /
        (length(which(temp.matrix[i,] > 0))))
    }
  return(cover)
  }
