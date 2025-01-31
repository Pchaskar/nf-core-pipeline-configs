#!/bin/bash

nextflow run nf-core/taxprofiler -r 1.1.0 -profile singularity \
--input samplesheet.csv --databases database.csv --outdir ./results \
--perform_shortread_qc \
--perform_shortread_hostremoval --hostremoval_reference /home/prasad/Documents/Work/Prasad_NFCORE_TEST_2025/PRJEB76668_MG/CONTAM/GCF_000819615.1_ViralProj14015_genomic.fna.gz \
--perform_runmerging --save_runmerged_reads \
--run_centrifuge --run_kaiju --run_kraken2 \
--run_profile_standardisation
