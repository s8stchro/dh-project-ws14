import file_io as io

infolder = "../../data/output/peter_freq/peter_R"

# infile = inFolder path + filename
infiles = io.get_infiles(infolder)

# generate command line commands to run letter_R.py
with open('run_letter_R.sh','w',encoding='utf8') as o:
    for infile in infiles:
        o.write("R CMD BATCH %s " % (infile) + '\n')
