#!/bin/bash

# Create an output directory if it doesn't exist
mkdir -p macs3_Desi_control_results

# Loop through Sample1 to Sample3
for i in {1..1}; do
    echo "Processing Sample${i} with MACS3..."
    
    macs3 callpeak -t n${i}_aligned_sorted.bam \
                   -c Desi_control_aligned_sorted.bam \
                   -f BAM \
                   -g hs \
                   --nomodel \
                   --extsize 150 \
                   -q 0.05 \
                   -n n${i}_qval0.05 \
                   --outdir macs3_Desi_control_results
done

echo "MACS3 peak calling completed!"

