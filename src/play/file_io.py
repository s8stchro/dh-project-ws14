import os
import csv

infiles = []
def get_infiles(inPath):
    for root, dirs, files in os.walk(inPath):
        for filename in files:
            infile = os.path.join(root, filename)
            infiles.append(infile)
    return infiles

def letter_no(infile):
    '''
    parse first two digits in the filename as sample number
    OUTPUT: two digits of number
    '''
    filename = os.path.basename(infile)
    sample = filename.split('-')[0]
    return sample

def write_outfile(outfile,row):
    with open(outfile,'a',encoding='utf8') as f: # a for append
        writer = csv.writer(f, delimiter='\t')
        writer.writerow(row)

