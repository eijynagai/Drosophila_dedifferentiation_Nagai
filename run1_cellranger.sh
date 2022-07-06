# Please adjust the path to the tools and reference accordingly
cellranger=/work/CellRanger/cellranger-current/cellranger
reference=references_annotations/Drosophila_melanogaster.BDGP6/output_genome

mkdir -p log
fastqdir=fastq

# scRNA-seq
for label in 1DAE 3DAE
do
    $cellranger count --id=$label --transcriptome=$reference --fastqs=$fastqdir/$label/ \
                --sample=$label >log/$label
done

cellranger aggr --id=aggr --csv=aggr.csv

