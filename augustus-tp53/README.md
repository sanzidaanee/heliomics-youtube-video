# TP53 Gene Prediction Using AUGUSTUS

## Objective

Predict the TP53 gene from the human genomic sequence using AUGUSTUS and validate the predicted protein using BLASTP.

## Data

- TP53 genomic sequence: NG_017013.2
- TP53 reference protein: NP_000537.3

## Software

- AUGUSTUS
- BLAST+
- curl

## Workflow

1. Download TP53 genomic sequence.
2. Predict genes using AUGUSTUS.
3. Extract predicted protein sequence.
4. Compare predicted protein with reference TP53 using BLASTP.

## Results

BLASTP comparison showed:

- 100% amino acid identity
- Alignment length: 393 aa
- E-value: 0.0

The AUGUSTUS prediction recovered the canonical TP53 protein sequence.
