for f in *.sam; do
    samtools view "$f" -b -@ 5 > "${f%.*}.bam"
done
