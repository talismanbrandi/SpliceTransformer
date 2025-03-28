#!/bin/bash

wget https://hgdownload.soe.ucsc.edu/goldenPath/hg38/bigZips/hg38.fa.gz
gunzip hg38.fa.gz
wget https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_44/gencode.v44.annotation.gtf.gz
mv gencode.v44.annotation.gtf.gz hg38.annotation.gtf.gz
pyensembl install --reference-name hg38 --annotation-name gencode.v38 --gtf "hg38.annotation.gtf.gz"
