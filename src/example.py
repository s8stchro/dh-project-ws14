#! /usr/bin/env python3

import sblgntparser

romans = '../data/sblgnt/66-Ro-morphgnt.txt'

text = sblgntparser.parser.parse(romans)
if text:
    particles = [ word for word in text.words() if 'conjunction' in word.part_of_speech ]
    for particle in particles:
        print(str(particle))