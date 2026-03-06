for f in *.bam; do 
    samtools sort "$f" > "${f%.*}_sorted.bam" -@ 12
done
