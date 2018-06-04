# A reassessment of DNA immunoprecipitation-based genomic profiling
In this [paper](https://doi.org/10.1101/224279) we show X.

Bash and R scripts related to publication, (R version 3.4.2 (2017-09-28) was used predominantly). 

Bash:
- `bedGraphRPM` was used to normalize counts in .bedGraph files from the same study as 'reads per million mapped' (RPM), eg. Figure 1a,b
- `identifyMotifsFromFastq` was used to screen .fastq reads for overrepresented sequences, eg. Figure 1f & 2d. This was done to get an idea of immunoprecipitated sequences and avoid issues related to sequence alignment, ie. multimapping and poorly mapped genome regions.
- `mergeSubsampleControlBam` was used to pool and subsample IgG and Input control .bam files to 20M read universal background for use in peak calling. Resulting .narrowPeak files after peak calling are provided under `data/peaks` and the subsampled .bam files can be provided upon request due to file size limitations.
