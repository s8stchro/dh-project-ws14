library(ggplot2)
par1 <- read.csv("../../data/output/peter_freq_par/par1_frequency.csv", header=TRUE, sep="\t")
letters <- unique(par1$letter)
filename <- paste0("../../data/output/peter_R_par/plots/par1_lt82.png")
png(filename)
lt82 <- par1[which(par1$letter==82),]
lt82$perc_label[lt82$perc_label == 0] <- NA
lt82_count = sum(lt82$freq_t)
ymax <- max(lt82$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt82$particle[1], " (total_count = ", lt82_count,", letter =", 82,")" )
p_freq_t <- barplot(lt82$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt82$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt82$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt82$freq_t-(ymax_s/2), labels= lt82$freq_is, col="white")
text(p_freq_s, lt82$freq_s-(ymax_s/2), labels=lt82$freq_s, col="black")
text(p_freq_t, lt82$freq_t+ymax_s, labels=lt82$perc_label, col="blue",srt=90)

letters <- unique(par1$letter)
filename <- paste0("../../data/output/peter_R_par/plots/par1_lt81.png")
png(filename)
lt81 <- par1[which(par1$letter==81),]
lt81$perc_label[lt81$perc_label == 0] <- NA
lt81_count = sum(lt81$freq_t)
ymax <- max(lt81$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt81$particle[1], " (total_count = ", lt81_count,", letter =", 81,")" )
p_freq_t <- barplot(lt81$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt81$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt81$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt81$freq_t-(ymax_s/2), labels= lt81$freq_is, col="white")
text(p_freq_s, lt81$freq_s-(ymax_s/2), labels=lt81$freq_s, col="black")
text(p_freq_t, lt81$freq_t+ymax_s, labels=lt81$perc_label, col="blue",srt=90)

