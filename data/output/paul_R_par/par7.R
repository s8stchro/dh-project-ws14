library(ggplot2)
par7 <- read.csv("../../data/output/paul_freq_par/par7_frequency.csv", header=TRUE, sep="\t")
letters <- unique(par7$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par7_lt79.png")
png(filename)
lt79 <- par7[which(par7$letter==79),]
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

letters <- unique(par7$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par7_lt68.png")
png(filename)
lt68 <- par7[which(par7$letter==68),]
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

letters <- unique(par7$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par7_lt69.png")
png(filename)
lt69 <- par7[which(par7$letter==69),]
lt69$perc_label[lt69$perc_label == 0] <- NA
lt69_count = sum(lt69$freq_t)
ymax <- max(lt69$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt69$particle[1], " (total_count = ", lt69_count,", letter =", 69,")" )
p_freq_t <- barplot(lt69$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt69$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt69$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt69$freq_t-(ymax_s/2), labels= lt69$freq_is, col="white")
text(p_freq_s, lt69$freq_s-(ymax_s/2), labels=lt69$freq_s, col="black")
text(p_freq_t, lt69$freq_t+ymax_s, labels=lt69$perc_label, col="blue",srt=90)

letters <- unique(par7$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par7_lt73.png")
png(filename)
lt73 <- par7[which(par7$letter==73),]
lt73$perc_label[lt73$perc_label == 0] <- NA
lt73_count = sum(lt73$freq_t)
ymax <- max(lt73$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt73$particle[1], " (total_count = ", lt73_count,", letter =", 73,")" )
p_freq_t <- barplot(lt73$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt73$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt73$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt73$freq_t-(ymax_s/2), labels= lt73$freq_is, col="white")
text(p_freq_s, lt73$freq_s-(ymax_s/2), labels=lt73$freq_s, col="black")
text(p_freq_t, lt73$freq_t+ymax_s, labels=lt73$perc_label, col="blue",srt=90)

letters <- unique(par7$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par7_lt72.png")
png(filename)
lt72 <- par7[which(par7$letter==72),]
lt72$perc_label[lt72$perc_label == 0] <- NA
lt72_count = sum(lt72$freq_t)
ymax <- max(lt72$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt72$particle[1], " (total_count = ", lt72_count,", letter =", 72,")" )
p_freq_t <- barplot(lt72$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt72$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt72$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt72$freq_t-(ymax_s/2), labels= lt72$freq_is, col="white")
text(p_freq_s, lt72$freq_s-(ymax_s/2), labels=lt72$freq_s, col="black")
text(p_freq_t, lt72$freq_t+ymax_s, labels=lt72$perc_label, col="blue",srt=90)

letters <- unique(par7$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par7_lt67.png")
png(filename)
lt67 <- par7[which(par7$letter==67),]
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

