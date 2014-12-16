import os

infiles = []
def get_infiles(inPath):
    for root, dirs, files in os.walk(inPath):
        for filename in files:
            infile = os.path.join(root, filename)
            infiles.append(infile)
    return infiles

def write_outfile(outfile,line):
    with open(outfile,'w') as f:
        f.write(line)

