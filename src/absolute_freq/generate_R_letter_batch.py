import file_io as io

authors = ['paul', 'peter']

def set_dir(author):
    if author == 'paul':
        infolder = "../../data/output/paul_R_par"
        infiles = io.get_infiles(infolder)

    if author == 'peter':
        infolder = "../../data/output/peter_R_par"
        infiles = io.get_infiles(infolder)
    return(infolder,infiles)

# generate command line commands to run letter_R.py
with open('generate_R_letter.sh','w',encoding='utf8') as o:
    for author in authors:
        infolder,infiles=set_dir(author)
        for infile in infiles:
            o.write("R CMD BATCH %s " % (infile) + '\n')
        Rout_folder = infolder+'/Rout'
        o.write('mv *.Rout '+Rout_folder+ '\n')
