#!/bin/bash

# Define input directories
DIR_A="/storage/Qiulin/Bioinformatics/Bulk_RNA-seq/RN24191/20250207_LH00442_0089_B22YJC3LT3/fastq"
DIR_B="/storage/Qiulin/Bioinformatics/Bulk_RNA-seq/RN24191/20250221_LH00442_0091_A22WW7JLT3/fastq"

# Loop through FASTQ files in DirectoryA
for file_a in "$DIR_A"/*.fastq.gz; do
    # Extract filename
    filename=$(basename "$file_a")

    # Extract the sample name and read direction (ignoring random string)
    if [[ $filename =~ ^([A-Za-z0-9]+)_.*_(R[12])_.*\.fastq\.gz$ ]]; then
        sample_name="${BASH_REMATCH[1]}"  # Extracted sample name (e.g., HUA7170A5)
	echo $sample_name
        read_direction="${BASH_REMATCH[2]}"  # Extracted read direction (R1 or R2)
        echo $read_direction

        # Find corresponding file in DirectoryB
        file_b=$(find "$DIR_B" -type f -name "${sample_name}_*_$(echo "$read_direction")_*.fastq.gz" | head -n 1)

        # Check if a matching file was found in DirectoryB
        if [[ -n "$file_b" ]]; then
            output_file="${sample_name}_${read_direction}.fastq.gz"
            echo "Concatenating $file_a and $file_b into $output_file ..."
            cat "$file_a" "$file_b" > "$output_file"
        else
            echo "Warning: No matching file for $file_a in $DIR_B"
        fi
    else
        echo "Warning: Could not parse sample name and read direction for $filename"
    fi
done

echo "FASTQ file concatenation completed!"
