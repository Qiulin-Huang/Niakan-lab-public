#!/bin/bash


for i in {5..22}; do
    SAMPLE="HUA7170A${i}"
    echo "Processing ${SAMPLE}..."

    samtools flagstat "${SAMPLE}_Aligned.sortedByCoord.out.bam" > "${SAMPLE}_flagstat.txt"
done
