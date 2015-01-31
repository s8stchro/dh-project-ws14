library(ggplot2)
f78 <- read.csv("../data/output/paul_freq/78_frequency.csv", header=TRUE, sep="\t")
particles <- unique(f78$particle)
filename <- paste0("../data/output/paul_R/plots/f78_par1_",particles[1],".png")
png(filename)
par1 <- f78[which(f78$particle==particles[1]),]
par1$perc_label[par1$perc_label == 0] <- NA
par1_count = sum(par1$freq_t)
ymax <- max(par1$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(par1$particle[1], " (total_count = ", par1_count,", letter =", par1$letter[1],")" )
p_freq_t <- barplot(par1$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=par1$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(par1$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, par1$freq_t-0.5, labels= par1$freq_is, col="white")
text(p_freq_s, par1$freq_s-0.5, labels=par1$freq_s, col="black")
text(p_freq_t, par1$freq_t+ymax_s, labels=par1$perc_label, col="blue",srt=90)

particles <- unique(f78$particle)
filename <- paste0("../data/output/paul_R/plots/f78_par2_",particles[2],".png")
png(filename)
par2 <- f78[which(f78$particle==particles[2]),]
par2$perc_label[par2$perc_label == 0] <- NA
par2_count = sum(par2$freq_t)
ymax <- max(par2$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(par2$particle[2], " (total_count = ", par2_count,", letter =", par2$letter[2],")" )
p_freq_t <- barplot(par2$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=par2$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(par2$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, par2$freq_t-0.5, labels= par2$freq_is, col="white")
text(p_freq_s, par2$freq_s-0.5, labels=par2$freq_s, col="black")
text(p_freq_t, par2$freq_t+ymax_s, labels=par2$perc_label, col="blue",srt=90)

particles <- unique(f78$particle)
filename <- paste0("../data/output/paul_R/plots/f78_par3_",particles[3],".png")
png(filename)
par3 <- f78[which(f78$particle==particles[3]),]
par3$perc_label[par3$perc_label == 0] <- NA
par3_count = sum(par3$freq_t)
ymax <- max(par3$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(par3$particle[3], " (total_count = ", par3_count,", letter =", par3$letter[3],")" )
p_freq_t <- barplot(par3$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=par3$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(par3$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, par3$freq_t-0.5, labels= par3$freq_is, col="white")
text(p_freq_s, par3$freq_s-0.5, labels=par3$freq_s, col="black")
text(p_freq_t, par3$freq_t+ymax_s, labels=par3$perc_label, col="blue",srt=90)

particles <- unique(f78$particle)
filename <- paste0("../data/output/paul_R/plots/f78_par4_",particles[4],".png")
png(filename)
par4 <- f78[which(f78$particle==particles[4]),]
par4$perc_label[par4$perc_label == 0] <- NA
par4_count = sum(par4$freq_t)
ymax <- max(par4$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(par4$particle[4], " (total_count = ", par4_count,", letter =", par4$letter[4],")" )
p_freq_t <- barplot(par4$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=par4$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(par4$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, par4$freq_t-0.5, labels= par4$freq_is, col="white")
text(p_freq_s, par4$freq_s-0.5, labels=par4$freq_s, col="black")
text(p_freq_t, par4$freq_t+ymax_s, labels=par4$perc_label, col="blue",srt=90)

