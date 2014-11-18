import os.path
import logging
log = logging.getLogger(__name__)

'''
    A python module that parses texts in the format the SBLGNT uses
'''

def parse(filepath):
    '''
    '''
    if os.path.exists(filepath):
        raw_text = ''
        try:
            with open(filepath) as f:
                raw_text = f.read()
        except IOError as e:
            log.exception(e)
        else:
            if raw_text:
                # to be done
                return raw_text
    else:
        log.warn('Could not find file "{}"!'.format(filepath))

