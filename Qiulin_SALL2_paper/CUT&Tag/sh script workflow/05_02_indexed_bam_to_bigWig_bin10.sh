# Create output directory if it doesn't exist
mkdir -p bigwig_outputs

for i in {1..4}; do
    echo "Processing Sample n${i}..."
    bamCoverage -b n${i}_aligned_sorted.bam \
                --binSize 10 \
                --normalizeUsing CPM \
                -o bigwig_outputs/n${i}_bin10.bw \
		-p 12
done

echo "bamCoverage processing completed!"
