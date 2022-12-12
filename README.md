# P53 reporter scan


**Introduction:**\
It is unclear how P53 binding site architecture relates to TF activity. To test this systematically, a library was designed in collaboration with the Bussemaker lab. Design features of P53 reporters like binding site copy number, spacer length, or core promoter choice are reviewed.

**TF reporter library design:**\
The designed first library contains:
- >6,000 TF reporters, each with up to 4 identical TF binding sites, followed by a minP or minCMV and a barcode in the transcription unit
- 5 different P53 motifs with different predicted (SELEX-seq) binding affinities
- Large range of combinatorial binding affinity
- Spacer length between binding sites varied from 4-14 bp in 1 bp steps
- two different core promoters
- three different synthetic inactive spacer sequences
- 5 barcodes per TF reporter

All TF reporters were designed using FIMO. This way, the spacings were designed to be inactive, while the TF binding sites were ensured to be active.

**Experimental setup:**\
- Nucleofection into P53-proficient MCF7 cells and P53-KO MCF7 cells
- P53 Stimulation with Nutlin-3a or vehicle control
- RNA isolation after 24h, followed by barcode-specific reverse transcription and sequencing library prep
- experiments performed in independent triplicates

**Activity quantification:**\
- reporter activity = cDNA counts / pDNA counts
-> take average across the 5 barcodes
-> take average across the 3 biological replicates
-> calculate enrichment per condition tested over background reporter activity (core promoter-only reporters)