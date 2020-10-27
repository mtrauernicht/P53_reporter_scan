source activate tf-activity
cd /DATA/usr/m.trauernicht/projects/SuRE_deep_scan_trp53_gr/pDNA_insert_seq/

# Pre-processing: Process the raw sequencing reads, output: filtered read txt file
## 1: fastqc check to get all relevant information about the reads:
mkdir docs
fastqc fastq_files/6185_1_pMT06_CCGCGGTT-AGCGCTAG_S1_R1_001.fastq.gz -o docs/

## 2: Unzip the file for the following step:
gunzip -k -q fastq_files/6185_1_pMT06_CCGCGGTT-AGCGCTAG_S1_R1_001.fastq.gz

## 3: Save only the read 1 sequences:
mkdir processed
paste - - - - < fastq_files/6185_1_pMT06_CCGCGGTT-AGCGCTAG_S1_R1_001.fastq | cut -f 1,2 | sed 's/^@/>/' | tr "\t" "\n" > processed/pDNA-seq.fasta

## 4: Keep sequences that match the 3' sequence of the insert, write matching sequences in a txt file; print percentage of reads kept
grep -oP ".*(?=CATCGTCGCATCCAAGAG)" processed/pDNA-seq.fasta > processed/pDNA-seq.txt
awk -v reads=$((`wc -l < processed/pDNA-seq.fasta` / 2)) -v filtered=$((`wc -l < processed/pDNA-seq.txt`)) 'BEGIN { print  "Reads passed = ", ( filtered / reads ), "%" }'

## 5: Add up identical sequences by running starcode (d=2 to account for sequencing and PCR errors)
starcode -d 2 -t 12 -i processed/pDNA-seq.txt -o processed/pDNA-seq-counts.txt
