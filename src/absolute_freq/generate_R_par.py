import sys
import file_io as io
import os.path
import csv

f = sys.stdin
if len(sys.argv) > 1:
    infile = sys.argv[1]
    with open(infile,'r',encoding='utf8') as f:
        text_csv = csv.reader(f, delimiter='\t')
        next(text_csv, None) #skip header
        text = list(text_csv)
        letter_set = set()
        for row in text:
            letter_set.add(row[0])
            particle = str(row[1])
        no_letters = len(letter_set)

    fileName = os.path.basename(infile)
    data = io.letter_no_u(fileName)

    # o: outfile
    outfile = sys.argv[2]
    wd = os.path.dirname(outfile)


with open(outfile,'w',encoding='utf8') as o:
    o.write('library(ggplot2)\n')
    # o.write("WD <- setwd(\"%s/\")" % (working_dir)+'\n')
    o.write("%s <- read.csv(\"%s\", header=TRUE, sep=\"\\t\")" % (data,infile)+ '\n')
    for p in letter_set:
        par = 'lt'+str(p)
        o.write("letters <- unique(%s$letter)" % (data)+'\n')
        o.write("filename <- paste0(\"%s/plots/%s_%s.png\")" % (wd,data,par)+'\n')
        o.write("png(filename)" +'\n')
        o.write("%s <- %s[which(%s$letter==%s),]" % (par,data,data,p)+'\n')
        o.write("%s$perc_label[%s$perc_label == 0] <- NA" % (par, par)+'\n')
        o.write("%s_count = sum(%s$freq_t)" % (par,par) +'\n')
        o.write("ymax <- max(%s$freq_t)" % (par)+'\n')
        o.write("ymax_s = ymax*1.1-ymax"+'\n')
        o.write("title <- paste(%s$particle[1], \" (total_count = \", %s_count,\", letter =\", %s,\")\" )" % (par,par,p)+'\n')
        o.write("p_freq_t <- barplot(%s$freq_t, main=title, xlab=\"Position\", ylab= \"Frequency\" ,col=c(\"cyan4\"), names.arg=%s$position,ylim=c(0,ymax*1.2))" % (par,par)+'\n')
        o.write("p_freq_s<- barplot(%s$freq_s, col=c(\"darkgoldenrod1\"),add=T)" % (par)+'\n')
        o.write("legend(\"topright\", inset=.05, c(\"position_from_pip\",\"position_from_start\"), fill=c(\"cyan4\",\"darkgoldenrod1\"))"+'\n')
        o.write("text(p_freq_t, %s$freq_t-(ymax_s/2), labels= %s$freq_is, col=\"white\")" % (par,par)+'\n')
        o.write("text(p_freq_s, %s$freq_s-(ymax_s/2), labels=%s$freq_s, col=\"black\")" % (par,par)+'\n')
        o.write("text(p_freq_t, %s$freq_t+ymax_s, labels=%s$perc_label, col=\"blue\",srt=90)" % (par,par)+'\n')
        # o.write("dev.off()"+'\n')
        o.write('\n')

