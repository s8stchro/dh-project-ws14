#!/bin/bash

# delete all output files and make new folders
sh 1_delete.sh

##  extract particles and their parameters from sblgnt using sblgntparser
##  INPUT: sblgnt txt file, e.g. "66-Ro-morphgnt.tx"
##  OUTPUT: csv files with parameter information, e.g. "66_particles.csv"

python extract_particle.py

##  position freqeuncy analysis of particles, one file per letter
##  INPUT: csv files of particle parameters, e.g. "66_particles.csv"
##  OUTPUT: each letter, each particle, frequency at which position, e.g. "81_frequency.csv"

python freq_each_letter.py

##  pull frequency of the same particle into one file
##  INPUT: all frequency csv files of the same author, e.g. "no_frequency.csv"
##  OUTPUT: "all_frequency.csv" for each author and each particle each author a file  "/author_freq_par/particle_frequency.csv"
python freq_each_par.py

## generate batch commands to generate R for all letters "python generate_R.py infile, outfile"
## INPUT: 81_frequency.csv
## OUTPUT: "generate_letter.sh"
python generate_letter_batch.py

## run "python generate_R.py infile, outfile" 
## INPUT: command line input-e.g. "81_frequency.csv"
## OUTPUT: R files for plotting graphs, e.g. "81.R"
sh generate_letter.sh

## generate commands for batch run "R CMD BATCH infile"
## INPUT: list of R-files
## OUTPUT: "generate_R_letter.sh"
python generate_R_letter_batch.py

## run batch commands "R CMD BATCH ../data/output/peter_R/81.R " 
## INPUT: command line input-e.g. "81.R"
## OUTPUT: png plots of each particle in each letter, under author_R/plots/
sh generate_R_letter.sh

## output as latex-pdf
python generate_tex.py
