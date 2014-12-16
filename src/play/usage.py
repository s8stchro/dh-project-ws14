#! /usr/bin/env python3

from sblgntparser import tools, parser
from collections import Counter

paulus = [ f for f in tools.filelist('../data/sblgnt', ext=['.txt'], flat=False)  if 65 < int(f.name[0:2]) < 78 ]
common_conjunctions = []
for letter in paulus:
    text = parser.parse(str(letter))
    conjunctions = [ c for c in text.words() if 'conjunction'  in c.part_of_speech ]
    common_conjunctions += conjunctions

print('common conjunctions')
common_conjunctions = [ str(_) for _ in common_conjunctions ]
print([ str(w) for w in set(common_conjunctions)])
count = Counter(common_conjunctions)
for conj, number in count.most_common(10):
    print('"{}" occurs "{}" times.'.format(str(conj), number))
