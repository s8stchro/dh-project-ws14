#! /usr/bin/env python3

import sblgntparser
import file_io as io
import particle_list_parser as pparser
import os.path
from os import listdir
import sys
import pprint
pp = pprint.PrettyPrinter(indent=4)

authors = ['paul', 'peter']

def set_dir(author):
    if author == 'paul':
        infolder = "../../data/paul"
        outfolder = "../../data/output/paul_par"
        infiles = io.get_infiles(infolder)

    if author == 'peter':
        infolder = "../../data/peter"
        outfolder = "../../data/output/peter_par"
        infiles = io.get_infiles(infolder)
    return(infolder,outfolder,infiles)

# list of particles from particles.txt
particles = pparser.particles
# list of authenticity e.g. P1, P2 ...
authenticity_groups = pparser.authenticity_groups

# parameters to parse
labels = ('sample_no','letter', 'author', 'authenticity', 'particle', 'part_of_speech', 'position_from_start', 'position_from_end', 'left_neighbor', 'left_neighbor_pos', 'right_neighbor', 'right_neighbor_pos','pip','pip_position','fip','fip_position', 'position_s','position_is','sentence')

def parse_data(text,infile, conjunctions,particles):
    '''
    parse parameters from infile
    OUTPUT: all data entries for csv output file
    '''
    sample_no = 0
    if text:
        # letter number is the first two digits of a file name
        letter = io.letter_no(infile)
        if int(letter) < 80:
            author = 'Paul'
        else:
            author = 'Peter'
        data = []
        # for all words with pos as conjunction
        for conjunction in conjunctions:
            # if str(particle) == 'δὲ' and particle.neighbors()['left'].part_of_speech == 'noun':
            if conjunction.views['lemma'] in particles:
                particle = conjunction
                sample_no+=1
                # particle_type = pparser.particles_dic[str(particle)])
                authenticity = pparser.authenticity_dic[letter]
                part_of_speech = particle.part_of_speech
                position_from_start = particle.position()+1
                position_from_end = len(particle.sentence())-particle.position()+1
                n = particle.neighbors()
                if n['left']:
                    left_neighbor = (n['left'])
                    left_neighbor_pos = left_neighbor.part_of_speech
                if n['right']:
                    right_neighbor = (n['right'])
                    right_neighbor_pos = right_neighbor.part_of_speech
                sentence = format(particle.sentence())
                # previous in-sentence punctuation (PIP) and text
                pip = pparser.parse_pip(position_from_start, sentence)[1]
                pip_position = pparser.parse_pip(position_from_start, sentence)[2]
                words = pparser.parse_fip(position_from_start, sentence)[0]
                fip = pparser.parse_fip(position_from_start, sentence)[1]
                fip_position = pparser.parse_fip(position_from_start, sentence)[2]
                # position_s: from sentence start
                # position_is: from in_sentence_punctuation start

                if (pip_position==0):
                    position_s = position_from_start
                    position_is = 0
                else:
                    position_s = 0
                    position_is = position_from_start - pip_position
                data.append([sample_no,letter, author, authenticity, str(conjunction.views['lemma']), part_of_speech, position_from_start, position_from_end,str(left_neighbor), left_neighbor_pos, str(right_neighbor), right_neighbor_pos,pip,pip_position,fip,fip_position, position_s,position_is,sentence])
        return data

# parse all conjunctions in the text
for author in authors:
    infolder,outfolder,infiles = set_dir(author)
    for infile in infiles:
        text = sblgntparser.parser.parse(infile)
        conjunctions = [ word for word in text.words() if 'conjunction' in word.part_of_speech ]
        letter = io.letter_no(infile)
        outfile_name = letter+'_particles.csv'
        outfile = os.path.join(outfolder, outfile_name)
    # if output file already exists, delete
        try:
            os.remove(outfile)
        except OSError:
            pass
        data_list = parse_data(text,infile,conjunctions,particles)
        io.write_outfile(outfile,labels)
        for data in data_list:
            io.write_outfile(outfile,data)






