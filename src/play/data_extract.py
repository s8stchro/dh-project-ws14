#! /usr/bin/env python3

import sblgntparser
import file_io as io
import particle_list_parser as pparser
from os.path import basename

romans = '../data/sblgnt/66-Ro-morphgnt.txt'
infolder = "../data/sblgnt/testFile"

# infile = inFolder path + filename
infiles = io.get_infiles(infolder)
# list of particles from particles-python.txt
particles = pparser.particle_list()
print(len(particles))

#for infile in infiles:
    # sample number is the first two digits of a file name
infile = romans
text = sblgntparser.parser.parse(infile)
conjunctions = [ word for word in text.words() if 'conjunction' in word.part_of_speech ]

def parse_data(text,infile, plist):
    '''
    parse parameters from infile
    OUTPUT: all data entries for csv output file
    '''
    if text:
        sample = io.sample_no(infile)
        author = io.authenticity(int(sample))
        data = []
        for particle in plist:
            #TODO particle_type
            # particle_type = pparser.particle_type(particle)
            # print(particle_type)
            part_of_speech = particle.part_of_speech
            position_from_start = particle.position()
            position_from_end = len(particle.sentence())-particle.position()
            n = particle.neighbors()
            if n['left']:
                left_neighbor = (n['left'])
                left_neighbor_pos = left_neighbor.part_of_speech
            if n['right']:
                right_neighbor = (n['right'])
                right_neighbor_pos = right_neighbor.part_of_speech
            sentence ='\t{}'.format(particle.sentence())
            data.append([sample, author, str(particle), part_of_speech, position_from_start, position_from_end,str(left_neighbor), left_neighbor_pos, str(right_neighbor), right_neighbor_pos, sentence])
        return data

# parse all conjunctions in the text
print(parse_data(text,romans,conjunctions))  # how to print all output? TODO left_neighbor_pos


# parse all particles in the particle lists from particles-python.txt
# parse_data(text,romans,particles)

#TODO output as csv file



