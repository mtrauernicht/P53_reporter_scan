# P53 reporter scan


**Introduction:**\
It is unclear how TF affinity relates to TF activity. To test this systematically for P53, a library was designed in collaboration with the Bussemaker lab. Also, other design features of P53 reporters like motif spacing, minimal promoter choice, background sequences, and motif copy number are reviewed.

**TF reporter library design:**\
The designed first library contains:
- ~6,000 TF reporters, each with 4 identical TF binding sites, followed by a minP or minCMV and a barcode in the transcription unit
- 5 different P53 motifs with different predicted (SELEX-seq) binding affinities
- Large range of combinatorial binding affinity
- Motif spacings of 1-10 bp
- 5 barcodes per TF reporter

All TF reporters were designed using FIMO. This way, the spacings were designed to be inactive, while the TF binding sites were ensured to be active.

**Experimental setup:**\
- Nucleofection into P53-proficient MCF7 cells and P53-KO MCF7 cells
- P53 Stimulation with Nutlin-3a or vehicle control
- RNA isolation after 24h, followed by barcode-specific reverse transcription and sequencing library prep
- barcode quantification and normalizations
