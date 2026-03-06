for f in *_sorted.bam; do 
    samtools index "$f" -@ 12 
done
