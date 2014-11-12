# OTU Analysis for Microbial Metagenomics
# Written by Mario Muscarella, Kevin Theis
# Last Update 06-03-2012

#Alpha Diversity Analyses (evaluating sample coverage)
#for each sampling unit, you will need to change the rarefaction file you are accessing and adjust the graph_title accordingly
rm(list = ls())                                  # Removes objects from your R environment
setwd(choose.dir())                              # Sets the working directory in R
rare_file <- "KBS.an.MA1A.rarefaction"           # Name of the file we are working with
rare_data <- read.delim(rare_file, header=T)     # Reads in the file. read.delim = tab deliminated file
graph_title <- "Agriculture Rep 1"               # A title for our graph
# windows()                                      # Opens a new graphics window on a windows
quartz()                                         # Opens a new graphics window on a mac

plot(rare_data[,1],rare_data[,2], xlab="Number of Sequences", ylab="Number of OTU's", main=graph_title, pch=19, col="#ff0000", cex=1)
  points(rare_data[,1],rare_data[,3], pch=19, col="#ff000050", cex=0.5)
  points(rare_data[,1],rare_data[,4], pch=19, col="#ff000050", cex=0.5)
  points(rare_data[,1],rare_data[,5], pch=19, col="#0000ff", cex=1)
  points(rare_data[,1],rare_data[,6], pch=19, col="#0000ff50", cex=0.5)
  points(rare_data[,1],rare_data[,7], pch=19, col="#0000ff50", cex=0.5)
  points(rare_data[,1],rare_data[,8], pch=19, col="#00ff00", cex=1)
  points(rare_data[,1],rare_data[,9], pch=19, col="#00ff0050", cex=0.5)
  points(rare_data[,1],rare_data[,10], pch=19, col="#00ff0050", cex=0.5)
  abline(0,1, lty=2, lwd=2)
  legend("topleft", c("0.03", "0.10", "0.20", "95% CI"), pch=c(19,19,19,1), col=c(2,4,3,1), pt.cex=c(1,1,1,0.5), bty="n")

# Here we plot the rarefaction curve as a dot plot. Open the datafile to see what the columns are. The subsetting [,x] is selecting the x column of the data
# xlab = X axis label, ylab = Y axis label, main = Graph Title, pch = plotting character, cex = plotting character size
# col = color, Here we use hexidecimal color codes. This allows us to use transparency. Look these up if you are interested
# abline = adds a line to the current graph, abline(intercept, slope) lty = line type, lwd = line width
# legend = adddes a legend to the plot


#Beta Diversity Analyses
rm(list=ls())
setwd(choose.dir())
require(vegan)                 # loads the vegan package including dependencies
require(MASS)

#Extract 0.10 OTU data from the mothur shared file
# Selects just the needed information from the mothur output
# The subset command selects only those OTUs which fit our criteria
# We created a new OTU matrix with only the OTU's we are interested in
OTU_File <- "KBS.an.shared"
OTU_Data <- read.delim(OTU_File, header=T)
OTU_0.10 <- subset(OTU_Data, OTU_Data$label == "0.10",drop=T)
OTU_0.10 <- droplevels(OTU_0.10)
OTU_Matrix <- OTU_0.10[,4:(3+mean(OTU_0.10[,3]))]
row.names(OTU_Matrix) <- OTU_0.10[,2]

#create community distance matrix based on Bray-Curtis Dissimilarity Index (Vegan Package)
OTU_bray.dist <- vegdist(OTU_Matrix, method="bray")        

#create non-metric multidimensional scaling (nMDS)plot (MASS Package)
fit <- isoMDS(OTU_bray.dist, k=2)
fit
x <- fit$points[,1]
y <- fit$points[,2]
plot(x, y, xlab="Coordinate 1", ylab="Coordinate 2", main="Nonmetric MDS", type="n")
text(x, y, labels = row.names(OTU_Matrix), cex=.7)

#conduct a cluster analysis (Vegan Package)
OTU_bray.clust <- hclust(OTU_bray.dist, method="average") 
# par(mfrow=c(1,2))
plot(OTU_bray.clust) 

#conduct an Analysis of Similarities (ANOSIM)
#if consulting dissimilarity ranks, use values from the "50%" column
Anosim <- anosim(OTU_Matrix, grouping = c("Ag", "Ag", "Ag", "Forest", "Forest", "Forest"), permutations = 1000, distance = "bray")
summary(Anosim)

#conduct a Similarity Percentages analysis
#an overall average proportional dissimilarity between treatments is not reported, but it can be obtained by summing the values in the contribution column
#ratio is the average proportional contribution of the respective OTU divided by its SD
Simper <- simper(OTU_Matrix, group = c("Ag", "Ag", "Ag", "Forest", "Forest", "Forest"))
summary(Simper)
