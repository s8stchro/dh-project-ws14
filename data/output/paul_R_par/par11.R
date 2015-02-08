library(ggplot2)
par11 <- read.csv("../../data/output/paul_freq_par/par11_frequency.csv", header=TRUE, sep="\t")
letters <- unique(par11$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par11_lt79.png")
png(filename)
lt79 <- par11[which(par11$letter==79),]
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

letters <- unique(par11$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par11_lt73.png")
png(filename)
lt73 <- par11[which(par11$letter==73),]
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

