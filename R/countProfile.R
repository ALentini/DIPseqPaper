#Get meta profile for alignments centered around bed feature
get.prof <- function(bed,aln,size=2001,n=101){
  require(GenomicRanges)
  bin <- unlist(tile(resize(bed,width = size,fix = "center"),width = size/n))
  cnt <- countOverlaps(bin,aln) / (length(aln) / 1e6)
  df <- matrix(cnt,ncol = n,byrow = T)
}
