import json
import logging
log = logging.getLogger(__name__)

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

particles_dict = parse("../data/particles-python.txt")
# print(particles_dict)

def particle(dic):
    '''
    pull particles into one list from stylianos' list (particles-python.txt)
    OUTPUT: a list of particles in lemma form
    '''
    particles = []
    for sublist in dic.values():
        for word in sublist:
            particles.append(word)
    return particles

def particle_list():
    particles = particle(particles_dict)
    return particles

def particle_type(particle):
    '''
    return the classfication type of a particle (simple, composed, negation)
    OUTPUT: simple, composed, negation
    '''
    for key in particles_dict.keys():
        for sublist in particles_dict.values():
            if particle in sublist:
                particle_type = key
    print(particle_type)
    return key

    # for key in particles_dict.keys():
    #     for sublist in particles_dict.values():
    #         if particle in sublist:
    #             particle_type = key


    #     if particle in sublist:
    #         particle_type = key
    # return key


