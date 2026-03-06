#!/bin/bash

# Loop through Sample1 to Sample4
for i in {1..4}; do
    echo "Aligning Sample n${i}..."
    bowtie2 -x /storage/Qiulin/Bioinformatics/Index_Bowtie2_human_genome_hg19/bt2_files/hg19 \
        -1 n${i}_1_val_1.fq.gz \
        -2 n${i}_2_val_2.fq.gz \
        -S n${i}_aligned.sam \
        --very-sensitive \
        --end-to-end \
	--threads 12
done

echo "Alignment completed!"

