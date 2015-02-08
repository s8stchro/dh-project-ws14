library(ggplot2)
par6 <- read.csv("../../data/output/paul_freq_par/par6_frequency.csv", header=TRUE, sep="\t")
letters <- unique(par6$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par6_lt76.png")
png(filename)
lt76 <- par6[which(par6$letter==76),]
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

