import file_io as io
import csv
import os.path
import pprint
pp = pprint.PrettyPrinter(indent=4)

# to extract positoin freqeuncy data
# max_position defined by max_position of the SAME particle in ALL letter
# INPUT: letter_particle.csv
# OUTPUT: all_frequency.csv and "/author_freq_par/particle_frequency.csv"

authors = ['paul', 'peter']

# authors = ['peter']

def set_dir(author):
    if author == 'paul':
        infolder = "../../data/output/paul_freq"
        outfolder = "../../data/output/paul_freq_par"
        outfile_all = "../../data/output/paul_freq_par/all_freq_paul.csv"
        outfolder_tex =  "../../data/output/paul_tex/pdf" # for output particle list
        infiles = io.get_infiles(infolder)

    if author == 'peter':
        infolder = "../../data/output/peter_freq"
        outfolder = "../../data/output/peter_freq_par"
        outfile_all = "../../data/output/peter_freq_par/all_freq_peter.csv"
        outfolder_tex =  "../../data/output/peter_tex/pdf"
        infiles = io.get_infiles(infolder)
    return(infolder,outfolder,outfile_all,infiles,outfolder_tex)

def set_dir_par(author):
    if author == 'paul':
        infolder = "../../data/output/paul_freq_par"
        outfolder = "../../data/output/paul_R_par"
        infiles = io.get_infiles(infolder)

    if author == 'peter':
        infolder = "../../data/output/peter_freq_par"
        outfolder = "../../data/output/peter_R_par"
        infiles = io.get_infiles(infolder)
    return(infolder,outfolder,infiles)

labels = ('letter', 'particle','position','freq_s','freq_is','freq_t','perc_s','perc_is','perc_t','perc_label')


def get_max_position(parFreqData,particle):
    row_with_freq = {}
    position_t = []
    for row in parFreqData:
        if int(row[5]) != 0 and particle == row[1]:
            row_with_freq['fre'+row[5]] = int(row[2])
    max_position = max(row_with_freq.values())
    return (int(max_position))

def get_particle_set(freqData):
    particle_set = set()
    for row in freqData:
        particle_set.add(row[1])
    return (sorted(particle_set))

# pull all frequency data of Paul into one file
def pull_all_freq():
    for author in authors:
        infolder,outfolder,outfile_all,infiles,outfolder_tex=set_dir(author)
        try:
            os.remove(outfile_all)
        except OSError:
            pass
        io.write_outfile(outfile_all,labels)
        # parse all conjunctions in the text
        for infile in infiles:
            # info for each letter
            letter = io.letter_no(infile)
            text = io.open_infile_w1(infile)
            for row in text:
                io.write_outfile(outfile_all,row)
pull_all_freq()



# data of a specific particle into one file
# INPUT: outfile_all
# OUTPUT: one file for each particle
def par_max():
    for author in authors:
        infolder,outfolder,outfile_all,infiles,outfolder_tex=set_dir(author)
        text = io.open_infile_w1(outfile_all)

        particle_set = set()
        par_data = []
        particle_set = get_particle_set(text)
        particle_list_file = 'particle_list.txt'
        particle_list_outfile = os.path.join(outfolder_tex, particle_list_file)

# since in R there is problem to read files with greek letters
# particles are replaced using index in output file names
        par_line = []
        index = 0
        for particle in particle_set:
            index += 1
            data = []
            row_with_freq = {}
            position_t = []
            max_position = get_max_position(text,particle)
            outfile_name = 'par'+str(index)+'_frequency.csv'
            outfile = os.path.join(outfolder, outfile_name)
            try:
                os.remove(outfile)
                os.remove(particle_list_outfile)
            except OSError:
                pass
            io.write_outfile(outfile,labels)
            for row in text:
                if int(row[2]) <= max_position and particle == row[1]:
                    data.append(row)
            io.write_outfile_list(outfile,data)
            parN_par = 'par'+str(index)+': '+particle
            par_line.append(parN_par)
        io.write_text(particle_list_outfile,par_line)

par_max()






