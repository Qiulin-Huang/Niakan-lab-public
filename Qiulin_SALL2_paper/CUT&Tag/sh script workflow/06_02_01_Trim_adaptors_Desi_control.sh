#!/bin/bash

echo "Processing Sample"

trim_galore \
    --paired \
    --cores 12 \
    Desi_control_1.fq Desi_control_2.fq \
    -o /storage/Qiulin/Bioinformatics/CutNTag-seq/X204SC25022323-Z01-F001/Desi_control_fastq/Trimmed_reads

echo "Trimming completed!"


