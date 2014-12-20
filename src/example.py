#! /usr/bin/env python3

import sblgntparser
import file_io as io

romans = '../data/sblgnt/66-Ro-morphgnt.txt'
inPath = "../data/sblgnt/testFile"

infiles = io.get_infiles(inPath)
print (infiles)

for infile in infiles:
    text = sblgntparser.parser.parse(infile)
    if text:
        particles = [ word for word in text.words() if 'conjunction' in word.part_of_speech ]
        for particle in particles:
            print(particle, particle.position(), len(particle.sentence())-particle.position())
            n = particle.neighbors()
            if n['left']:
                print(n['left'])
            if n['right']:
                print(n['right'])
            print('\t{}'.format(particle.sentence()))
            # print(str(particle))

    for word in text.find('εὐαγγέλιον'):
        print(word, word.views['lemma'])

def parse(filepath):
    raw = ''
    try:
        with open(filepath) as f:
            raw = f.read()
    except IOError as e:
        log.exception(e)
        return 1
    else:
        return parse_lines(raw.splitlines())

def parse_lines(lines):
    '''
    parser for particle list of stylianos
    OUTPUT: a dictionary, key = type of particle, value = list of particles in lemma form
    '''
    data = {}
    category = ''
    particle = ''
    for line in lines:
        parts = line.split()
        if parts[0] == '*':
            category = ' '.join(parts[1:])
            if category not in data:
                data[category] = []
            else:
                log.warn('Category "{}" already defined!'.format(category))
        elif parts[0] == '**':
            if category:
                if parts[1] not in data[category]:
                    particle = parts[1]
                    data[category].append(particle)
                else:
                    log.warn('Particle "{}" already contained in category: "{}"'.format(parts[1], category))
            else:
                log.warn('particle without previous category specification: "{}"'.format(parts[1]))
    return data


def particle(dic):
    '''
    pull particles into one list from stylianos' list
    OUTPUT: a list of particles in lemma form
    '''
    particles = []
    for sublist in dic.values():
        for word in sublist:
            particles.append(word)
    return particles

particles_dic = parse("../data/particles-python.txt")
particles = particle(particles_dic)
print (particles)





