computeMatrix reference-point \
    --referencePoint center \
    -S SALL2_v2.bw SALL2_v3.bw IgG.bw \
    -R n2_n3_overlapping_peaks_summits.bed \
    -a 3000 -b 3000 \
    --skipZeros \
    -o PeakHeatmaps/Combined_matrix_summits_test.gz \
    --verbose
