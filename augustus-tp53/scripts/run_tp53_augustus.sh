#!/bin/bash

# Download TP53 genomic sequence
curl "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&id=NG_017013.2&rettype=fasta&retmode=text" \
-o data/tp53.fa

# Run AUGUSTUS
augustus --species=human data/tp53.fa > results/tp53_prediction.gff

# Run AUGUSTUS with protein prediction
augustus --species=human --protein=on data/tp53.fa > results/tp53_protein.fa

# Download reference TP53 protein
curl "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=protein&id=NP_000537.3&rettype=fasta&retmode=text" \
-o data/tp53_ref.fa

