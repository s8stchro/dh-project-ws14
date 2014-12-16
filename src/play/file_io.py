import os
import csv

infiles = []
def get_infiles(inPath):
    for root, dirs, files in os.walk(inPath):
        for filename in files:
            infile = os.path.join(root, filename)
            infiles.append(infile)
    return infiles

def sample_no(infile):
    '''
    parse first two digits in the filename as sample number
    OUTPUT: two digits of number
    '''
    filename = os.path.basename(infile)
    sample = filename.split('-')[0]
    return sample

def authenticity(sample):
    '''
    use sample number to identify authors
    OUTPUT: author group Paul, Peter, likely-Paul
    '''
    if  66 <= sample <= 77:
        author = 'Paul'
    elif 81 <= sample <= 82:
        author = 'Peter'
    elif sample >= 82: #TODO
        author = 'likely-Paul'
    return author


# with open(outfile, 'wb') as csvfile:
#     spamwriter = csv.writer(csvfile, delimiter=' ',
#                             quotechar='|', quoting=csv.QUOTE_MINIMAL)
#     spamwriter.writerow(['Spam'] * 5 + ['Baked Beans'])
#     spamwriter.writerow(['Spam', 'Lovely Spam', 'Wonderful Spam'])

# def write_outfile(outfile,line):
#     with open(outfile,'w') as f:
#         f.write(line)

