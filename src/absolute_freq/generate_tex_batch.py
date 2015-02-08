import file_io as io

authors = ['paul', 'peter']

def set_dir(author):
    if author == 'paul':
        infolder = "../../data/output/paul_tex"
        infiles = io.get_infiles(infolder)

    if author == 'peter':
        infolder = "../../data/output/peter_tex"
        infiles = io.get_infiles(infolder)
    return(infolder,infiles)

# generate command line commands to run letter_R.py
with open('generate_R_tex.sh','w',encoding='utf8') as o:
    for author in authors:
        infolder,infiles=set_dir(author)
        for infile in infiles:
            if letter != 'all':
                o.write("R CMD BATCH %s " % (infile) + '\n')
