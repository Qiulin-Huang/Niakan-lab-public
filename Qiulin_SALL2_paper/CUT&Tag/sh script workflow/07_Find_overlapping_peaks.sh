#Find overlapping peaks in narrowPeak format
bedtools intersect -a n2_qval0.05_peaks.narrowPeak -b n3_qval0.05_peaks.narrowPeak > n2_n3_overlapping_peaks.narrowPeak

#Convert narrowPeak into bed format
awk '{print $1, $2+$10, $2+$10+1}' OFS="\t" n2_n3_overlapping_peaks.narrowPeak > n2_n3_overlapping_peaks_summit.bed

