#Extends aligned reads to 200bp and calculates GC content of the resulting 'mapped fragment'. genome = BSgenome.Mmusculus.UCSC.mm9, si = rtracklayer::SeqinfoForBSGenome(genome)
countGC <- function(aln,genome,si){
  require(GenomicRanges)
  gr <- trim(with(aln,GRanges(seqnames,IRanges(start,start+200),strand=strand,seqinfo=si)))
  bs <- getSeq(genome,names=gr)
  density(unlist(letterFrequency(bs,letters="CG",as.prob=T))
}
