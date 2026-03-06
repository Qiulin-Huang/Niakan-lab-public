computeMatrix reference-point \ #Since all TSS in TSS_unique_hg19.bed are only spanning 1bp, so using reference-point is the same as using TSS here.
    --referencePoint TSS \
    -S SALL2_v2.bw SALL2_v3.bw IgG.bw \
    -R TSS_unique_hg19.bed \
    -a 3000 -b 3000 \
    --skipZeros \
    -o PeakHeatmaps/Combined_matrix_TSS.gz \
    --verbose
