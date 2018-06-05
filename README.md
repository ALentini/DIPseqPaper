## A reassessment of DNA immunoprecipitation-based genomic profiling
### Lentini A., Lagerwall C., Vikingsson S., Mjoseng H.K., Douvlataniotis K., Vogt H., Green H., Meehan R.R., Benson M. & Nestor C.E.
Availability: paper (in press) ; ([preprint](https://doi.org/10.1101/224279)).

(More info to come)

Data and scripts related to publication. Some scripts are rewritten to provide step-wise explanation of what was done to increase reproducibility and may require editing of variable names etc. to work properly on real files. Raw data pre-processing steps prior to analysis is provided in the manuscript and was kept to a minimum to simplify the usage of different pipelines, eg. different alignment software. All accession codes for datasets are provided in the manuscript.

### Bash:
- `bash/bedGraphRPM` was used to normalize counts in .bedGraph files from the same study as 'reads per million mapped' (RPM), eg. Figure 1a,b.
- `bash/identifyMotifsFromFastq` was used to screen .fastq reads for overrepresented sequences, eg. Figure 1f & 2d. This was done to get an idea of immunoprecipitated sequences and avoid issues related to sequence alignment, ie. multimapping and poorly mapped genome regions.
- `bash/mergeSubsampleControlBam` was used to pool and subsample IgG and Input control .bam files to 20M read universal background for use in peak calling. Resulting .narrowPeak files after peak calling are provided under `data/peaks` and the subsampled .bam files can be provided upon request due to large file size.

### R (version 3.4.2 (2017-09-28) was used predominantly):
For reading files into R, the following functions were used:
```r
GenomicAlignments::readGAlignments() # for .bam files
rtracklayer::import() # for .narrowPeak (using the 'extraCols' argument), .bigWig and .bedGraph files
```
- `R/countOverlapsScore.R` was used to count methylated CpHs per .bed region in Figure S2f where a CpH was considered methylated if the methylation level was at least 80% `FUN = function(y){sum(y >= 80,na,rm=T)}`.
- `R/countProfile.R` was used to generate meta profiles centered around bed regions, eg. Figure 1e, 3b, S2g.
- `R/getFDRpeaks.R` was used to estimate fraction of false peaks for 5modC peaks identified using IgG or Input controls (ie. `data/peaks`), eg. Figure 3a, S3b, S4a-c
- `R/shuffleGenome.R` was used to generate a random background for Figure 3d that maintains the same size and chromosome distribution.
- `R/countGC.R` was used in Figure 2i to calculate GC content of mapped fragments. 
