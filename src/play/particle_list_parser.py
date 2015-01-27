import pprint
pp = pprint.PrettyPrinter(indent=4)

def parse1(filepath):
    raw = ''
    try:
        with open(filepath) as f:
            raw = f.read()
    except IOError as e:
        log.exception(e)
        return 1
    else:
        return parse_list(raw.splitlines())

def parse_list(lines):
    '''
    parser for particle list of stylianos
    OUTPUT: a dictionary, key = particles, value = type of particles
    '''
    data = {}
    category = ''
    particle = ''
    for line in lines:
        parts = line.split()
        if parts[0] == '*':
            category = parts[1]
        elif parts[0] == '**':
            if category:
                particle = parts[1]
                data[particle]=category
            else:
                log.warn('particle without previous category specification: "{}"'.format(parts[1]))
    return data

particles_dic = parse1("../data/particles.txt")
# pp.pprint(particles_dic)
# print(particles_dic['καί'])

authenticity_dic = parse1("../data/paul_letters.txt")
# pp.pprint(authenticity_dic)

particles = particles_dic.keys()
# τέ has two forms!! added in the particles.txt
print(particles)

authenticity_groups = authenticity_dic.keys()

# in-sentence punctuation = comma: , and semicolon: ·
subsentence = [ ',', '·' ] # comma, semicolon

# previous in-sentence punctuation (PIP)

def parse_pip(position_from_start, sentence):
    words = sentence.split()
    particle = words[position_from_start-1]
    index = position_from_start-1
    # all words before the particle (not include particle)
    words_to_search = words[0:index]
    word_index = 0
    pip_position1 = 0
    pip_position2 = 0
    pip1 = ''
    pip2 = ''
    for word in words_to_search:
        word_index += 1
        # the last ',' is saved within words_to_search
        if ',' in word:
            pip1 = word
            pip_position1 = word_index
        if '·' in word:
            pip2 = word
            pip_position2 = word_index
    # no pip at all
    pip = ''
    pip_position = 0
    if pip_position1 == pip_position2:
        pip = 'null'
        pip_position = 0
    elif pip_position1 > pip_position2:
        pip_position = pip_position1
        pip = pip1
    elif pip_position1 < pip_position2:
        pip_position = pip_position2
        pip = pip2
    return (words_to_search, pip, pip_position)

# follwing in-sentence punctuation (FIP)
def parse_fip(position_from_start, sentence):
    words = sentence.split()
    particle = words[position_from_start-1]
    index = position_from_start-1
    # all words after the particle, including the particle self
    words_to_search = words[index:]
    word_index = index
    fip_position1 = []
    fip_position2 = []
    fip1 = []
    fip2 = []
    for word in words_to_search:
        word_index += 1
        # the first ',' is saved within words_to_search
        if ',' in word:
            fip1.append(word)
            fip_position1.append(word_index)
            # print('fip1:',fip1,fip_position1)
        if '·' in word:
            fip2.append(word)
            fip_position2.append(word_index)
            # print('fip2:',fip2,fip_position2)
    fip = ''
    fip_position = 0
    if not (fip_position1 or fip_position2):
        fip_position = 0
        fip = 'null'
    elif fip_position1 and not fip_position2:
        fip_position = fip_position1[0]
        fip = fip1[0]
    elif not fip_position1 and fip_position2:
          fip_position = fip_position2[0]
          fip = fip2[0]
    elif fip_position1 and fip_position2:
        if fip_position1[0] < fip_position2[0]:
            fip_position = fip_position1[0]
            fip = fip1[0]
        else:
            fip_position = fip_position2[0]
            fip = fip2[0]
    return (words_to_search,fip, fip_position)



