import pandas as pd

#Load the hg19 genome annotation downloaded from gencode
hg19_original_annotation = pd.read_csv('gencode.v47lift37.annotation.gtf', sep = '\t', comment = "#", header = None, index_col = False)

#Slice the dataframe to get only feature annotated as transcript
Transcript_df = hg19_original_annotation[hg19_original_annotation[2] == 'transcript']

#In the 8th column where gene_id is shown, keep only gene_id
Transcript_df[8] = Transcript_df[8].str.extract(r'gene_id "([^"]+)"') #Only keep gene id in the last column

#If the same gene_id has multiple transcripts, then keep only the first transcript (because we want a unique TSS for each gene)
Transcript_unique_df = Transcript_df.drop_duplicates(subset=[8], keep='first')

#Slice and rearrange the dataframe to keep only column 0, 3, 4, 8, 5, 6. This format is the same as the format in .bed files
Transcript_unique_bed_df = Transcript_unique_df[[0, 3, 4, 8, 5, 6]]

#Save the dataframe into .bed file
Transcript_unique_bed_df.to_csv("TSS_unique_hg19.bed", sep="\t", index=False, header=False)