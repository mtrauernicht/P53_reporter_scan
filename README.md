# Systematic dissection of the regulatory logic of transcriptional activation by TP53 binding sites 

[![DOI](https://zenodo.org/badge/298230427.svg)](https://zenodo.org/badge/latestdoi/298230427)


**Introduction:**

It is unclear how TP53 binding site architecture relates to TF activity. To test this systematically, a library was designed in collaboration with the Bussemaker lab. Design features of TP53 reporters like binding site copy number, spacer length, or core promoter choice are reviewed.

**TF reporter library design:**

The designed first library contains:
- 6,000 TF reporters, each with up to 4 TF binding sites, followed by a minP or minCMV and a barcode in the transcription unit
- 5 different TP53 motifs with different predicted binding affinities
- Large range of combinatorial binding affinity
- Spacer length between binding sites varied from 4-14 bp in 1 bp steps
- two different core promoters
- three different synthetic inactive spacer sequences
- 5 barcodes per TF reporter

All TF reporters were designed using FIMO. This way, the spacings were designed to be inactive, while the TF binding sites were ensured to be intact.

**Experimental setup:**

- Nucleofection into TP53-proficient MCF7 cells and TP53-KO MCF7 cells
- TP53 Stimulation with Nutlin-3a or vehicle control (DMSO)
- RNA isolation after 24h, followed by barcode-specific reverse transcription and sequencing library prep
- experiments performed in independent triplicates

**Activity quantification:**

- reporter activity = cDNA counts / pDNA counts
- take average across the 5 barcodes
- then take average across the 3 biological replicates
- calculate enrichment per condition tested over background reporter activity (core promoter-only reporters)

___

**Repository guide:**

- analysis folder: pre-processing of the barcode counts (barcode-preprocessing.Rmd) + analysis of barcode counts, linear modeling, figure generation (cDNA-processing.Rmd)
- library_design folder: contains script that was used to generate the TP53 reporter sequences
- pDNA_insert_seq folder: contains scripts to analyze the full-length sequences of the plasmid pool that was used for transfections
- raw_data_analysis folder: contains the scripts that were used to extract and cluster the raw barcode counts
