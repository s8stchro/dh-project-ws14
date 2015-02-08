# to extract positoin freqeuncy data
# max_position defined by max_position of the particle in each letter
# INPUT: letter_particle.csv
# OUTPUT: letter_frequency.csv

import file_io as io
import csv
import os.path

authors = ['paul', 'peter']

def set_dir(author):
    if author == 'paul':
        infolder = "../../data/output/paul_par"
        outfolder = "../../data/output/paul_freq"
        infiles = io.get_infiles(infolder)

    if author == 'peter':
        infolder = "../../data/output/peter_par"
        outfolder = "../../data/output/peter_freq"
        infiles = io.get_infiles(infolder)
    return(infolder,outfolder,infiles)

labels = ('letter', 'particle','position','freq_s','freq_is','freq_t','perc_s','perc_is','perc_t','perc_label')

def position_freqeuncy(particle,max_position,particle_list,position_s,position_is):
    freq_s = {}
    freq_is = {}
    sum_s = 0
    sum_is = 0
    no_samples=len(position_s)
    for position in range(1,max_position+1):
        freq_s[position]=0
        freq_is[position]=0
    for num in range(0,no_samples):
        if particle == particle_list[num]:
            position_sp=position_s[num]
            position_isp=position_is[num]
            if position_sp != 0:
                freq_s[position_sp] = freq_s[position_sp]+1
                sum_s = sum_s +1
            if position_isp != 0:
                freq_is[position_isp] = freq_is[position_isp]+1
                sum_is = sum_is +1
    return(freq_s,sum_s,freq_is,sum_is)

def add_frequency(max_position,freq_s,freq_is):
    freq_t = {}
    sum_t =0
    for position in range(1,max_position+1):
        freq_t[position]=freq_s[position]+freq_is[position]
        sum_t = sum_t+freq_t[position]
    return (freq_t,sum_t)

def percent(freq_s,sum_s,freq_is,sum_is,freq_t,sum_t):
    perc_s = {}
    perc_is = {}
    perc_t = {}
    perc_label = {}
    for position in range(1,max_position+1):
        if sum_s >0:
            perc_s[position] = "%.1f" % ((freq_s[position]/sum_s)*100)
        else:
            perc_s[position] = "%d" % 0
        if sum_is > 0:
            perc_is[position] = "%.1f" % ((freq_is[position]/sum_is)*100)
        else:
            perc_is[position] = "%d" % 0
        if sum_t > 0:
            perc_t[position] = "%.1f" % ((freq_t[position]/sum_t)*100)
            if float(perc_t[position])>0:
                perc_label[position] = str(perc_t[position])+'%'
            else:
                perc_label[position] = 0
    return(perc_s,perc_is,perc_t,perc_label)


def get_columns(csvData):
    for row in csvData:
        particle_set.add(row[4])
        # particle list in row 'particle'
        particle_list.append(row[4])
        position_s.append(int(row[16]))
        position_is.append(int(row[17]))
    if max(position_s) >= max(position_is):
        max_position = max(position_s)
    else:
        max_position = max(position_is)
    return (particle_set,particle_list,position_s, position_is,max_position)

# compile particle frequency info
def particle_info(particle,max_position,particle_list,position_s,position_is):
    freq_s,sum_s,freq_is,sum_is = position_freqeuncy(particle,max_position,particle_list,position_s,position_is)
    freq_t, sum_t=add_frequency(max_position,freq_s,freq_is)
    perc_s,perc_is,perc_t,perc_label= percent(freq_s,sum_s,freq_is,sum_is,freq_t,sum_t)
    return(freq_s,freq_is,freq_t,perc_s,perc_is,perc_t,perc_label)

for author in authors:
    infolder,outfolder,infiles=set_dir(author)
    # parse all conjunctions in the text
    for infile in infiles:
        # info for each letter
        letter = io.letter_no_u(infile)
        outfile_name = letter+'_frequency.csv'
        outfile = os.path.join(outfolder, outfile_name)
    # if output file already exists, delete
        try:
            os.remove(outfile)
        except OSError:
            pass
        io.write_outfile(outfile,labels)

        with open(infile,'r',encoding='utf8') as f:
            text_csv = csv.reader(f, delimiter='\t')
            next(text_csv, None) #skip header
            text = list(text_csv)

        particle_set = set()
        particle_list = []
        position_s = []
        position_is = []

        # get column data from csv infile
        particle_set,particle_list, position_s, position_is,max_position= get_columns(text)

        # get frequency and percentage info of each particle
        for particle in sorted(particle_set):
            freq_s,freq_is,freq_t, perc_s,perc_is,perc_t,perc_label = particle_info(particle,max_position,particle_list,position_s,position_is)

            # for output_format, each position
            for p in range(1,max_position+1):
                data = (letter, particle,p,freq_s[p], freq_is[p],freq_t[p],perc_s[p],perc_is[p],perc_t[p],perc_label[p])
                io.write_outfile(outfile,data)


