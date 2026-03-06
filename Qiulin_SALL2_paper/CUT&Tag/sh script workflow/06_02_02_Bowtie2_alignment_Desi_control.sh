#!/bin/bash
echo "Aligning Sample n${i}..."

bowtie2 -x /storage/Qiulin/Bioinformatics/Index_Bowtie2_human_genome_hg19/bt2_files/hg19 \
    -1 Desi_control_1_val_1.fq \
    -2 Desi_control_2_val_2.fq \
    -S Desi_control_aligned.sam \
    --very-sensitive \
    --end-to-end \
    --threads 12

echo "Alignment completed!"

