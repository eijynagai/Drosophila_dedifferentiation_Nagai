# Drosophila dedifferentiation Nagai

This directory contains the scripts and data required to reproduce and extend 
the analyses presented in the paper, "Nutrient-driven dedifferentiation of 
enteroendocrine cells promotes adaptive intestinal growth".

## Prerequisites
To avoid version conflicts and necessity to install tools, we prefer using container.
All necessary tools are already installed in the singlecell_jupyter singularity image.
* Singularity 3.4 or higher
* Dockerfile (use 2022.03 version: https://hub.docker.com/r/rnakato/singlecell_jupyter)
* CellRanger 6.0.1 (https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest)

## Other necessary files
* [Drosophila genome](https://jan2019.archive.ensembl.org/Drosophila_melanogaster/Info/Index) 
and [annotation files](http://ftp.ensembl.org/pub/release-103/gtf/drosophila_melanogaster/Drosophila_melanogaster.BDGP6.32.103.gtf.gz)
* Fastq files (GEO id in process)
* 

## List of initial files and directories

```
project/
│     README.md
│     aggr.csv
│     run1_cellranger.sh
│     run2_make_loom.sh
│     run3_merge_loom.ipynb
│     run4_QC1.ipynb
│     run5_QC2.ipynb
│     run6_DEGs_GO.ipynb
│     run7_RNA_velocities.ipynb
│     run8_EE_subclusters.ipynb
│     run9_midgut_cellatlas_comparison.ipynb
│
└───  fastq/
│     └─  1DAE/
│     │      1DAE_S1_L001_R1_001.fastq.gz
│     │      1DAE_S1_L001_R2_001.fastq.gz
│     │  
│     └─  3DAE/
│            3DAE_S1_L001_R1_001.fastq.gz
│            3DAE_S1_L001_R2_001.fastq.gz
│
└───  references_annotations/
│     └─  Drosophila_melanogaster.BDGP6/
│ 
└───  container/
      └─  rnakato_singlecell_jupyter.2022.03.sif

```

## Contact
nagai [at] iqb.u-tokyo.ac.jp
