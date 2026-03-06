#!/bin/bash

# Loop through Sample1 to Sample4
for i in {1..4}; do
    echo "Processing Sample n${i}..."
    trim_galore --paired --cores 12 n${i}_1.fq.gz n${i}_2.fq.gz -o /storage/Qiulin/Bioinformatics/CutNTag-seq/X204SC25022323-Z01-F001/Processed/Trimmed_reads
done

echo "Trimming completed!"

