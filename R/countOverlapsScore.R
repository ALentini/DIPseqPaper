#Summarizes GenomicRanges score() (ie. BigWig or BedGraph) over bed file similar to countOverlaps()
countOverlapsScore <- function(x,bw,FUN=mean, ...){
  require(GenomicRanges)
  ol <- findOverlaps(x,bw)
  cnt <- tapply(score(bw)[subjectHits(ol)],queryHits(ol),FUN, ...)
  v <- as.numeric(rep(NA,length(x)))
  v[unique(queryHits(ol))] <- cnt
  return(v)
}
