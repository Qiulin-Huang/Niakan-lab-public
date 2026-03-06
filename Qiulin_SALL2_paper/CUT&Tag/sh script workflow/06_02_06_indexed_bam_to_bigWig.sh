# Create output directory if it doesn't exist
mkdir -p bigwig_outputs
echo "Processing Sample n${i}..."
bamCoverage -b Desi_control_aligned_sorted.bam \
    --binSize 1 \
    --normalizeUsing CPM \
    -o bigwig_outputs/Desi_control.bw \
    -p 12

echo "bamCoverage processing completed!"
