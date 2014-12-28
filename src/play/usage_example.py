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
simple_particles = tools.particles(category='simple')
book_particles = {}
for epistle in pauline_epistles:
    bookname = tools.bookname(epistle.bookindex())
    book_particles[bookname] = [ c.views['lemma'] for c in epistle.words() if 'conjunction' in c.part_of_speech and c.views['lemma'] in simple_particles ]

# count the particle occurences for each book indivually
book_count = {}
for name, particles in book_particles.items():
    book_count[name] = Counter(particles)
    print(name)
    for particle, count in book_count[name].most_common(10):
        print('\t"{}" occurs "{}" times.'.format(particle, count))

# count the 10 most common particles
common = None
for count in book_count.values():
    if not common:
        common = count
    else:
        # set intersection, works also on Counter objects
        # https://docs.python.org/3.4/library/collections.html#collections.Counter
        common &= count

# prints the most common word together with their min occurence
print(common.most_common(10))
