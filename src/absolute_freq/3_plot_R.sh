#!/bin/bash

## generate batch commands to generate R for all particles of each letter and all authors "python generate_R.py infile, outfile"
## INPUT: NONE (in file: all files in "author/freq_par")
## OUTPUT: "generate_letter.sh"
python generate_letter_batch.py

## run "python generate_R.py infile, outfile" 
## INPUT: NONE (command line input: e.g. all files in "author_freq_par/parN_frequency")
## OUTPUT: R files for plotting graphs, e.g. "par1.R"
sh generate_letter.sh

## generate commands for batch run "R CMD BATCH infile"
## INPUT: list of R-files
## OUTPUT: "generate_R_letter.sh"
python generate_R_letter_batch.py

## run batch commands "R CMD BATCH ../data/output/peter_R/81.R " 
## INPUT: command line input-e.g. "81.R"
## OUTPUT: png plots of each particle in each letter, under author_R/plots/
sh generate_R_letter.sh
