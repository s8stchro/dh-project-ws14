library(ggplot2)
par3 <- read.csv("../../data/output/paul_freq_par/par3_frequency.csv", header=TRUE, sep="\t")
letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt70.png")
png(filename)
lt70 <- par3[which(par3$letter==70),]
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

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt66.png")
png(filename)
lt66 <- par3[which(par3$letter==66),]
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

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt71.png")
png(filename)
lt71 <- par3[which(par3$letter==71),]
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

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt78.png")
png(filename)
lt78 <- par3[which(par3$letter==78),]
lt78$perc_label[lt78$perc_label == 0] <- NA
lt78_count = sum(lt78$freq_t)
ymax <- max(lt78$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt78$particle[1], " (total_count = ", lt78_count,", letter =", 78,")" )
p_freq_t <- barplot(lt78$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt78$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt78$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt78$freq_t-(ymax_s/2), labels= lt78$freq_is, col="white")
text(p_freq_s, lt78$freq_s-(ymax_s/2), labels=lt78$freq_s, col="black")
text(p_freq_t, lt78$freq_t+ymax_s, labels=lt78$perc_label, col="blue",srt=90)

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt76.png")
png(filename)
lt76 <- par3[which(par3$letter==76),]
lt76$perc_label[lt76$perc_label == 0] <- NA
lt76_count = sum(lt76$freq_t)
ymax <- max(lt76$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt76$particle[1], " (total_count = ", lt76_count,", letter =", 76,")" )
p_freq_t <- barplot(lt76$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt76$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt76$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt76$freq_t-(ymax_s/2), labels= lt76$freq_is, col="white")
text(p_freq_s, lt76$freq_s-(ymax_s/2), labels=lt76$freq_s, col="black")
text(p_freq_t, lt76$freq_t+ymax_s, labels=lt76$perc_label, col="blue",srt=90)

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt79.png")
png(filename)
lt79 <- par3[which(par3$letter==79),]
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

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt67.png")
png(filename)
lt67 <- par3[which(par3$letter==67),]
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

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt73.png")
png(filename)
lt73 <- par3[which(par3$letter==73),]
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

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt68.png")
png(filename)
lt68 <- par3[which(par3$letter==68),]
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

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt75.png")
png(filename)
lt75 <- par3[which(par3$letter==75),]
lt75$perc_label[lt75$perc_label == 0] <- NA
lt75_count = sum(lt75$freq_t)
ymax <- max(lt75$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt75$particle[1], " (total_count = ", lt75_count,", letter =", 75,")" )
p_freq_t <- barplot(lt75$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt75$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt75$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt75$freq_t-(ymax_s/2), labels= lt75$freq_is, col="white")
text(p_freq_s, lt75$freq_s-(ymax_s/2), labels=lt75$freq_s, col="black")
text(p_freq_t, lt75$freq_t+ymax_s, labels=lt75$perc_label, col="blue",srt=90)

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt69.png")
png(filename)
lt69 <- par3[which(par3$letter==69),]
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

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt77.png")
png(filename)
lt77 <- par3[which(par3$letter==77),]
lt77$perc_label[lt77$perc_label == 0] <- NA
lt77_count = sum(lt77$freq_t)
ymax <- max(lt77$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt77$particle[1], " (total_count = ", lt77_count,", letter =", 77,")" )
p_freq_t <- barplot(lt77$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt77$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt77$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt77$freq_t-(ymax_s/2), labels= lt77$freq_is, col="white")
text(p_freq_s, lt77$freq_s-(ymax_s/2), labels=lt77$freq_s, col="black")
text(p_freq_t, lt77$freq_t+ymax_s, labels=lt77$perc_label, col="blue",srt=90)

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt72.png")
png(filename)
lt72 <- par3[which(par3$letter==72),]
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

letters <- unique(par3$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par3_lt74.png")
png(filename)
lt74 <- par3[which(par3$letter==74),]
lt74$perc_label[lt74$perc_label == 0] <- NA
lt74_count = sum(lt74$freq_t)
ymax <- max(lt74$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt74$particle[1], " (total_count = ", lt74_count,", letter =", 74,")" )
p_freq_t <- barplot(lt74$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt74$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt74$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt74$freq_t-(ymax_s/2), labels= lt74$freq_is, col="white")
text(p_freq_s, lt74$freq_s-(ymax_s/2), labels=lt74$freq_s, col="black")
text(p_freq_t, lt74$freq_t+ymax_s, labels=lt74$perc_label, col="blue",srt=90)

