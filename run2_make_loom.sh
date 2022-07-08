sing="singularity exec container/rnakato_singlecell_jupyter.2022.03.sif"
gtf=references_annotations/Drosophila_melanogaster.BDGP6/Drosophila_melanogaster.BDGP6.32.103.chr_filtered.gtf
repeat=references_annotations/Drosophila_melanogaster.BDGP6/BDGP6_rmsk.nochr.gtf

mkdir -p log
for dir in 1DAE 3DAE
do
    $sing velocyto run10x -m $repeat -@ 12 $dir $gtf >& log/$dir.log &
done

