#!/bin/bash

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
##  OUTPUT: "parN_frequency.csv" for each author and each particle each author a file  "/author_freq_par/particle_frequency.csv"
python freq_each_par.py

