# A reassessment of DNA immunoprecipitation-based genomic profiling
In this [paper](https://doi.org/10.1101/224279) we show X.

Bash and R scripts related to publication. Scripts are rewritten to provide step-wise explanation of what was done to increase reproducibility and may require editing of variable names etc. to work properly on real files. Raw data pre-processing steps prior to analysis is provided in the manuscript and was kept to a minimum to simplify the usage of different pipelines, eg. different alignment software. All accession codes for datasets are provided in the manuscript.

### Bash:
- `bedGraphRPM` was used to normalize counts in .bedGraph files from the same study as 'reads per million mapped' (RPM), eg. Figure 1a,b
- `identifyMotifsFromFastq` was used to screen .fastq reads for overrepresented sequences, eg. Figure 1f & 2d. This was done to get an idea of immunoprecipitated sequences and avoid issues related to sequence alignment, ie. multimapping and poorly mapped genome regions.
- `mergeSubsampleControlBam` was used to pool and subsample IgG and Input control .bam files to 20M read universal background for use in peak calling. Resulting .narrowPeak files after peak calling are provided under `data/peaks` and the subsampled .bam files can be provided upon request due to large file size.

### R (version 3.4.2 (2017-09-28) was used predominantly):
- 
- 
