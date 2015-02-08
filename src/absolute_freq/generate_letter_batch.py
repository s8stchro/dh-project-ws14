import file_io as io

authors = ['paul', 'peter']

def set_dir(author):
    if author == 'paul':
        infolder = "../../data/output/paul_freq_par"
        outfolder = "../../data/output/paul_R_par/"
        infiles = io.get_infiles(infolder)

    if author == 'peter':
        infolder = "../../data/output/peter_freq_par"
        outfolder = "../../data/output/peter_R_par/"
        infiles = io.get_infiles(infolder)
    return(infolder,outfolder,infiles)

# generate command line commands to run generate_R.py
with open('generate_letter.sh','w',encoding='utf8') as o:
    for author in authors:
        infolder,outfolder,infiles=set_dir(author)
        for infile in infiles:
            letter = io.letter_no_u(infile)
            if letter != 'all': # not generate for all_freq_author.csv
                outfile = outfolder+letter+'.R'
                o.write("python generate_R_par.py %s %s" % (infile, outfile)+'\n')
