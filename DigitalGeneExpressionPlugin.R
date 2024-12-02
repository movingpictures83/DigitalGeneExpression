
library(edgeR)
input <- function(inputfile) {
   cnts <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {


	grp.idx <- rep(c("knockdown", "control"), each=4)
dgel <- DGEList(counts=cnts, group=factor(grp.idx))
dgel <- calcNormFactors(dgel)
saveRDS(dgel, outputfile)
}
