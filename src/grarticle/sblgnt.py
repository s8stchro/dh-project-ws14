import os.path
import re
import logging
log = logging.getLogger(__name__)

import grarticle

'''
    A python module that parses texts in the format the SBLGNT uses

    http://morphgnt.org/sblgnt/
'''

def parse(filepath):
    '''
    '''
    if os.path.exists(filepath):
        raw_text = ''
        try:
            with open(filepath) as f:
                raw_text = f.readlines()
        except IOError as e:
            log.exception(e)
        else:
            if raw_text:
                parsed_words = [ parse_line(line) for line in raw_text ]
                return None
            else:
                log.error('"{}" is empty!'.format(filepath))
    else:
        log.warn('Could not find file "{}"!'.format(filepath))

def parse_line(line):
    parts = line.split()
    if len(parts) is not 7:
        log.warn('Malformed line: "{}"'.format(line))
    else:
        book, chapter, verse = parse_index(parts[0])
        parse_part_of_speech(parts[1])
        codes = parse_parsing_code(parts[2])
        text, word, normalised, lemma = tuple(parts[3:])

def parse_index(part):
    matcher = re.compile(r'(\d{2})(\d{2})(\d{2})')
    res = matcher.match(part)
    return res.groups()

def parse_part_of_speech(part):
    # todo, because the codes are currently unknown
    pass

def parse_parsing_code(part):
    if len(part) is not 8:
        log.warn('bad parsing code: "{}"!'.format(part))
    else:
        # see https://github.com/morphgnt/tischendorf/blob/master/code/rptag.py
        # person, tense, voice, mood, case, number, gender, degree
        codes = [ _ for _ in part ]
        person = grarticle.codes.person(codes[0])
        tense = grarticle.codes.tense(codes[1])
        voice = grarticle.codes.voice(codes[2])
        mood = grarticle.codes.mood(codes[3])
        case = grarticle.codes.case(codes[4])
        number = grarticle.codes.number(codes[5])
        gender = grarticle.codes.gender(codes[6])
        degree = grarticle.codes.degree(codes[7])
        return {
            'person': person,
            'tense': tense,
            'voice': voice,
            'mood': mood,
            'case': case,
            'number': number,
            'gender': gender,
            'degree': degree
        }

