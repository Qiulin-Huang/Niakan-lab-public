#Install Homer
wget http://homer.ucsd.edu/homer/configureHomer.pl
perl configureHomer.pl -install

#Add Homer bin directory to the system path (So you can run it at any directory)
echo 'export PATH=~/homer/bin:$PATH' >> ~/.bashrc
source ~/.bashrc  # Reload bash profile

#Install hg19 human genome annotation for Homer
perl configureHomer.pl -install hg19

#Annotation with default built-in h19 genome annotation
annotatePeaks.pl n2_n3_overlapping_peaks.bed hg19 > n2_n3_overlapping_annotated_peaks.txt

#Annotation with customized genome annotation
annotatePeaks.pl n2_n3_overlapping_peaks.bed hg19 -gtf gencode.v47lift37.annotation.gtf > n2_n3_overlapping_annotated_hg19gtf.txt
