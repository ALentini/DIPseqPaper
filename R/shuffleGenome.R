#Shuffle bed regions to random regions of the same size and chromosome. si = chromosome sizes, ie. from rtracklayer::SeqinfoForBSGenome()
shuffleGenome <- function(x,si){
  require(GenomicRanges)
  lim <- seqlengths(si)[as.character(seqnames(x))] - width(x)
  pos <- round(runif(length(x),1,lim))
  GRanges(seqnames(x),IRanges(pos,width=width(x)))
}
