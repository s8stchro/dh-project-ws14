import os
import csv
# from os import listdir
# from os.path import isfile, join

def get_infiles(inPath):
    infiles = []
    for root, dirs, files in os.walk(inPath):
        files = [f for f in files if not f[0] == '.']
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

def letter_no_u(infile):
    '''
    parse first two digits in the filename as sample number
    OUTPUT: two digits of number
    '''
    filename = os.path.basename(infile)
    sample = filename.split('_')[0]
    return sample

def write_outfile(outfile,row):
    with open(outfile,'a',encoding='utf8') as f: # a for append
        writer = csv.writer(f, delimiter='\t')
        writer.writerow(row)

def write_outfile_list(outfile,data):
    with open(outfile,'a',encoding='utf8') as f: # a for append
        writer = csv.writer(f, delimiter='\t')
        for row in data:
            writer.writerows([row])

def write_text(outfile,data):
    with open(outfile,'a',encoding='utf8') as f: # a for append
        for row in data:
            f.write(row+'\n')

def open_infile(infile):
    with open(infile,'r') as csvfile:
        text = csv.reader(csvfile, delimiter='\t')
        return text

# opein infile and read without the labels
def open_infile_w1(infile):
    with open(infile,'r',encoding='utf8') as f:
        text_csv = csv.reader(f, delimiter='\t')
        next(text_csv, None) #skip header
        text = list(text_csv)
        return text


def wl(line):
    write(line+'\n')
