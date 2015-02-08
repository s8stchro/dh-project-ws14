library(ggplot2)
par9 <- read.csv("../../data/output/paul_freq_par/par9_frequency.csv", header=TRUE, sep="\t")
letters <- unique(par9$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par9_lt79.png")
png(filename)
lt79 <- par9[which(par9$letter==79),]
lt79$perc_label[lt79$perc_label == 0] <- NA
lt79_count = sum(lt79$freq_t)
ymax <- max(lt79$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt79$particle[1], " (total_count = ", lt79_count,", letter =", 79,")" )
p_freq_t <- barplot(lt79$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt79$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt79$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt79$freq_t-(ymax_s/2), labels= lt79$freq_is, col="white")
text(p_freq_s, lt79$freq_s-(ymax_s/2), labels=lt79$freq_s, col="black")
text(p_freq_t, lt79$freq_t+ymax_s, labels=lt79$perc_label, col="blue",srt=90)

letters <- unique(par9$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par9_lt67.png")
png(filename)
lt67 <- par9[which(par9$letter==67),]
lt67$perc_label[lt67$perc_label == 0] <- NA
lt67_count = sum(lt67$freq_t)
ymax <- max(lt67$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt67$particle[1], " (total_count = ", lt67_count,", letter =", 67,")" )
p_freq_t <- barplot(lt67$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt67$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt67$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt67$freq_t-(ymax_s/2), labels= lt67$freq_is, col="white")
text(p_freq_s, lt67$freq_s-(ymax_s/2), labels=lt67$freq_s, col="black")
text(p_freq_t, lt67$freq_t+ymax_s, labels=lt67$perc_label, col="blue",srt=90)

letters <- unique(par9$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par9_lt71.png")
png(filename)
lt71 <- par9[which(par9$letter==71),]
lt71$perc_label[lt71$perc_label == 0] <- NA
lt71_count = sum(lt71$freq_t)
ymax <- max(lt71$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt71$particle[1], " (total_count = ", lt71_count,", letter =", 71,")" )
p_freq_t <- barplot(lt71$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt71$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt71$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt71$freq_t-(ymax_s/2), labels= lt71$freq_is, col="white")
text(p_freq_s, lt71$freq_s-(ymax_s/2), labels=lt71$freq_s, col="black")
text(p_freq_t, lt71$freq_t+ymax_s, labels=lt71$perc_label, col="blue",srt=90)

letters <- unique(par9$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par9_lt68.png")
png(filename)
lt68 <- par9[which(par9$letter==68),]
lt68$perc_label[lt68$perc_label == 0] <- NA
lt68_count = sum(lt68$freq_t)
ymax <- max(lt68$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt68$particle[1], " (total_count = ", lt68_count,", letter =", 68,")" )
p_freq_t <- barplot(lt68$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt68$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt68$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt68$freq_t-(ymax_s/2), labels= lt68$freq_is, col="white")
text(p_freq_s, lt68$freq_s-(ymax_s/2), labels=lt68$freq_s, col="black")
text(p_freq_t, lt68$freq_t+ymax_s, labels=lt68$perc_label, col="blue",srt=90)

letters <- unique(par9$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par9_lt66.png")
png(filename)
lt66 <- par9[which(par9$letter==66),]
lt66$perc_label[lt66$perc_label == 0] <- NA
lt66_count = sum(lt66$freq_t)
ymax <- max(lt66$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt66$particle[1], " (total_count = ", lt66_count,", letter =", 66,")" )
p_freq_t <- barplot(lt66$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt66$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt66$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt66$freq_t-(ymax_s/2), labels= lt66$freq_is, col="white")
text(p_freq_s, lt66$freq_s-(ymax_s/2), labels=lt66$freq_s, col="black")
text(p_freq_t, lt66$freq_t+ymax_s, labels=lt66$perc_label, col="blue",srt=90)

letters <- unique(par9$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par9_lt70.png")
png(filename)
lt70 <- par9[which(par9$letter==70),]
lt70$perc_label[lt70$perc_label == 0] <- NA
lt70_count = sum(lt70$freq_t)
ymax <- max(lt70$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt70$particle[1], " (total_count = ", lt70_count,", letter =", 70,")" )
p_freq_t <- barplot(lt70$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt70$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt70$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt70$freq_t-(ymax_s/2), labels= lt70$freq_is, col="white")
text(p_freq_s, lt70$freq_s-(ymax_s/2), labels=lt70$freq_s, col="black")
text(p_freq_t, lt70$freq_t+ymax_s, labels=lt70$perc_label, col="blue",srt=90)

