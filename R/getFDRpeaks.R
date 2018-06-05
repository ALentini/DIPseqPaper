#Get an approximation of false regions based on different controls
#Where X & Y are DIP vs IgG or Input, respectively (in bed format ie. GRanges)
getFDRpeaks <- function(x,y){
  require(GenomicRanges)
  z <- findOverlaps(x,y)
  1-(length(z)/c(length(x),length(y)))
}
