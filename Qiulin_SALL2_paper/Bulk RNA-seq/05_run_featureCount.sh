# Run this command at the directory of the .bam files
featureCounts -T 12 \
              -a /storage/Qiulin/Bioinformatics/Reference_human_genome_gencode/gencode_v47_basic_annotation.gtf \
              -o /storage/Qiulin/Bioinformatics/Bulk_RNA-seq/RN24191/Counts/20250207_and_20250221_Counts/gene_counts_basic_multimapping.txt \
              -p \
              -M \
              *_Aligned.sortedByCoord.out.bam
