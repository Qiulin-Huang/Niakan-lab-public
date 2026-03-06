#!/bin/bash


for i in {5..22}; do
    SAMPLE="HUA7170A${i}"
    echo "Processing ${SAMPLE}..."
    samtools index -@ 12 "${SAMPLE}_Aligned.sortedByCoord.out.bam"
done

echo "Done"
