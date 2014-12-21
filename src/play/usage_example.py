#! /usr/bin/env python3

from sblgntparser import tools, parser
from collections import Counter

# parse all books
filepaths = [ filepath for filepath in tools.filelist('../../data/sblgnt', ext=['.txt']) ]
texts = [ parser.parse(filepath) for filepath in filepaths ]
# get pauline epistles
pauline_indices = tools.parts()['Paul']
pauline_epistles = [ text for text in texts if text.bookindex() in pauline_indices ]

# find all simple particles
common_particles = []
simple_particles = tools.particles(category='simple')
for epistle in pauline_epistles:
    particles = [ str(c) for c in epistle.words() if 'conjunction'  in c.part_of_speech and c.views['lemma'] in simple_particles ]
    common_particles += particles

# count the occurences
count = Counter(common_particles)
for conj, number in count.most_common(10):
    print('"{}" occurs "{}" times.'.format(str(conj), number))
