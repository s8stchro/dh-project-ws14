import sys
import file_io as io
import os.path
import csv

authors = ['paul','peter']

# to obtain number of letters in each parN_frequency.csv file
def set_dir_par(author):
    if author == 'paul':
        infolder = "../../data/output/paul_freq_par"
        outfolder = "../../data/output/paul_tex"
        infiles = io.get_infiles(infolder)

    if author == 'peter':
        infolder = "../../data/output/peter_freq_par"
        outfolder = "../../data/output/peter_tex"
        infiles = io.get_infiles(infolder)
    return(infolder,outfolder,infiles)

def write_tex(parN,no_letters,letter_set,outfile,author):
    with open(outfile,'w',encoding='utf8') as o:
        o.write("\documentclass[a4paper]{article}"+'\n')
        o.write("\\usepackage{graphicx}"+'\n')
        o.write("\\usepackage{subcaption}"+'\n')
        o.write("\\usepackage[a4paper]{geometry}"+'\n')
        o.write("\\geometry{margin=1.5cm}"+'\n')

        o.write('\\begin{document}' +'\n')
        letter_counter = 0
        for letter in letter_set:
            if author == 'paul':
                plot_name = '../../data/output/paul_R_par/plots/'+parN+'_lt'+letter+'.png'
            if author == 'peter':
                plot_name = '../../data/output/peter_R_par/plots/'+parN+'_lt'+letter+'.png'
            if letter_counter % 6 == 0:
                o.write('\\begin{figure}' +'\n')
            o.write('\\begin{subfigure}{0.45\\textwidth}' +'\n')
            o.write('\centering' +'\n')
            o.write("\includegraphics[width=1\linewidth]{%s}" % (plot_name) +'\n')
            o.write('\end{subfigure}' +'\n')
            if letter_counter % 6 == 5 or (letter_counter+1) == no_letters:
                o.write('\end{figure}' +'\n')
            letter_counter+=1
        o.write('\end{document}\n')


#latex pdf on command line
def print_command(tex_command,no_par):
    for i in range(0,no_par):
        os.system(tex_command[i])
        i += 1

def move_output(infolder, outfolder):
    rest_folder = outfolder+'/rest'
    os.system('mv '+outfolder+'/*.log '+rest_folder)
    os.system('mv '+outfolder+'/*.aux '+rest_folder)
    pdf_folder = outfolder+'/pdf'
    os.system('mv '+outfolder+'/*.pdf '+pdf_folder)

for author in authors:
    infolder,outfolder,infiles = set_dir_par(author)
    no_par = len(infiles) -1 # w/o all_frequency
    tex_command = []
    move_tex = []
    for infile in infiles:
        letter_set = set()
        parN = io.letter_no_u(infile)
        if parN != 'all':
            text = io.open_infile_w1(infile)
            letter_set = set()
            for row in text:
                letter_set.add(row[0])
                particle = row[1]
            no_letters = len(letter_set)
            outfile_name = parN+'.tex'
            # outfile_name = parN+'_'+particle+'.tex'
            outfile = os.path.join(outfolder, outfile_name)
            try:
                os.remove(outfile)
            except OSError:
                pass
            write_tex(parN, no_letters, sorted(letter_set),outfile,author)
            texpdf = 'pdflatex '+outfile+'\n'
            tex_command.append(texpdf)
            texout = 'mv '+parN+'.* '+outfolder
            move_tex.append(texout)
    print_command(tex_command,no_par)
    print_command(move_tex,no_par)
    move_output(infolder, outfolder)






