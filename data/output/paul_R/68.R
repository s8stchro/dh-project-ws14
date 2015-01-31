library(ggplot2)
f68 <- read.csv("../data/output/paul_freq/68_frequency.csv", header=TRUE, sep="\t")
particles <- unique(f68$particle)
filename <- paste0("../data/output/paul_R/plots/f68_par1_",particles[1],".png")
png(filename)
par1 <- f68[which(f68$particle==particles[1]),]
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

particles <- unique(f68$particle)
filename <- paste0("../data/output/paul_R/plots/f68_par2_",particles[2],".png")
png(filename)
par2 <- f68[which(f68$particle==particles[2]),]
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

particles <- unique(f68$particle)
filename <- paste0("../data/output/paul_R/plots/f68_par3_",particles[3],".png")
png(filename)
par3 <- f68[which(f68$particle==particles[3]),]
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

particles <- unique(f68$particle)
filename <- paste0("../data/output/paul_R/plots/f68_par4_",particles[4],".png")
png(filename)
par4 <- f68[which(f68$particle==particles[4]),]
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

particles <- unique(f68$particle)
filename <- paste0("../data/output/paul_R/plots/f68_par5_",particles[5],".png")
png(filename)
par5 <- f68[which(f68$particle==particles[5]),]
par5$perc_label[par5$perc_label == 0] <- NA
par5_count = sum(par5$freq_t)
ymax <- max(par5$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(par5$particle[5], " (total_count = ", par5_count,", letter =", par5$letter[5],")" )
p_freq_t <- barplot(par5$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=par5$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(par5$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, par5$freq_t-0.5, labels= par5$freq_is, col="white")
text(p_freq_s, par5$freq_s-0.5, labels=par5$freq_s, col="black")
text(p_freq_t, par5$freq_t+ymax_s, labels=par5$perc_label, col="blue",srt=90)

particles <- unique(f68$particle)
filename <- paste0("../data/output/paul_R/plots/f68_par6_",particles[6],".png")
png(filename)
par6 <- f68[which(f68$particle==particles[6]),]
par6$perc_label[par6$perc_label == 0] <- NA
par6_count = sum(par6$freq_t)
ymax <- max(par6$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(par6$particle[6], " (total_count = ", par6_count,", letter =", par6$letter[6],")" )
p_freq_t <- barplot(par6$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=par6$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(par6$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, par6$freq_t-0.5, labels= par6$freq_is, col="white")
text(p_freq_s, par6$freq_s-0.5, labels=par6$freq_s, col="black")
text(p_freq_t, par6$freq_t+ymax_s, labels=par6$perc_label, col="blue",srt=90)

particles <- unique(f68$particle)
filename <- paste0("../data/output/paul_R/plots/f68_par7_",particles[7],".png")
png(filename)
par7 <- f68[which(f68$particle==particles[7]),]
par7$perc_label[par7$perc_label == 0] <- NA
par7_count = sum(par7$freq_t)
ymax <- max(par7$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(par7$particle[7], " (total_count = ", par7_count,", letter =", par7$letter[7],")" )
p_freq_t <- barplot(par7$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=par7$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(par7$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, par7$freq_t-0.5, labels= par7$freq_is, col="white")
text(p_freq_s, par7$freq_s-0.5, labels=par7$freq_s, col="black")
text(p_freq_t, par7$freq_t+ymax_s, labels=par7$perc_label, col="blue",srt=90)

particles <- unique(f68$particle)
filename <- paste0("../data/output/paul_R/plots/f68_par8_",particles[8],".png")
png(filename)
par8 <- f68[which(f68$particle==particles[8]),]
par8$perc_label[par8$perc_label == 0] <- NA
par8_count = sum(par8$freq_t)
ymax <- max(par8$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(par8$particle[8], " (total_count = ", par8_count,", letter =", par8$letter[8],")" )
p_freq_t <- barplot(par8$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=par8$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(par8$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, par8$freq_t-0.5, labels= par8$freq_is, col="white")
text(p_freq_s, par8$freq_s-0.5, labels=par8$freq_s, col="black")
text(p_freq_t, par8$freq_t+ymax_s, labels=par8$perc_label, col="blue",srt=90)

